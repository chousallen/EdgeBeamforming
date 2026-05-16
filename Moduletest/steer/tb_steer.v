`timescale 1ns/1ps
// tb_steer.v — testbench for steer.v
//
// Workflow:
//   1. Run gen_steer_tb.py to produce steer_in.mem and steer_exp.mem.
//   2. Simulate: iverilog -o sim tb_steer.v steer.v cordic_stage.v phi_table.v && vvp sim
//      (or equivalent in your toolchain)
//
// Memory layout:
//   steer_in.mem  [87:0]  {theta[7:0], x1[9:0],y1[9:0], x2[9:0],y2[9:0],
//                                      x3[9:0],y3[9:0], x4[9:0],y4[9:0]}
//   steer_exp.mem [79:0]  {xo1[9:0],yo1[9:0], xo2[9:0],yo2[9:0],
//                          xo3[9:0],yo3[9:0], xo4[9:0],yo4[9:0]}
//
// Input period: GAP = 6 clock cycles (one i_valid pulse per batch).
// Output order: channel 0 (ch1) → 1 (ch2) → 2 (ch3) → 3 (ch4), consecutive cycles.
// Comparison fires when channel=3 arrives (all four outputs of that vector ready).

module tb_steer;

// ─── parameters (keep in sync with gen_steer_tb.py) ─────────────────────────
localparam N_VEC = 8;   // number of test vectors
localparam GAP   = 6;   // clock cycles between consecutive i_valid pulses

// ─── DUT ports ───────────────────────────────────────────────────────────────
reg         clk, rst_n, i_valid;
reg  signed [0:-7]  i_theta;
reg  signed [5:-4]  i_x1, i_y1, i_x2, i_y2, i_x3, i_y3, i_x4, i_y4;

wire        o_valid;
wire signed [0:-7]  o_theta;
wire [1:0]          channel;
wire signed [5:-4]  o_x, o_y;

// ─── test memories ───────────────────────────────────────────────────────────
reg [87:0] in_mem  [0:N_VEC-1];
reg [79:0] exp_mem [0:N_VEC-1];

// ─── DUT instantiation ───────────────────────────────────────────────────────
steer dut (
    .clk(clk), .rst_n(rst_n), .i_valid(i_valid),
    .i_theta(i_theta),
    .i_x1(i_x1), .i_y1(i_y1),
    .i_x2(i_x2), .i_y2(i_y2),
    .i_x3(i_x3), .i_y3(i_y3),
    .i_x4(i_x4), .i_y4(i_y4),
    .o_valid(o_valid), .o_theta(o_theta),
    .channel(channel),
    .o_x(o_x), .o_y(o_y)
);

// ─── clock (100 MHz) ─────────────────────────────────────────────────────────
initial clk = 0;
always  #5 clk = ~clk;

// ─── stimulus ────────────────────────────────────────────────────────────────
integer n;
integer pass_cnt, fail_cnt, out_vec;

initial begin
    $dumpfile("tb_steer.vcd");
    $dumpvars(0, tb_steer);

    $readmemh("steer_in.mem",  in_mem);
    $readmemh("steer_exp.mem", exp_mem);

    pass_cnt = 0;
    fail_cnt = 0;
    out_vec  = 0;

    rst_n = 0; i_valid = 0;
    i_theta = 0;
    i_x1 = 0; i_y1 = 0; i_x2 = 0; i_y2 = 0;
    i_x3 = 0; i_y3 = 0; i_x4 = 0; i_y4 = 0;

    repeat(3) @(posedge clk);
    @(posedge clk);
    rst_n = 1;

    // Send N_VEC input vectors, one i_valid pulse every GAP cycles
    for (n = 0; n < N_VEC; n = n + 1) begin
        // Posedge-only sequencing: drive now, sampled on next posedge
        @(posedge clk);
        i_valid = 1;
        i_theta = in_mem[n][87:80];
        i_x1    = in_mem[n][79:70];  i_y1 = in_mem[n][69:60];
        i_x2    = in_mem[n][59:50];  i_y2 = in_mem[n][49:40];
        i_x3    = in_mem[n][39:30];  i_y3 = in_mem[n][29:20];
        i_x4    = in_mem[n][19:10];  i_y4 = in_mem[n][9:0];

        // Keep valid through one full cycle
        @(posedge clk);
        i_valid = 0;
        repeat(GAP - 2) @(posedge clk);
    end

    // Drain pipeline (latency ≈ 15 cycles + margin)
    repeat(25) @(posedge clk);

    $display("=== DONE ===  pass=%0d  fail=%0d  (%0d/%0d vectors received)",
             pass_cnt, fail_cnt, out_vec, N_VEC);
    if (out_vec < N_VEC)
        $display("WARNING: only %0d of %0d vectors completed", out_vec, N_VEC);
    $finish;
end

// ─── output checker ──────────────────────────────────────────────────────────
// Collect each channel's output as it arrives, then compare the full set
// when channel=3 (the last of the four) is seen.

reg signed [9:0] got_x [0:3];
reg signed [9:0] got_y [0:3];
integer ch;
reg [9:0] ex, ey;

always @(posedge clk) begin
    if (o_valid) begin
        // Blocking assignment so got_x[3]/got_y[3] are visible below
        got_x[channel] = $signed(o_x);
        got_y[channel] = $signed(o_y);

        if (channel == 2'd3) begin
            // All four channels for this vector are ready; compare to expected
            for (ch = 0; ch < 4; ch = ch + 1) begin
                case (ch)
                    0: begin ex = exp_mem[out_vec][79:70]; ey = exp_mem[out_vec][69:60]; end
                    1: begin ex = exp_mem[out_vec][59:50]; ey = exp_mem[out_vec][49:40]; end
                    2: begin ex = exp_mem[out_vec][39:30]; ey = exp_mem[out_vec][29:20]; end
                    3: begin ex = exp_mem[out_vec][19:10]; ey = exp_mem[out_vec][9:0];   end
                endcase

                if (got_x[ch] === $signed(ex) && got_y[ch] === $signed(ey)) begin
                    $display("PASS  vec=%0d ch=%0d  x=%5d y=%5d",
                             out_vec, ch, got_x[ch], got_y[ch]);
                    pass_cnt = pass_cnt + 1;
                end else begin
                    $display("FAIL  vec=%0d ch=%0d  got(%5d,%5d)  exp(%5d,%5d)",
                             out_vec, ch,
                             got_x[ch], got_y[ch],
                             $signed(ex), $signed(ey));
                    fail_cnt = fail_cnt + 1;
                end
            end
            out_vec = out_vec + 1;
        end
    end
end

// ─── watchdog ────────────────────────────────────────────────────────────────
initial begin
    #((N_VEC * GAP + 50) * 10);   // 10 ns per cycle
    $display("TIMEOUT  pass=%0d  fail=%0d  vectors=%0d/%0d",
             pass_cnt, fail_cnt, out_vec, N_VEC);
    $finish;
end

endmodule
