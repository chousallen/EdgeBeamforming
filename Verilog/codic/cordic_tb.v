`timescale 1ns / 1ps

module cordic_tb;

localparam integer N_ITER = 10;
localparam real PI = 3.14159265358979323846;
localparam real HALF_PI = 1.57079632679489661923;
localparam real ROT_TOL = 0.02;
localparam real PHASE_TOL = 0.03;
localparam real RESIDUAL_TOL = 0.05;

reg clk;
reg rst;
reg start;
reg mode;
reg signed [15:0] angle;
reg signed [7:0] x_in;
reg signed [7:0] y_in;

wire finish;
wire signed [N_ITER+1:0] cos_out;
wire signed [N_ITER+1:0] sin_out;
wire signed [17:0] phase_out;

integer pass_count;
integer fail_count;
reg     quiet_mode;   // when 1, suppress PASS lines (bulk sweeps)
integer loop_i;
real    ang_sweep, x_sweep, y_sweep;

cordic #(
    .N_ITER(N_ITER)
) dut (
    .clk(clk),
    .rst(rst),
    .start(start),
    .mode(mode),
    .angle(angle),
    .x_in(x_in),
    .y_in(y_in),
    .finish(finish),
    .cos_out(cos_out),
    .sin_out(sin_out),
    .phase_out(phase_out)
);

function real abs_real;
    input real value;
    begin
        if (value < 0.0)
            abs_real = -value;
        else
            abs_real = value;
    end
endfunction

function integer round_to_int;
    input real value;
    begin
        if (value >= 0.0)
            round_to_int = $rtoi(value + 0.5);
        else
            round_to_int = $rtoi(value - 0.5);
    end
endfunction

function integer rad_to_s15;
    input real radians;
    real scaled;
    begin
        scaled = radians * 32768.0 / HALF_PI;
        if (scaled > 32767.0)
            rad_to_s15 = 32767;
        else if (scaled < -32768.0)
            rad_to_s15 = -32768;
        else
            rad_to_s15 = round_to_int(scaled);
    end
endfunction

function integer real_to_q7;
    input real value;
    real scaled;
    begin
        scaled = value * 128.0;
        if (scaled > 127.0)
            real_to_q7 = 127;
        else if (scaled < -128.0)
            real_to_q7 = -128;
        else
            real_to_q7 = round_to_int(scaled);
    end
endfunction

function real sn_to_real;
    input integer value;
    begin
        sn_to_real = $itor(value) / $itor(1 << N_ITER);
    end
endfunction

function real q7_to_real;
    input integer value;
    begin
        q7_to_real = $itor(value) / 128.0;
    end
endfunction

function real s15_to_rad;
    input integer value;
    begin
        s15_to_rad = $itor(value) * HALF_PI / 32768.0;
    end
endfunction

task pulse_start;
    begin
        @(negedge clk);
        start = 1'b1;
        @(negedge clk);
        start = 1'b0;
    end
endtask

task wait_finish;
    integer watchdog;
    begin
        watchdog = 0;
        while ((finish !== 1'b1) && (watchdog < (N_ITER + 6))) begin
            @(posedge clk);
            watchdog = watchdog + 1;
        end

        if (finish !== 1'b1) begin
            $display("ERROR: timeout waiting for finish at time %0t", $time);
            fail_count = fail_count + 1;
        end

        @(negedge clk);
    end
endtask

task check_rotation;
    input real angle_rad;
    reg [255:0] label;
    real cos_expected;
    real sin_expected;
    real cos_measured;
    real sin_measured;
    real cos_error;
    real sin_error;
    begin
        label = "rotation";
        mode = 1'b0;
        angle = rad_to_s15(angle_rad);
        x_in = 8'sd0;
        y_in = 8'sd0;

        pulse_start;
        wait_finish;

        cos_expected = $cos(angle_rad);
        sin_expected = $sin(angle_rad);
        cos_measured = sn_to_real($signed(cos_out));
        sin_measured = sn_to_real($signed(sin_out));
        cos_error = abs_real(cos_measured - cos_expected);
        sin_error = abs_real(sin_measured - sin_expected);

        if ((cos_error <= ROT_TOL) && (sin_error <= ROT_TOL)) begin
            pass_count = pass_count + 1;
            if (!quiet_mode)
                $display("PASS %0s angle=%0.6f cos=%0.6f exp=%0.6f sin=%0.6f exp=%0.6f", label, angle_rad, cos_measured, cos_expected, sin_measured, sin_expected);
        end else begin
            fail_count = fail_count + 1;
            $display("FAIL %0s angle=%0.6f cos=%0.6f exp=%0.6f err=%0.6f sin=%0.6f exp=%0.6f err=%0.6f", label, angle_rad, cos_measured, cos_expected, cos_error, sin_measured, sin_expected, sin_error);
        end
    end
endtask

task check_vectoring;
    input real x_real;
    input real y_real;
    input real phase_expected;
    reg [255:0] label;
    real phase_measured;
    real y_measured;
    real x_measured;
    real phase_error;
    real residual_error;
    begin
        label = "vectoring";
        mode = 1'b1;
        angle = 16'sd0;
        x_in = real_to_q7(x_real);
        y_in = real_to_q7(y_real);

        pulse_start;
        wait_finish;

        x_measured = sn_to_real($signed(cos_out));
        y_measured = sn_to_real($signed(sin_out));
        phase_measured = s15_to_rad($signed(phase_out));
        phase_error = abs_real(phase_measured - phase_expected);
        residual_error = abs_real(y_measured);

        if ((phase_error <= PHASE_TOL) && (residual_error <= RESIDUAL_TOL)) begin
            pass_count = pass_count + 1;
            if (!quiet_mode)
                $display("PASS %0s x=%0.4f y=%0.4f phase=%0.6f exp=%0.6f residual_y=%0.6f mag_x=%0.6f", label, x_real, y_real, phase_measured, phase_expected, y_measured, x_measured);
        end else begin
            fail_count = fail_count + 1;
            $display("FAIL %0s x=%0.4f y=%0.4f phase=%0.6f exp=%0.6f err=%0.6f residual_y=%0.6f mag_x=%0.6f", label, x_real, y_real, phase_measured, phase_expected, phase_error, y_measured, x_measured);
        end
    end
endtask

always #5 clk = ~clk;

initial begin
        clk = 1'b0;
        rst = 1'b1;
        start = 1'b0;
        mode = 1'b0;
        angle = 16'sd0;
        x_in = 8'sd0;
        y_in = 8'sd0;
        pass_count = 0;
        fail_count = 0;
        quiet_mode = 0;

        $dumpfile("cordic_tb.vcd");
        $dumpvars(0, cordic_tb);

        repeat (3) @(posedge clk);
        rst = 1'b0;

        check_rotation(0.0);
        check_rotation(PI / 6.0);
        check_rotation(-PI / 4.0);

        check_vectoring(0.5, 0.0, 0.0);
        check_vectoring(0.5, 0.5, PI / 4.0);
        check_vectoring(0.5, -0.5, -PI / 4.0);
        check_vectoring(-0.5, 0.5, 3.0 * PI / 4.0);
        check_vectoring(-0.5, -0.5, -3.0 * PI / 4.0);

        // ---- 4096 rotation sweep: uniformly sampled in (-pi/2, pi/2) ----
        $display("--- rotation sweep (4096 cases) ---");
        quiet_mode = 1;
        for (loop_i = 0; loop_i < 4096; loop_i = loop_i + 1) begin
            ang_sweep = -HALF_PI + (loop_i + 0.5) * (PI / 4096.0);
            check_rotation(ang_sweep);
        end
        $display("rotation sweep done: pass=%0d fail=%0d", pass_count, fail_count);

        // ---- 4096 vectoring sweep: unit-circle angles uniformly sampled in (-pi, pi) ----
        // Skip cases where quantised x_in == 0 (degenerate, near +-pi/2)
        $display("--- vectoring sweep (4096 cases) ---");
        for (loop_i = 0; loop_i < 4096; loop_i = loop_i + 1) begin
            ang_sweep = -PI + (loop_i + 0.5) * (2.0 * PI / 4096.0);
            // Use quantised values so expected phase matches what the DUT sees
            x_sweep = $itor(real_to_q7($cos(ang_sweep))) / 128.0;
            y_sweep = $itor(real_to_q7($sin(ang_sweep))) / 128.0;
            if (real_to_q7($cos(ang_sweep)) != 0)
                check_vectoring(x_sweep, y_sweep, $atan2(y_sweep, x_sweep));
        end
        $display("vectoring sweep done: pass=%0d fail=%0d", pass_count, fail_count);
        quiet_mode = 0;

        $display("SUMMARY pass=%0d fail=%0d", pass_count, fail_count);

        if (fail_count != 0)
            $finish(1);
        else
            $finish(0);
    end

endmodule