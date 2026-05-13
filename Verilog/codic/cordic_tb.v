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
integer loop_i;
real    ang_sweep, x_sweep, y_sweep;

// Float64 CORDIC reference -- exact atan values, same N_ITER
real atan_lut_r [0:19];
real K_real;

// Rotation error accumulators
integer rot_count;
real rot_dut_cos_max, rot_dut_cos_sum;
real rot_dut_sin_max, rot_dut_sin_sum;
real rot_f64_cos_max, rot_f64_cos_sum;
real rot_f64_sin_max, rot_f64_sin_sum;
real rot_q_cos_max,   rot_q_cos_sum;
real rot_q_sin_max,   rot_q_sin_sum;

// Vectoring error accumulators
integer vec_count;
real vec_dut_ph_max,  vec_dut_ph_sum;
real vec_dut_res_max, vec_dut_res_sum;
real vec_f64_ph_max,  vec_f64_ph_sum;
real vec_f64_res_max, vec_f64_res_sum;
real vec_q_ph_max,    vec_q_ph_sum;

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
    // float64 CORDIC reference
    real cos_ref_r, sin_ref_r, z_ref_r;
    real cos_err_ref, sin_err_ref;
    real cos_quant,  sin_quant;
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

        cordic_ref_rotation(angle_rad, cos_ref_r, sin_ref_r, z_ref_r);
        cos_err_ref = abs_real(cos_ref_r - cos_expected);
        sin_err_ref = abs_real(sin_ref_r - sin_expected);
        cos_quant   = abs_real(cos_measured - cos_ref_r);
        sin_quant   = abs_real(sin_measured - sin_ref_r);

        // Accumulate stats
        rot_count = rot_count + 1;
        rot_dut_cos_sum = rot_dut_cos_sum + cos_error;
        rot_dut_sin_sum = rot_dut_sin_sum + sin_error;
        rot_f64_cos_sum = rot_f64_cos_sum + cos_err_ref;
        rot_f64_sin_sum = rot_f64_sin_sum + sin_err_ref;
        rot_q_cos_sum   = rot_q_cos_sum   + cos_quant;
        rot_q_sin_sum   = rot_q_sin_sum   + sin_quant;
        if (cos_error    > rot_dut_cos_max) rot_dut_cos_max = cos_error;
        if (sin_error    > rot_dut_sin_max) rot_dut_sin_max = sin_error;
        if (cos_err_ref  > rot_f64_cos_max) rot_f64_cos_max = cos_err_ref;
        if (sin_err_ref  > rot_f64_sin_max) rot_f64_sin_max = sin_err_ref;
        if (cos_quant    > rot_q_cos_max)   rot_q_cos_max   = cos_quant;
        if (sin_quant    > rot_q_sin_max)   rot_q_sin_max   = sin_quant;

        if ((cos_error <= ROT_TOL) && (sin_error <= ROT_TOL)) begin
            pass_count = pass_count + 1;
        end else begin
            fail_count = fail_count + 1;
            $display("FAIL %0s angle=%0.6f | dut_err: cos=%0.2e sin=%0.2e | f64_err: cos=%0.2e sin=%0.2e | quant: cos=%0.2e sin=%0.2e",
                label, angle_rad, cos_error, sin_error, cos_err_ref, sin_err_ref, cos_quant, sin_quant);
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
    // float64 CORDIC reference
    real xi_q, yi_q;
    real x_ref_r, y_ref_r, phase_ref_r;
    real phase_err_ref, res_ref;
    real phase_quant;
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

        xi_q = $itor(real_to_q7(x_real));
        yi_q = $itor(real_to_q7(y_real));
        cordic_ref_vectoring(xi_q, yi_q, x_ref_r, y_ref_r, phase_ref_r);
        phase_err_ref = abs_real(phase_ref_r - phase_expected);
        res_ref       = abs_real(y_ref_r);
        phase_quant   = abs_real(phase_measured - phase_ref_r);

        // Accumulate stats
        vec_count = vec_count + 1;
        vec_dut_ph_sum  = vec_dut_ph_sum  + phase_error;
        vec_dut_res_sum = vec_dut_res_sum + residual_error;
        vec_f64_ph_sum  = vec_f64_ph_sum  + phase_err_ref;
        vec_f64_res_sum = vec_f64_res_sum + res_ref;
        vec_q_ph_sum    = vec_q_ph_sum    + phase_quant;
        if (phase_error    > vec_dut_ph_max)  vec_dut_ph_max  = phase_error;
        if (residual_error > vec_dut_res_max) vec_dut_res_max = residual_error;
        if (phase_err_ref  > vec_f64_ph_max)  vec_f64_ph_max  = phase_err_ref;
        if (res_ref        > vec_f64_res_max) vec_f64_res_max = res_ref;
        if (phase_quant    > vec_q_ph_max)    vec_q_ph_max    = phase_quant;

        if ((phase_error <= PHASE_TOL) && (residual_error <= RESIDUAL_TOL)) begin
            pass_count = pass_count + 1;
        end else begin
            fail_count = fail_count + 1;
            $display("FAIL %0s x=%0.4f y=%0.4f | dut_err: phase=%0.2e res=%0.2e | f64_err: phase=%0.2e res=%0.2e | quant: phase=%0.2e",
                label, x_real, y_real, phase_error, residual_error, phase_err_ref, res_ref, phase_quant);
        end
    end
