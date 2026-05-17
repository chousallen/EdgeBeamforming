// compute phi = pi*sin(theta) by LUT, where theta is between [-pi/3, pi/3]

module phi_table(
    input signed [0:-7] theta, // S0.7 target angle, unit: pi/128, range: [-pi/3, pi/3] -> [-43, 43]
    output signed [0:-13] phi // S0.13 phi, unit: pi/8092
);

    // Reindex to natural [msb:0] ordering for arithmetic
    wire [7:0]  theta_nat = theta;          // theta[0](MSB) -> theta_nat[7](MSB)
    wire        sign      = theta_nat[7];   // sign bit
    wire [7:0]  neg_theta = -theta_nat;
    wire [5:0]  abs_theta = sign ? neg_theta[5:0] : theta_nat[5:0]; // magnitude, max 43 < 64

    reg [13:0] lut_val;

    always @(*) begin
        case (abs_theta)
            6'd1:  lut_val = 14'd199;
            6'd2:  lut_val = 14'd397;
            6'd3:  lut_val = 14'd595;
            6'd4:  lut_val = 14'd793;
            6'd5:  lut_val = 14'd991;
            6'd6:  lut_val = 14'd1187;
            6'd7:  lut_val = 14'd1383;
            6'd8:  lut_val = 14'd1579;
            6'd9:  lut_val = 14'd1773;
            6'd10: lut_val = 14'd1966;
            6'd11: lut_val = 14'd2158;
            6'd12: lut_val = 14'd2349;
            6'd13: lut_val = 14'd2538;
            6'd14: lut_val = 14'd2726;
            6'd15: lut_val = 14'd2912;
            6'd16: lut_val = 14'd3097;
            6'd17: lut_val = 14'd3279;
            6'd18: lut_val = 14'd3460;
            6'd19: lut_val = 14'd3638;
            6'd20: lut_val = 14'd3815;
            6'd21: lut_val = 14'd3989;
            6'd22: lut_val = 14'd4160;
            6'd23: lut_val = 14'd4329;
            6'd24: lut_val = 14'd4496;
            6'd25: lut_val = 14'd4659;
            6'd26: lut_val = 14'd4820;
            6'd27: lut_val = 14'd4978;
            6'd28: lut_val = 14'd5134;
            6'd29: lut_val = 14'd5285;
            6'd30: lut_val = 14'd5434;
            6'd31: lut_val = 14'd5580;
            6'd32: lut_val = 14'd5722;
            6'd33: lut_val = 14'd5861;
            6'd34: lut_val = 14'd5996;
            6'd35: lut_val = 14'd6127;
            6'd36: lut_val = 14'd6255;
            6'd37: lut_val = 14'd6379;
            6'd38: lut_val = 14'd6500;
            6'd39: lut_val = 14'd6616;
            6'd40: lut_val = 14'd6728;
            6'd41: lut_val = 14'd6837;
            6'd42: lut_val = 14'd6941;
            6'd43: lut_val = 14'd7041;
            default: lut_val = 14'd0; // abs_theta == 0 or out of range
        endcase
    end

    // Negate for negative theta (sin is an odd function)
    wire [13:0] phi_nat = sign ? (-lut_val) : lut_val;
    assign phi = phi_nat; // positional: phi_nat[13](MSB)->phi[0], phi_nat[0](LSB)->phi[-13]

endmodule
