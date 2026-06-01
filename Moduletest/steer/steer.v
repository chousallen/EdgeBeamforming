/*
4-channel inputs: (xi, yi), i = 1~4. Rotate (-phi, 0, phi, 2phi) for channel 1~4 respectively.
10 iteration cordic is divided as 2 stages, one for first 5 iterations, the other for last 5 iterations.
rotating -phi is just rotate the opposite direction of phi.
there are two parallel 2-stage cordic engines, one is responsible for ch1 and ch3, the other is for ch4.
2phi needs to derived by selecting phi << 1 and phi << 1 - 2pi (256 in unit of fxtpt).

cordic1 is for ch1, ch3 rotation.
cordic2 is for ch4 rotation.
s1 is for 1~5 iterations.
s2 is for 6-10 iterations.

Timing:
cycle       0       1       2       3       4       5       6       7       8       9       10      11      12
angles      theta   phi     2phi    *       *       *       theta   phi     2phi    *       *       *       *
cordic1_s1  *       *       iter1   iter2   iter3   iter4   iter5   iter1   iter2   iter3   iter4   iter5
cordic1_s2  *       *       *       *       *       *       *       iter6   iter7   iter8   iter9   iter10  iter6
cordic2_s1  *       *       *       iter1   iter2   iter3   iter4   iter5   iter1   iter2   iter3   iter4   iter5
cordic2_s2  *       *       *       *       *       *       *       *       iter6   iter7   iter8   iter9   iter10
*/