endtask

task print_rot_stats;
    begin
        $display("  Rotation errors over %0d cases:", rot_count);
        $display("    [DUT vs ideal ] cos: max=%0.2e avg=%0.2e  sin: max=%0.2e avg=%0.2e",
            rot_dut_cos_max, rot_dut_cos_sum / rot_count,
            rot_dut_sin_max, rot_dut_sin_sum / rot_count);
        $display("    [f64 vs ideal ] cos: max=%0.2e avg=%0.2e  sin: max=%0.2e avg=%0.2e",
            rot_f64_cos_max, rot_f64_cos_sum / rot_count,
            rot_f64_sin_max, rot_f64_sin_sum / rot_count);
        $display("    [quant error  ] cos: max=%0.2e avg=%0.2e  sin: max=%0.2e avg=%0.2e",
            rot_q_cos_max, rot_q_cos_sum / rot_count,
            rot_q_sin_max, rot_q_sin_sum / rot_count);
    end
endtask

task print_vec_stats;
    begin
        $display("  Vectoring errors over %0d cases:", vec_count);
        $display("    [DUT vs ideal ] phase: max=%0.2e avg=%0.2e  residual: max=%0.2e avg=%0.2e",
            vec_dut_ph_max, vec_dut_ph_sum / vec_count,
            vec_dut_res_max, vec_dut_res_sum / vec_count);
        $display("    [f64 vs ideal ] phase: max=%0.2e avg=%0.2e  residual: max=%0.2e avg=%0.2e",
            vec_f64_ph_max, vec_f64_ph_sum / vec_count,
            vec_f64_res_max, vec_f64_res_sum / vec_count);
        $display("    [quant error  ] phase: max=%0.2e avg=%0.2e",
            vec_q_ph_max, vec_q_ph_sum / vec_count);
    end
endtask

// ---- Float64 reference: rotation mode ----
task cordic_ref_rotation;
    input  real theta;
    output real xo, yo, zo;
    real xr, yr, zr, xn, yn;
    integer i;
    begin
        xr = K_real; yr = 0.0; zr = theta;
        for (i = 0; i < N_ITER; i = i + 1) begin
            if (zr > 0.0) begin
                xn = xr - yr / $itor(1 << i);
                yn = yr + xr / $itor(1 << i);
                zr = zr - atan_lut_r[i];
            end else begin
                xn = xr + yr / $itor(1 << i);
                yn = yr - xr / $itor(1 << i);
                zr = zr + atan_lut_r[i];
            end
            xr = xn; yr = yn;
        end
        xo = xr; yo = yr; zo = zr;
    end
endtask

