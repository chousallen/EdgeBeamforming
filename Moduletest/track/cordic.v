module cordic #(
    parameter  N_ITER = 10,
    parameter  IW = 10, // Input width (s6.3 format)
    parameter  OW = 10  // Output width (s2.7 format)
)(
    input wire clk,
    input wire rst_n,
    input wire valid_in,
    input wire signed [IW-1:0] x1_in,       // s6.3 format
    input wire signed [IW-1:0] y1_in,       // s6.3 format
    input wire signed [IW-1:0] x2_in,       // s6.3 format
    input wire signed [IW-1:0] y2_in,       // s6
    output reg valid_out,
    output wire signed [OW-1:0] phase_out1,    // S2.7 (range +-pi)
    output wire signed [OW-1:0] phase_out2     // S2.7 (range +-pi)
);

reg [3:0] iter_r, iter_next;
reg finish_r, finish_next;
reg signed [IW+1:0]  x1_r, y1_r, x2_r, y2_r;   // x_r: s7.4, y_r: s7.4
reg signed [IW+1:0]  x1_next, y1_next, x2_next, y2_next;
reg signed [OW+2:0] z1_r, z2_r; // s2.10 format to hold angles up to +-pi
reg neg_x1_r, neg_x2_r;        // 1 = original x_in was negative
reg neg_y1_orig_r, neg_y2_orig_r;   // sign of original y_in when neg_x_r=1

assign phase_out1 = z1_r[OW+2:OW-7]; // Take the top 10 bits of z_r to get s2.7 format
assign phase_out2 = z2_r[OW+2:OW-7]; // Take the top 10 bits of z2_r to get s2.7 format
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
    if (y1_r > 0) begin
        x1_next = x1_r + (y1_r >>> iter_r);
        y1_next = y1_r - (x1_r >>> iter_r);
        z1_next = z1_r + {{3{1'b0}}, atan_table(iter_r[3:0])};
    end else begin
        x1_next = x1_r - (y1_r >>> iter_r);
        y1_next = y1_r + (x1_r >>> iter_r);
        z1_next = z1_r - {{3{1'b0}}, atan_table(iter_r[3:0])};
    end
    if (y2_r > 0) begin
        x2_next = x2_r + (y2_r >>> iter_r);
        y2_next = y2_r - (x2_r >>> iter_r);
        z2_next = z2_r + {{3{1'b0}}, atan_table(iter_r[3:0])};
    end else begin
        x2_next = x2_r - (y2_r >>> iter_r);
        y2_next = y2_r + (x2_r >>> iter_r);
        z2_next = z2_r - {{3{1'b0}}, atan_table(iter_r[3:0])};
    end
end

// PI in s2.7 format for pre-rotation correction in vectoring mode
localparam signed [12:0] PI_SCALE = 13'sd3216;

always @(posedge clk or posedge rst) begin
    if(rst) begin
        iter_r     <= 0;
        x1_r        <= 0;
        y1_r        <= 0;
        z1_r        <= 0;
        x2_r        <= 0;
        y2_r        <= 0;
        z2_r        <= 0;
        finish_r   <= 0;
        neg_x1_r    <= 0;
        neg_x2_r    <= 0;
        neg_y1_orig_r <= 0;
        neg_y2_orig_r <= 0;
    end else if(valid_in) begin
        iter_r <= 0;
        // Pre-rotate by pi if x_in < 0 so CORDIC sees positive x
        if (x1_in[9]) begin
            x1_r          <= -{{2{x1_in[9]}}, x1_in};    // negate x_in to maintain angle (instead of adding pi, we can just flip the vector)
            y1_r          <= -{{2{y1_in[9]}}, y1_in};    // negate y_in to maintain angle (instead of adding pi, we can just flip the vector)
            z1_r          <= (y1_in[9]) ? -{PI_SCALE} : {PI_SCALE};
            neg_x1_r      <= 1'b1;
            neg_y1_orig_r <= y1_in[9]; // save sign of original y_in
        end else begin
            x1_r          <= {{2{x1_in[9]}}, x1_in};
            y1_r          <= {{2{y1_in[9]}}, y1_in};
            z1_r          <= 13'sd0;
            neg_x1_r      <= 1'b0;
            neg_y1_orig_r <= 1'b0;
        end
        if (x2_in[9]) begin
            x2_r          <= -{{2{x2_in[9]}}, x2_in};    // negate x_in to maintain angle (instead of adding pi, we can just flip the vector)
            y2_r          <= -{{2{y2_in[9]}}, y2_in};    // negate y_in to maintain angle (instead of adding pi, we can just flip the vector)
            z2_r          <= (y2_in[9]) ? -{PI_SCALE} : {PI_SCALE};
            neg_x2_r      <= 1'b1;
            neg_y2_orig_r <= y2_in[9]; // save sign of original y_in
        end else begin
            x2_r          <= {{2{x2_in[9]}}, x2_in};
            y2_r          <= {{2{y2_in[9]}}, y2_in};
            z2_r          <= 13'sd0;
            neg_x2_r      <= 1'b0;
            neg_y2_orig_r <= 1'b0;
        end
        finish_r <= 0;
    end else if(!finish_r) begin
        iter_r <= iter_next;
        x1_r    <= x1_next;
        y1_r    <= y1_next;
        z1_r    <= z1_next;
        x2_r    <= x2_next;
        y2_r    <= y2_next;
        z2_r    <= z2_next;
        finish_r <= finish_next;
    end
end


endmodule