module steer(
    input clk,
    input rst_n,
    input i_valid,
    input  signed [0:-7]  i_theta, // target angle, unit: pi/128, range: [-pi/3, pi/3] -> [-43, 43]
    input  signed [5:-4]  i_x1, i_y1,
    input  signed [5:-4]  i_x2, i_y2,
    input  signed [5:-4]  i_x3, i_y3,
    input  signed [5:-4]  i_x4, i_y4,
    output                o_valid,
    output signed [0:-7]  o_theta,
    output        [1:0]   channel, // 0=ch1, 1=ch2, 2=ch3, 3=ch4 (interleaved)
    output signed [5:-4]  o_x,
    output signed [5:-4]  o_y
);

    // =========================================================================
    // Angle pipeline
    //   cycle 0 : i_theta arrives; phi_w combinational from LUT
    //   cycle 1 : phi_r   registered
    //   cycle 2 : dphi_r  registered (2*phi with [-pi,pi] wrap)
    // =========================================================================
    wire signed [0:-13] phi_w;
    phi_table phi_gen(.theta(i_theta), .phi(phi_w));

    reg signed [0:-13] phi_r, dphi_r;

    // 2*phi wrap-around: pi = 8092, 2*pi = 16184 in phi unit (pi/8092)
    localparam signed [14:0] PI_PHI  = 15'sd8092;
    localparam signed [14:0] TPI_PHI = 15'sd16184;
    wire [13:0]         phi_r_nat = phi_r;                                      // reindex [0:-13]->[13:0]
    wire signed [14:0]  phi2      = $signed({phi_r_nat[13], phi_r_nat}) <<< 1;  // 1-bit wider to detect overflow
    wire signed [13:0]  dphi_nat  = (phi2 >  PI_PHI) ? (phi2 - TPI_PHI) :
                                    (phi2 < -PI_PHI) ? (phi2 + TPI_PHI) :
                                                        phi2[13:0];
    wire signed [0:-13] dphi_w    = dphi_nat;   // reindex [13:0]->[0:-13]

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            phi_r  <= 0;
            dphi_r <= 0;
        end else begin
            phi_r  <= phi_w;    // cycle 0 -> available cycle 1
            dphi_r <= dphi_w;   // cycle 1 -> available cycle 2
        end
    end

    // =========================================================================
    // Timing control
    //   valid_sr[N] = i_valid that arrived N+1 cycles ago (shift left, LSB newest)
    //
    //   cordic1_s1 start : valid_sr[1]  (cycle  2)
    //   cordic2_s1 start : valid_sr[2]  (cycle  3)
    //   cordic1_s2 start : valid_sr[6]  (cycle  7)
    //   cordic2_s2 start : valid_sr[7]  (cycle  8)
    //   ch1 out ready    : valid_sr[11] (cycle 12)
    //   ch2 out ready    : valid_sr[12] (cycle 13) -- passthrough slot
    //   ch3 out ready    : valid_sr[13] (cycle 14)
    //   ch4 out ready    : valid_sr[14] (cycle 15)
    //
    //   Assumes i_valid is a single-cycle pulse (not held).
    // =========================================================================
    reg [14:0] valid_sr;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) valid_sr <= 15'd0;
        else     valid_sr <= {valid_sr[13:0], i_valid};
    end

    wire cordic1_s1_start = valid_sr[1];
    wire cordic2_s1_start = valid_sr[2];
    wire cordic1_s2_start = valid_sr[6];
    wire cordic2_s2_start = valid_sr[7];

    // =========================================================================
    // Input data pipelines
    //   cordic1_s1 starts at cycle 2 -> ch1, ch3 need 2 pipeline regs
    //   cordic2_s1 starts at cycle 3 -> ch4 needs 3 pipeline regs
    // =========================================================================
    integer k;

    reg signed [5:-4] x1_d [0:1], y1_d [0:1]; // ch1: 2-stage
    reg signed [5:-4] x3_d [0:1], y3_d [0:1]; // ch3: 2-stage
    reg signed [5:-4] x4_d [0:2], y4_d [0:2]; // ch4: 3-stage

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            for (k = 0; k < 2; k = k+1) begin x1_d[k]<=0; y1_d[k]<=0; x3_d[k]<=0; y3_d[k]<=0; end
            for (k = 0; k < 3; k = k+1) begin x4_d[k]<=0; y4_d[k]<=0; end
        end else begin
            x1_d[0] <= i_x1;     y1_d[0] <= i_y1;
            x3_d[0] <= i_x3;     y3_d[0] <= i_y3;
            x4_d[0] <= i_x4;     y4_d[0] <= i_y4;
            for (k = 1; k < 2; k = k+1) begin x1_d[k]<=x1_d[k-1]; y1_d[k]<=y1_d[k-1]; x3_d[k]<=x3_d[k-1]; y3_d[k]<=y3_d[k-1]; end
            for (k = 1; k < 3; k = k+1) begin x4_d[k]<=x4_d[k-1]; y4_d[k]<=y4_d[k-1]; end
        end
    end

    // Sign-extend S5.4 inputs to S7.4 ([7:-4], 12-bit) for CORDIC (2 integer guard bits)
    // Verilog sign-extends automatically when assigning signed [5:-4] -> signed [7:-4]
    wire signed [7:-4] x1_ext = x1_d[1];
    wire signed [7:-4] y1_ext = y1_d[1];
    wire signed [7:-4] x3_ext = x3_d[1];
    wire signed [7:-4] y3_ext = y3_d[1];
    wire signed [7:-4] x4_ext = x4_d[2];
    wire signed [7:-4] y4_ext = y4_d[2];

    // =========================================================================
    // Angle wrap / quadrant reduction for CORDIC input range
    //   CORDIC stage is designed for angles within ±π/2. For larger angles,
    //   reduce by π and invert the input vector: rotate(x,y,A) = rotate(-x,-y,A±π).
    // =========================================================================
    localparam signed [0:-13] HALF_PI_PHI = 14'sd4046;
    wire signed [0:-13] phi_ch1    = -phi_r;
    wire signed [0:-13] phi_ch3    =  phi_r;
    wire signed [0:-13] phi_ch4    =  dphi_r;

    wire                phi_ch1_large = (phi_ch1 > HALF_PI_PHI) | (phi_ch1 < -HALF_PI_PHI);
    wire                phi_ch3_large = (phi_ch3 > HALF_PI_PHI) | (phi_ch3 < -HALF_PI_PHI);
    wire                phi_ch4_large = (phi_ch4 > HALF_PI_PHI) | (phi_ch4 < -HALF_PI_PHI);

    wire signed [0:-13] phi_ch1_wrapped = phi_ch1_large ? (phi_ch1 + (phi_ch1 > 0 ? -PI_PHI : PI_PHI)) : phi_ch1;
    wire signed [0:-13] phi_ch3_wrapped = phi_ch3_large ? (phi_ch3 + (phi_ch3 > 0 ? -PI_PHI : PI_PHI)) : phi_ch3;
    wire signed [0:-13] phi_ch4_wrapped = phi_ch4_large ? (phi_ch4 + (phi_ch4 > 0 ? -PI_PHI : PI_PHI)) : phi_ch4;

    wire signed [7:-4] x1_rot = phi_ch1_large ? -x1_ext : x1_ext;
    wire signed [7:-4] y1_rot = phi_ch1_large ? -y1_ext : y1_ext;
    wire signed [7:-4] x3_rot = phi_ch3_large ? -x3_ext : x3_ext;
    wire signed [7:-4] y3_rot = phi_ch3_large ? -y3_ext : y3_ext;
    wire signed [7:-4] x4_rot = phi_ch4_large ? -x4_ext : x4_ext;
    wire signed [7:-4] y4_rot = phi_ch4_large ? -y4_ext : y4_ext;

    // =========================================================================
    // atan sharing
    //   cordic1_s1/s2 read the atan ROM (OWN_ATAN=1).
    //   cordic2_s1/s2 receive the value via a 1-cycle register because cordic2
    //   is always 1 cycle behind cordic1 in iteration count -- at any given
    //   clock, cordic2 needs the atan value that cordic1 used one cycle earlier.
    // =========================================================================
    wire  signed [0:-13] atan_s1_w, atan_s2_w;
    reg   signed [0:-13] atan_s1_r, atan_s2_r;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin atan_s1_r <= 0; atan_s2_r <= 0; end
        else     begin atan_s1_r <= atan_s1_w; atan_s2_r <= atan_s2_w; end
    end

    // =========================================================================
    // CORDIC stage instantiations
    //
    // cordic_stage #(.ITER_START(N), .OWN_ATAN(B)):
    //   - Runs 5 iterations beginning at iteration index N (0=s1, 5=s2)
    //   - OWN_ATAN=1: computes atan internally from ROM; drives atan_out each cycle
    //   - OWN_ATAN=0: uses atan_in supplied externally; atan_out can be left open
    //   - Channels a and b are processed in parallel sharing the iteration counter
    //     and atan value.  Tie xb/yb/angb to 0 for single-channel use (cordic2).
    //   - start: load inputs and begin iteration sequence
    //   - done:  asserted after 5 iterations; outputs hold the result
    //
    // Angle format: S0.13 (same unit as phi: pi/8092)
    // Data  format: S7.4   ([7:-4], 12-bit, 2 integer guard bits above S5.4 input)
    // =========================================================================

    // --- s1 intermediate state (output of s1 feeds s2 start) ---
    wire signed [7:-4]  c1_xa_mid, c1_ya_mid;   // cordic1 ch1 (channel a)  S7.4
    wire signed [7:-4]  c1_xb_mid, c1_yb_mid;   // cordic1 ch3 (channel b)  S7.4
    wire signed [0:-13] c1_anga_mid, c1_angb_mid;
    wire signed [7:-4]  c2_xa_mid, c2_ya_mid;   // cordic2 ch4              S7.4
    wire signed [0:-13] c2_anga_mid;

    // --- cordic1_s1: ch1 (angle = -phi_r), ch3 (angle = +phi_r), iter 0-4 ---
    cordic_stage #(.ITER_START(0), .OWN_ATAN(1)) u_c1s1 (
        .clk(clk), .rst_n(rst_n), .start(cordic1_s1_start),
        .xa_in(x1_rot),  .ya_in(y1_rot),  .anga_in(phi_ch1_wrapped),  // ch1 rotates by -phi with range reduction
        .xb_in(x3_rot),  .yb_in(y3_rot),  .angb_in(phi_ch3_wrapped),  // ch3 rotates by +phi with range reduction
        .atan_in(14'sd0),           .atan_out(atan_s1_w),
        .xa_out(c1_xa_mid),         .ya_out(c1_ya_mid),    .anga_out(c1_anga_mid),
        .xb_out(c1_xb_mid),         .yb_out(c1_yb_mid),    .angb_out(c1_angb_mid),
        .done()
    );

    // --- cordic2_s1: ch4 (angle = 2*phi = dphi_r), iter 0-4, atan from cordic1_s1 ---
    cordic_stage #(.ITER_START(0), .OWN_ATAN(0)) u_c2s1 (
        .clk(clk), .rst_n(rst_n), .start(cordic2_s1_start),
        .xa_in(x4_rot),  .ya_in(y4_rot),  .anga_in(phi_ch4_wrapped),
        .xb_in(12'sd0),  .yb_in(12'sd0),  .angb_in(14'sd0),
        .atan_in(atan_s1_r),        .atan_out(),
        .xa_out(c2_xa_mid),         .ya_out(c2_ya_mid),    .anga_out(c2_anga_mid),
        .xb_out(),                  .yb_out(),             .angb_out(),
        .done()
    );

    // --- cordic1_s2: ch1 and ch3, iter 5-9 ---
    wire signed [7:-4]  c1_xa_out, c1_ya_out;   // S7.4
    wire signed [7:-4]  c1_xb_out, c1_yb_out;   // S7.4
    cordic_stage #(.ITER_START(5), .OWN_ATAN(1)) u_c1s2 (
        .clk(clk), .rst_n(rst_n), .start(cordic1_s2_start),
        .xa_in(c1_xa_mid), .ya_in(c1_ya_mid), .anga_in(c1_anga_mid),
        .xb_in(c1_xb_mid), .yb_in(c1_yb_mid), .angb_in(c1_angb_mid),
        .atan_in(14'sd0),           .atan_out(atan_s2_w),
        .xa_out(c1_xa_out),         .ya_out(c1_ya_out),    .anga_out(),
        .xb_out(c1_xb_out),         .yb_out(c1_yb_out),    .angb_out(),
        .done()
    );

    // --- cordic2_s2: ch4, iter 5-9, atan from cordic1_s2 ---
    wire signed [7:-4]  c2_xa_out, c2_ya_out;   // S7.4
    cordic_stage #(.ITER_START(5), .OWN_ATAN(0)) u_c2s2 (
        .clk(clk), .rst_n(rst_n), .start(cordic2_s2_start),
        .xa_in(c2_xa_mid), .ya_in(c2_ya_mid), .anga_in(c2_anga_mid),
        .xb_in(12'sd0),    .yb_in(12'sd0),    .angb_in(14'sd0),
        .atan_in(atan_s2_r),        .atan_out(),
        .xa_out(c2_xa_out),         .ya_out(c2_ya_out),    .anga_out(),
        .xb_out(),                  .yb_out(),             .angb_out(),
        .done()
    );

    // =========================================================================
    // ch2 passthrough delay (zero rotation; output at slot cycle 13 = 13 regs)
    // =========================================================================
    reg signed [5:-4] x2_sr [0:12], y2_sr [0:12];
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            for (k = 0; k < 13; k = k+1) begin x2_sr[k]<=0; y2_sr[k]<=0; end
        end else begin
            x2_sr[0] <= i_x2; y2_sr[0] <= i_y2;
            for (k = 1; k < 13; k = k+1) begin x2_sr[k]<=x2_sr[k-1]; y2_sr[k]<=y2_sr[k-1]; end
        end
    end

    // =========================================================================
    // Theta output pipeline (12-cycle delay aligns with ch1 output at cycle 12)
    // =========================================================================
    reg signed [0:-7] theta_sr [0:11];
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            for (k = 0; k < 12; k = k+1) theta_sr[k] <= 0;
        end else begin
            theta_sr[0] <= i_theta;
            for (k = 1; k < 12; k = k+1) theta_sr[k] <= theta_sr[k-1];
        end
    end

    // =========================================================================
    // Shared CORDIC gain compensation and output hold registers
    // =========================================================================

    // 10-iteration CORDIC rotation gain is about 1.64676, so multiply by
    // 1/gain = 0.60725 before returning to the S5.4 output format.
    function signed [5:-4] cordic_gain_comp;
        input signed [7:-4] cordic_val;
        reg signed [23:0] scaled;
        begin
            scaled = cordic_val * 11'sd622; // round(0.607252935 * 2^10)
            cordic_gain_comp = scaled >>> 10;
        end
    endfunction

    reg signed [5:-4] x3_hold, y3_hold;
    reg signed [5:-4] x4_hold, y4_hold;

    wire signed [7:-4] scale_x_in = valid_sr[12] ? c1_xb_out :
                                    valid_sr[13] ? c2_xa_out :
                                                   c1_xa_out;
    wire signed [7:-4] scale_y_in = valid_sr[12] ? c1_yb_out :
                                    valid_sr[13] ? c2_ya_out :
                                                   c1_ya_out;

    wire signed [5:-4] scale_x_out = cordic_gain_comp(scale_x_in);
    wire signed [5:-4] scale_y_out = cordic_gain_comp(scale_y_in);

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            x3_hold<=0; y3_hold<=0;
            x4_hold<=0; y4_hold<=0;
        end else begin
            if (valid_sr[12]) begin         // cycle 13: scale and latch ch3 during ch2 passthrough
                x3_hold <= scale_x_out;
                y3_hold <= scale_y_out;
            end
            if (valid_sr[13]) begin         // cycle 14: scale and latch ch4 during ch3 output
                x4_hold <= scale_x_out;
                y4_hold <= scale_y_out;
            end
        end
    end

    // =========================================================================
    // Output mux (interleaved by channel)
    // =========================================================================
    assign o_valid  = valid_sr[11] | valid_sr[12] | valid_sr[13] | valid_sr[14];
    assign o_theta  = theta_sr[11];

    assign channel  = valid_sr[12] ? 2'd1 :   // ch2
                      valid_sr[13] ? 2'd2 :   // ch3
                      valid_sr[14] ? 2'd3 :   // ch4
                                     2'd0;    // ch1 (valid_sr[11])

    assign o_x = valid_sr[12] ? x2_sr[12]          :
                 valid_sr[13] ? x3_hold             :
                 valid_sr[14] ? x4_hold             :
                                scale_x_out;         // ch1: scaled live on its output cycle

    assign o_y = valid_sr[12] ? y2_sr[12]          :
                 valid_sr[13] ? y3_hold             :
                 valid_sr[14] ? y4_hold             :
                                scale_y_out;         // ch1: scaled live on its output cycle

endmodule