// ---- Float64 reference: vectoring mode ----
// xi/yi are the raw integer Q0.7 values; output is normalised by 2^N_ITER
task cordic_ref_vectoring;
    input  real xi, yi;
    output real xo, yo, zo;
    real xr, yr, zr, xn, yn;
    integer neg_x_i, neg_y_orig_i;
    integer i;
    begin
        neg_x_i      = (xi < 0.0) ? 1 : 0;
        neg_y_orig_i = (yi < 0.0) ? 1 : 0;
        if (neg_x_i) begin xr = -xi; yr = -yi; end
        else         begin xr =  xi; yr =  yi; end
        zr = 0.0;
        for (i = 0; i < N_ITER; i = i + 1) begin
            if (yr > 0.0) begin
                xn = xr + yr / $itor(1 << i);
                yn = yr - xr / $itor(1 << i);
                zr = zr + atan_lut_r[i];
            end else begin
                xn = xr - yr / $itor(1 << i);
                yn = yr + xr / $itor(1 << i);
                zr = zr - atan_lut_r[i];
            end
            xr = xn; yr = yn;
        end
        if (neg_x_i)
            zr = neg_y_orig_i ? (zr - PI) : (zr + PI);
        xo = xr / $itor(1 << N_ITER);
        yo = yr / $itor(1 << N_ITER);
        zo = zr;
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
        rot_count = 0;
        rot_dut_cos_max = 0.0; rot_dut_cos_sum = 0.0;
        rot_dut_sin_max = 0.0; rot_dut_sin_sum = 0.0;
        rot_f64_cos_max = 0.0; rot_f64_cos_sum = 0.0;
        rot_f64_sin_max = 0.0; rot_f64_sin_sum = 0.0;
        rot_q_cos_max   = 0.0; rot_q_cos_sum   = 0.0;
        rot_q_sin_max   = 0.0; rot_q_sin_sum   = 0.0;
        vec_count = 0;
        vec_dut_ph_max  = 0.0; vec_dut_ph_sum  = 0.0;
        vec_dut_res_max = 0.0; vec_dut_res_sum = 0.0;
        vec_f64_ph_max  = 0.0; vec_f64_ph_sum  = 0.0;
        vec_f64_res_max = 0.0; vec_f64_res_sum = 0.0;
        vec_q_ph_max    = 0.0; vec_q_ph_sum    = 0.0;

        // Initialise float64 CORDIC reference atan table and K
        atan_lut_r[0]  = 0.7853981633974483;
        atan_lut_r[1]  = 0.4636476090008257;
        atan_lut_r[2]  = 0.24497866312686414;
        atan_lut_r[3]  = 0.12435499027098956;
        atan_lut_r[4]  = 0.06241880999595735;
        atan_lut_r[5]  = 0.031239833430268277;
        atan_lut_r[6]  = 0.015623728620476831;
        atan_lut_r[7]  = 0.007812341550431374;
        atan_lut_r[8]  = 0.003906230131966972;
        atan_lut_r[9]  = 0.0019531225164788188;
        atan_lut_r[10] = 0.0009765621895593195;
        atan_lut_r[11] = 0.0004882812111948983;
        atan_lut_r[12] = 0.00024414062014936177;
        atan_lut_r[13] = 0.00012207031189367021;
        atan_lut_r[14] = 0.00006103515617420877;
        atan_lut_r[15] = 0.000030517578115526096;
        atan_lut_r[16] = 0.000015258789061315762;
        atan_lut_r[17] = 0.000007629394531330678;
        atan_lut_r[18] = 0.000003814697265647406;
        atan_lut_r[19] = 0.000001907348632810187;
        begin : init_k
            real _pow2;
            _pow2 = 1.0; K_real = 1.0;
            for (loop_i = 0; loop_i < N_ITER; loop_i = loop_i + 1) begin
                K_real = K_real / $sqrt(1.0 + _pow2 * _pow2);
                _pow2  = _pow2 / 2.0;
            end
        end

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
        for (loop_i = 0; loop_i < 4096; loop_i = loop_i + 1) begin
            ang_sweep = -HALF_PI + (loop_i + 0.5) * (PI / 4096.0);
            check_rotation(ang_sweep);
        end
        $display("rotation sweep done: pass=%0d fail=%0d", pass_count, fail_count);
        print_rot_stats;

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
        print_vec_stats;

        $display("SUMMARY pass=%0d fail=%0d", pass_count, fail_count);

        if (fail_count != 0)
            $finish(1);
        else
            $finish(0);
    end

endmodule