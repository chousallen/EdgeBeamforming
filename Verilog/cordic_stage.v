// cordic_stage.v — 5-iteration pipelined CORDIC rotation stage
//
// Operates on two channels (a and b) in parallel, sharing iteration counter
// and atan value.  Tie xb/yb/angb to 0 for single-channel use (cordic2).
//
// Timing: start cycle performs iteration ITER_START; done is asserted after
// the 5th iteration (ITER_START+4) is registered.  Total latency = 5 clock
// cycles from start to valid outputs.
//
// Data  format: S7.4  — signed [7:-4], 12-bit, 2 integer guard bits
// Angle format: S0.13 — signed [0:-13], 14-bit, unit = pi/8092
//
// atan(2^-i) table in pi/8092 units:
//   i=0:2023  i=1:1195  i=2:631  i=3:320  i=4:161
//   i=5:80    i=6:40    i=7:20   i=8:10   i=9:5

module cordic_stage #(
    parameter ITER_START = 0,   // first iteration index: 0 (s1) or 5 (s2)
    parameter OWN_ATAN   = 1    // 1: read atan ROM internally; 0: use atan_in
)(
    input  wire clk,
    input  wire rst_n,
    input  wire start,                      // pulse: load inputs, begin sequence

    input  wire signed [7:-4]  xa_in,  ya_in,   // channel a data  S7.4
    input  wire signed [7:-4]  xb_in,  yb_in,   // channel b data  S7.4
    input  wire signed [0:-13] anga_in,          // channel a angle S0.13
    input  wire signed [0:-13] angb_in,          // channel b angle S0.13

    input  wire signed [0:-13] atan_in,          // atan value from cordic1 (OWN_ATAN=0)
    output wire signed [0:-13] atan_out,         // atan used this cycle (register 1 cy for cordic2)

    output reg  signed [7:-4]  xa_out, ya_out,  // channel a result  S7.4 (held until next start)
    output reg  signed [7:-4]  xb_out, yb_out,  // channel b result  S7.4
    output reg  signed [0:-13] anga_out,         // channel a residual angle
    output reg  signed [0:-13] angb_out,         // channel b residual angle
    output reg                 done              // high after 5 iterations; held until next start
);

    // -------------------------------------------------------------------------
    // atan(2^-i) lookup — returns 14-bit signed value in pi/8092 units
    // -------------------------------------------------------------------------
    function signed [13:0] atan_table;
        input [3:0] i;
        begin
            case (i)
                4'd0: atan_table = 14'sd2023;   // atan(2^ 0) ≈ pi/4
                4'd1: atan_table = 14'sd1195;   // atan(2^-1)
                4'd2: atan_table = 14'sd631;    // atan(2^-2)
                4'd3: atan_table = 14'sd320;    // atan(2^-3)
                4'd4: atan_table = 14'sd161;    // atan(2^-4)
                4'd5: atan_table = 14'sd80;     // atan(2^-5)
                4'd6: atan_table = 14'sd40;     // atan(2^-6)
                4'd7: atan_table = 14'sd20;     // atan(2^-7)
                4'd8: atan_table = 14'sd10;     // atan(2^-8)
                4'd9: atan_table = 14'sd5;      // atan(2^-9)
                default: atan_table = 14'sd0;
            endcase
        end
    endfunction

    // -------------------------------------------------------------------------
    // Working registers
    // -------------------------------------------------------------------------
    reg signed [7:-4]  xa_r, ya_r;
    reg signed [7:-4]  xb_r, yb_r;
    reg signed [0:-13] anga_r, angb_r;
    reg [3:0]           iter_r;   // next iteration index (updated each clock)

    // -------------------------------------------------------------------------
    // Combinational: effective iteration index and data mux
    // On the start cycle:  use inputs + ITER_START  (compute iteration 0 immediately)
    // Otherwise:           use working registers + iter_r
    // -------------------------------------------------------------------------
    wire [3:0]          iter_eff  = start ? ITER_START[3:0] : iter_r;

    wire signed [7:-4]  xa_cur    = start ? xa_in  : xa_r;
    wire signed [7:-4]  ya_cur    = start ? ya_in  : ya_r;
    wire signed [7:-4]  xb_cur    = start ? xb_in  : xb_r;
    wire signed [7:-4]  yb_cur    = start ? yb_in  : yb_r;
    wire signed [0:-13] anga_cur  = start ? anga_in : anga_r;
    wire signed [0:-13] angb_cur  = start ? angb_in : angb_r;

    // atan value for this iteration (14-bit natural index → S0.13 assignment)
    wire signed [0:-13] atan_now  = OWN_ATAN ? atan_table(iter_eff) : atan_in;
    assign atan_out = atan_now;

    // -------------------------------------------------------------------------
    // CORDIC rotation step
    // direction: angle[0] (sign bit) = 0 → positive → subtract atan, CCW
    //                                  1 → negative → add    atan, CW
    // -------------------------------------------------------------------------
    wire anga_sign = anga_cur[0];   // 1 = negative angle
    wire angb_sign = angb_cur[0];

    // Arithmetic right-shift operands (sign-extended, width preserved)
    wire signed [7:-4] xa_shr = xa_cur >>> iter_eff;
    wire signed [7:-4] ya_shr = ya_cur >>> iter_eff;
    wire signed [7:-4] xb_shr = xb_cur >>> iter_eff;
    wire signed [7:-4] yb_shr = yb_cur >>> iter_eff;

    // Channel a next values
    wire signed [7:-4]  xa_next = anga_sign ? xa_cur + ya_shr : xa_cur - ya_shr;
    wire signed [7:-4]  ya_next = anga_sign ? ya_cur - xa_shr : ya_cur + xa_shr;
    wire signed [0:-13] anga_next = anga_sign ? anga_cur + atan_now : anga_cur - atan_now;

    // Channel b next values
    wire signed [7:-4]  xb_next = angb_sign ? xb_cur + yb_shr : xb_cur - yb_shr;
    wire signed [7:-4]  yb_next = angb_sign ? yb_cur - xb_shr : yb_cur + xb_shr;
    wire signed [0:-13] angb_next = angb_sign ? angb_cur + atan_now : angb_cur - atan_now;

    // -------------------------------------------------------------------------
    // Sequential: register results; latch outputs on final iteration
    // -------------------------------------------------------------------------
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            xa_r    <= 0; ya_r    <= 0;
            xb_r    <= 0; yb_r    <= 0;
            anga_r  <= 0; angb_r  <= 0;
            iter_r  <= 0;
            xa_out  <= 0; ya_out  <= 0;
            xb_out  <= 0; yb_out  <= 0;
            anga_out <= 0; angb_out <= 0;
            done    <= 0;
        end else if (start || !done) begin
            // Update working registers every active cycle
            xa_r   <= xa_next;   ya_r   <= ya_next;
            xb_r   <= xb_next;   yb_r   <= yb_next;
            anga_r <= anga_next; angb_r <= angb_next;
            iter_r <= iter_eff + 4'd1;

            if (iter_eff == ITER_START + 4) begin
                // Final iteration: latch stable outputs
                xa_out   <= xa_next;   ya_out   <= ya_next;
                xb_out   <= xb_next;   yb_out   <= yb_next;
                anga_out <= anga_next; angb_out <= angb_next;
                done     <= 1'b1;
            end else begin
                done <= 1'b0;
            end
        end
        // When done=1 and start=0: hold all outputs, do nothing
    end

endmodule
