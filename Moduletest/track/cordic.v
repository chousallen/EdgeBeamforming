module cordic #(
    parameter  N_ITER = 10
)(
    input wire clk,
    input wire rst,
    input wire start,
    input wire mode, // 0 for rotation, 1 for vectoring
    input wire signed [15:0] angle,
    input wire signed [7:0] x_in,
    input wire signed [7:0] y_in,
    output reg finish,
    output wire signed [N_ITER+1:0] cos_out, // S1.N_ITER (one guard bit)
    output wire signed [N_ITER+1:0] sin_out, // S1.N_ITER
    output wire signed [17:0] phase_out    // S2.15 (range +-pi, 32768=pi/2)
);

reg [4:0] iter_r;
reg [4:0] iter_next;
reg finish_next;
reg signed [N_ITER+1:0] x_r, y_r;    // one guard bit to prevent intermediate overflow
reg signed [17:0] ang_r;             // S2.15: holds angles up to +-pi
reg signed [N_ITER+1:0] x_next, y_next;
reg signed [17:0] ang_next;
reg neg_x_r;        // 1 = original x_in was negative (vectoring pre-rotation)
reg neg_y_orig_r;   // sign of original y_in when neg_x_r=1

assign cos_out = x_r;
assign sin_out = y_r;
assign phase_out = ang_r;

// atan(2^-i) precomputed in S0.15 (2^15 represents pi/2)
function [15:0] atan_table;
    input [3:0] i;
    begin
        case (i)
            4'd0:  atan_table = 16'sd16384; // atan(2^ 0) = pi/4
            4'd1:  atan_table = 16'sd9672;  // atan(2^-1)
            4'd2:  atan_table = 16'sd5111;  // atan(2^-2)
            4'd3:  atan_table = 16'sd2595;  // atan(2^-3)
            4'd4:  atan_table = 16'sd1302;  // atan(2^-4)
            4'd5:  atan_table = 16'sd651;   // atan(2^-5)
            4'd6:  atan_table = 16'sd326;   // atan(2^-6)
            4'd7:  atan_table = 16'sd163;   // atan(2^-7)
            4'd8:  atan_table = 16'sd81;    // atan(2^-8)
            4'd9:  atan_table = 16'sd41;    // atan(2^-9)
            4'd10: atan_table = 16'sd20;    // atan(2^-10)
            4'd11: atan_table = 16'sd10;    // atan(2^-11)
            4'd12: atan_table = 16'sd5;     // atan(2^-12)
            4'd13: atan_table = 16'sd3;     // atan(2^-13)
            4'd14: atan_table = 16'sd1;     // atan(2^-14)
            default: atan_table = 16'sd0;
        endcase
    end
endfunction

always @(*) begin
    iter_next = iter_r + 1;
    finish_next = (iter_r == (N_ITER - 1));
end

always @(*) begin
    if (mode == 1'b0) begin
        // Rotation mode: drive residual angle toward zero.
        if (ang_r > 0) begin
            x_next = x_r - (y_r >>> iter_r);
            y_next = y_r + (x_r >>> iter_r);
            ang_next = ang_r - {2'b0, atan_table(iter_r[3:0])};
        end else begin
            x_next = x_r + (y_r >>> iter_r);
            y_next = y_r - (x_r >>> iter_r);
            ang_next = ang_r + {2'b0, atan_table(iter_r[3:0])};
        end
    end else begin
        // Vectoring mode: drive y toward zero and accumulate phase in ang.
        if (y_r > 0) begin
            x_next = x_r + (y_r >>> iter_r);
            y_next = y_r - (x_r >>> iter_r);
            ang_next = ang_r + {2'b0, atan_table(iter_r[3:0])};
        end else begin
            x_next = x_r - (y_r >>> iter_r);
            y_next = y_r + (x_r >>> iter_r);
            ang_next = ang_r - {2'b0, atan_table(iter_r[3:0])};
        end
    end
end

// K ~= 0.607252935 in Q0.15, scaled to fit the (N_ITER+2)-bit registers
localparam [15:0] K_Q15  = 16'd19900;
localparam [N_ITER+1:0] K_INIT = K_Q15 >> (15 - N_ITER);
// PI in the same angle scale (32768 = pi/2), so pi = 65536
localparam signed [17:0] PI_SCALE = 18'sd65536;

always @(posedge clk, posedge rst) begin
    if(rst) begin
        iter_r     <= 0;
        x_r        <= 0;
        y_r        <= 0;
        ang_r      <= 0;
        finish     <= 0;
        neg_x_r    <= 0;
        neg_y_orig_r <= 0;
    end else if(start) begin
        iter_r <= 0;
        if(mode == 1'b0) begin // rotation mode
            x_r    <= K_INIT;
            y_r    <= 0;
            ang_r  <= {{2{angle[15]}}, angle}; // sign-extend S0.15 -> S2.15
            finish <= 0;
            neg_x_r    <= 1'b0;
            neg_y_orig_r <= 1'b0;
        end else begin // vectoring mode
            // Pre-rotate by pi if x_in < 0 so CORDIC sees positive x
            if (x_in[7]) begin
                x_r          <= -{{4{x_in[7]}}, x_in}; // negate, sign-extend to N_ITER+2
                y_r          <= -{{4{y_in[7]}}, y_in};
                neg_x_r      <= 1'b1;
                neg_y_orig_r <= y_in[7]; // save sign of original y_in
            end else begin
                x_r          <= {{4{x_in[7]}}, x_in};
                y_r          <= {{4{y_in[7]}}, y_in};
                neg_x_r      <= 1'b0;
                neg_y_orig_r <= 1'b0;
            end
            ang_r  <= 18'sd0;
            finish <= 0;
        end
    end else if(!finish) begin
        iter_r <= iter_next;
        x_r    <= x_next;
        y_r    <= y_next;
        // On last iteration apply +/-pi correction for negative-x pre-rotation
        if (finish_next && neg_x_r)
            ang_r <= neg_y_orig_r ? (ang_next - PI_SCALE) : (ang_next + PI_SCALE);
        else
            ang_r <= ang_next;
        finish <= finish_next;
    end
end

endmodule
