module cordic_vector #(
    parameter  N_ITER = 7,
    parameter  IW = 10, // Input width (s6.3 format)
    parameter  OW = 8  // Output width (s7.0 format)
)(
    input wire clk,
    input wire rst_n,
    input wire valid_in,
    input wire signed [IW-1:0] x1_in,       // s6.3 format
    input wire signed [IW-1:0] y1_in,       // s6.3 format
    input wire signed [IW-1:0] x2_in,       // s6.3 format
    input wire signed [IW-1:0] y2_in,       // s6.3 format
    output reg valid_out,
    output wire signed [OW-1:0] phase_out1,    // s7.0 (range +-pi)
    output wire signed [OW-1:0] phase_out2     // s7.0 (range +-pi)
);

reg [2:0] iter_r, iter_next;
reg valid_out_next;
reg signed [IW+1:0]  x1_r, y1_r, x2_r, y2_r;   // x_r: s8.3, y_r: s8.3
reg signed [IW+1:0]  x1_next, y1_next, x2_next, y2_next;
reg signed [OW-1:0] z1_r, z2_r; // s7.0 format to hold angles up to +-pi
reg signed [OW-1:0] z1_next, z2_next; // s7.0 format to hold angles up to +-pi
reg neg_x1_r, neg_x2_r;        // 1 = original x_in was negative
reg neg_y1_orig_r, neg_y2_orig_r;   // sign of original y_in when neg_x_r=1
reg idel_r, idel_next; // 1 = idle (waiting for valid_in)

assign phase_out1 = z1_r[OW-1:0]; // Take the top 8 bits of z_r to get s7.0 format
assign phase_out2 = z2_r[OW-1:0]; // Take the top 8 bits of z2_r to get s7.0 format

// atan_table: S7.0 to maintain precision in s2.7 format
function [7:0] atan_table;
    input [2:0] i;
    begin
        case (i)
            4'd0:  atan_table = 8'sd32;    // atan(2^ 0) = pi/4
            4'd1:  atan_table = 8'sd19;    // atan(2^-1) = atan(0.5)
            4'd2:  atan_table = 8'sd10;    // atan(2^-2) = atan(0.25)
            4'd3:  atan_table = 8'sd5;    // atan(2^-3) = atan(0.125)
            4'd4:  atan_table = 8'sd3;     // atan(2^-4) = atan(0.0625)
            4'd5:  atan_table = 8'sd1;     // atan(2^-5) = atan(0.03125)
            4'd6:  atan_table = 8'sd1;     // atan(2^-6) = atan(0.015625)
            4'd7:  atan_table = 8'sd0;      
            default: atan_table = 8'sd0;
        endcase
    end
endfunction

always @(*) begin
    if(idel_r) begin
        iter_next = 0;
        valid_out_next = 0;
    end else begin
        iter_next = iter_r + 1;
        valid_out_next = (iter_r == (N_ITER - 1));
    end
    if (valid_in) begin
        idel_next = 0;
    end else if (valid_out_next) begin
        idel_next = 1;
    end else begin
        idel_next = idel_r;
    end
end

always @(*) begin
    // Vectoring mode: drive y toward zero and accumulate phase in ang.
    if (y1_r > 0) begin
        x1_next = x1_r + (y1_r >>> iter_r);
        y1_next = y1_r - (x1_r >>> iter_r);
        z1_next = z1_r + atan_table(iter_r[2:0]);
    end else begin
        x1_next = x1_r - (y1_r >>> iter_r);
        y1_next = y1_r + (x1_r >>> iter_r);
        z1_next = z1_r - atan_table(iter_r[2:0]);
    end
    if (y2_r > 0) begin
        x2_next = x2_r + (y2_r >>> iter_r);
        y2_next = y2_r - (x2_r >>> iter_r);
        z2_next = z2_r + atan_table(iter_r[2:0]);
    end else begin
        x2_next = x2_r - (y2_r >>> iter_r);
        y2_next = y2_r + (x2_r >>> iter_r);
        z2_next = z2_r - atan_table(iter_r[2:0]);
    end
end

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        // Reset logic
        iter_r     <= 0;
        x1_r       <= 0;
        y1_r       <= 0;
        z1_r       <= 0;
        x2_r       <= 0;
        y2_r       <= 0;
        z2_r       <= 0;
        valid_out  <= 0;
        neg_x1_r   <= 0;
        neg_x2_r   <= 0;
        neg_y1_orig_r <= 0;
        neg_y2_orig_r <= 0;
        idel_r     <= 1; // Start in idle state
    end else begin
        if (valid_in) begin
            // Initialization logic when valid_in is high
            iter_r <= 0;
            if (x1_in[9]) begin
                x1_r          <= -{{2{x1_in[9]}}, x1_in};
                y1_r          <= -{{2{y1_in[9]}}, y1_in};
                z1_r          <= (y1_in[9]) ? -8'sd128 : 8'sd127;
                neg_x1_r      <= 1'b1;
                neg_y1_orig_r <= y1_in[9];
            end else begin
                x1_r          <= {{2{x1_in[9]}}, x1_in};
                y1_r          <= {{2{y1_in[9]}}, y1_in};
                z1_r          <= 8'sd0;
                neg_x1_r      <= 1'b0;
                neg_y1_orig_r <= 1'b0;
            end
            if (x2_in[9]) begin
                x2_r          <= -{{2{x2_in[9]}}, x2_in};
                y2_r          <= -{{2{y2_in[9]}}, y2_in};
                z2_r          <= (y2_in[9]) ? -8'sd128 : 8'sd127;
                neg_x2_r      <= 1'b1;
                neg_y2_orig_r <= y2_in[9];
            end else begin
                x2_r          <= {{2{x2_in[9]}}, x2_in};
                y2_r          <= {{2{y2_in[9]}}, y2_in};
                z2_r          <= 8'sd0;
                neg_x2_r      <= 1'b0;
                neg_y2_orig_r <= 1'b0;
            end
            valid_out <= 0;
        end else if (!idel_r) begin
            // Iteration logic when not in idle state
            iter_r <= iter_next;
            x1_r   <= x1_next;
            y1_r   <= y1_next;
            z1_r   <= z1_next;
            x2_r   <= x2_next;
            y2_r   <= y2_next;
            z2_r   <= z2_next;
        end
        idel_r <= idel_next;
        valid_out <= valid_out_next;
    end
end


endmodule
