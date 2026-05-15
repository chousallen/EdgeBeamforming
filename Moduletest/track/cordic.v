module cordic #(
    parameter  N_ITER = 10
)(
    input wire clk,
    input wire rst,
    input wire valid_in,
    input wire signed [9:0] x_in,       // s5.4 format
    input wire signed [9:0] y_in,       // s5.4 format
    output reg valid_out,
    output wire signed [9:0] phase_out    // S2.7 (range +-pi)
);

reg [3:0] iter_r, iter_next;
reg finish_r, finish_next;
reg signed [9:0]  x_r, y_r;   // x_r: s5.4, y_r: s5.4
reg signed [9:0]  x_next, y_next;
reg signed [12:0] z_r, z_next; // s2.10 format to hold angles up to +-pi
reg neg_x_r;        // 1 = original x_in was negative
reg neg_y_orig_r;   // sign of original y_in when neg_x_r=1

assign phase_out = z_r[12:3]; // Take the top 10 bits of z_r to get s2.7 format
assign valid_out = finish_r;

// atan_table: Q0.10, Multiply by 2^10 to maintain precision in s2.7 format
function [9:0] atan_table;
    input [3:0] i;
    begin
        case (i)
            4'd0:  atan_table = 10'd804;    // atan(2^ 0) = pi/4
            4'd1:  atan_table = 10'd474;    // atan(2^-1) = atan(0.5)
            4'd2:  atan_table = 10'd250;    // atan(2^-2) = atan(0.25)
            4'd3:  atan_table = 10'd127;    // atan(2^-3) = atan(0.125)
            4'd4:  atan_table = 10'd63;     // atan(2^-4) = atan(0.0625)
            4'd5:  atan_table = 10'd31;     // atan(2^-5) = atan(0.03125)
            4'd6:  atan_table = 10'd15;     // atan(2^-6) = atan(0.015625)
            4'd7:  atan_table = 10'd7;      // atan(2^-7) = atan(0.0078125)
            4'd8:  atan_table = 10'd3;      // atan(2^-8) = atan(0.00390625)
            4'd9:  atan_table = 10'd2;      // atan(2^-9) = atan(0.001953125)
            default: atan_table = 10'd0;
        endcase
    end
endfunction

always @(*) begin
    iter_next = iter_r + 1;
    finish_next = (iter_r == (N_ITER - 1));
end

always @(*) begin
    // Vectoring mode: drive y toward zero and accumulate phase in ang.
    if (y_r > 0) begin
        x_next = x_r + (y_r >>> iter_r);
        y_next = y_r - (x_r >>> iter_r);
        z_next = z_r + {{3{1'b0}}, atan_table(iter_r[3:0])};
    end else begin
        x_next = x_r - (y_r >>> iter_r);
        y_next = y_r + (x_r >>> iter_r);
        z_next = z_r - {{3{1'b0}}, atan_table(iter_r[3:0])};
    end
end

// PI in s2.7 format for pre-rotation correction in vectoring mode
localparam signed [12:0] PI_SCALE = 13'sd3216;

always @(posedge clk or posedge rst) begin
    if(rst) begin
        iter_r     <= 0;
        x_r        <= 0;
        y_r        <= 0;
        z_r        <= 0;
        finish_r   <= 0;
        neg_x_r    <= 0;
        neg_y_orig_r <= 0;
    end else if(valid_in) begin
        iter_r <= 0;
        // Pre-rotate by pi if x_in < 0 so CORDIC sees positive x
        if (x_in[9]) begin
            x_r          <= -{x_in};    // negate x_in to maintain angle (instead of adding pi, we can just flip the vector)
            y_r          <= -{y_in};    // negate y_in to maintain angle (instead of adding pi, we can just flip the vector)
            z_r          <= (y_in[9]) ? -{PI_SCALE} : {PI_SCALE};
            neg_x_r      <= 1'b1;
            neg_y_orig_r <= y_in[9]; // save sign of original y_in
        end else begin
            x_r          <= x_in;
            y_r          <= y_in;
            z_r          <= 13'sd0;
            neg_x_r      <= 1'b0;
            neg_y_orig_r <= 1'b0;
        end
        finish_r <= 0;
    end else if(!finish_r) begin
        iter_r <= iter_next;
        x_r    <= x_next;
        y_r    <= y_next;
        z_r    <= z_next;
        finish_r <= finish_next;
    end
end


endmodule