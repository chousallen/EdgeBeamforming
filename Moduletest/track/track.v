module track #(
    parameter N_ITER = 10,
    parameter IW = 10, // Input width for CORDIC (s5.4 format)
    parameter PW = 8, // Input width for phase  (s7.0 format)
    parameter OW = 8  // Output width for CORDIC (s7.0 format)
)(
    input wire clk,
    input wire rst_n,
    input wire valid_in,
    input wire [1:0]    channel_in;
    input wire signed [IW-1:0] i_in, // s5.4 format
    input wire signed [IW-1:0] q_in, // s5.4 format
    input wire signed [PW-1:0] phase_in, // s7.0 format
    output reg valid_out,
    output reg [OW-1:0] angle_out // output phase index (0 to 60 for -60 to 60 degrees)
);

reg signed [IW:0] L_acc_q_r, L_acc_i_r, R_acc_q_r, R_acc_i_r; // s6.4 format for accumulation
reg signed [IW:0] L_acc_q_next, L_acc_i_next, R_acc_q_next, R_acc_i_next;
reg [1:0] channel_r, channel_next;
reg signed [PW-1:0] L_phase_r, R_phase_r; // s7.0 format for phase
reg signed [PW-1:0] L_phase_next, R_phase_next; // s7.0 format for phase
reg signed [PW  :0] phase_diff_r, phase_diff_next; // s8.0 format for phase difference (to hold values up to +-180 degrees)
reg valid_acc_r, valid_acc_next;
reg valid_out_r, valid_out_next;
reg phase_out_r, phase_out_next;
wire signed [IW-1:0] cordic_x1_in, cordic_y1_in, cordic_x2_in, cordic_y2_in;
wire signed [PW-1:0] cordic_phase_out1, cordic_phase_out2;
wire cordic_valid_out;


// Control Signal Logic
always @(*) begin
    channel_next = (valid_in) ? channel_in : channel_r;
    valid_acc_next = (channel_in == 2'b11 && valid_in) ? 1'b1 : 1'b0;
end

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        channel_r <= 2'b00;
        valid_acc_r <= 1'b0;
    end else begin
        channel_r <= channel_next;
        valid_acc_r <= valid_acc_next;
    end
end

// Accumulation Logic
always @(*) begin
    // Default to hold current values
    L_acc_q_next = L_acc_q_r;
    L_acc_i_next = L_acc_i_r;
    R_acc_q_next = R_acc_q_r;
    R_acc_i_next = R_acc_i_r;

    if (valid_in) begin
        case (channel_in)
            2'b00: begin // Left channel I
                L_acc_i_next = {{i_in[IW-1]}, i_in};
                L_acc_q_next = {{q_in[IW-1]}, q_in};
            end
            2'b01: begin // Left channel Q
                L_acc_i_next = L_acc_i_r + {{i_in[IW-1]}, i_in};
                L_acc_q_next = L_acc_q_r + {{q_in[IW-1]}, q_in};
            end
            2'b10: begin // Right channel I
                R_acc_i_next = {{i_in[IW-1]}, i_in};
                R_acc_q_next = {{q_in[IW-1]}, q_in};
            end
            2'b11: begin // Right channel Q
                R_acc_i_next = R_acc_i_r + {{i_in[IW-1]}, i_in};
                R_acc_q_next = R_acc_q_r + {{q_in[IW-1]}, q_in};
            end
        endcase
    end
end

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        L_acc_q_r <= 0;
        L_acc_i_r <= 0;
        R_acc_q_r <= 0;
        R_acc_i_r <= 0;
    end else begin
        L_acc_q_r <= L_acc_q_next;
        L_acc_i_r <= L_acc_i_next;
        R_acc_q_r <= R_acc_q_next;
        R_acc_i_r <= R_acc_i_next;
    end
end

assign cordic_x1_in = L_acc_q_r[IW:1]; // Take the upper IW bits for CORDIC input
assign cordic_y1_in = L_acc_i_r[IW:1];
assign cordic_x2_in = R_acc_q_r[IW:1];
assign cordic_y2_in = R_acc_i_r[IW:1];

// Vectroring CORDIC for Phase Calculation
cordic #(
    .IW(IW), // s6.3 format
    .OW(OW), // s2.7 format
    .N_ITER(N_ITER)
) cordic_inst (
    .clk(clk),
    .rst_n(rst_n),
    .valid_in(valid_acc_r),
    .x1_in(cordic_x1_in),
    .y1_in(cordic_y1_in),
    .x2_in(cordic_x2_in),
    .y2_in(cordic_y2_in),
    .phase_out1(cordic_phase_out1),
    .phase_out2(cordic_phase_out2),
    .valid_out(cordic_valid_out) // not used, we will use finish_r from CORDIC to set valid_out in this module
);

// Cordic Output Handling
always @(*) begin
    L_phase_next = (cordic_valid_out) ? cordic_phase_out1 : L_phase_r; // s2.7 format
    R_phase_next = (cordic_valid_out) ? cordic_phase_out2 : R_phase_r; // s2.7 format
    valid_out_next = cordic_valid_out;
end

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        L_phase_r <= 0;
        R_phase_r <= 0;
        valid_out_r <= 0;
    end else begin
        L_phase_r <= L_phase_next;
        R_phase_r <= R_phase_next;
        valid_out_r <= valid_out_next;
    end
end

localparam K = 4; // CORDIC gain for 10 iterations in s2.7 format (1/K = 0.607252935)
// Phase difference calculation (s7.0 format to hold values up to +-180 degrees)
always @(*) begin
    if (valid_out_r) begin
        phase_diff_next = L_phase_r - R_phase_r; // s7.0 format
        phase_out_next = phase_out_r + (phase_diff_next >>> K);  // Simple proportional control with gain of 1/16 (>>4) to convert phase difference to angle output
    end else begin
        phase_diff_next = phase_diff_r; // Hold previous value when not valid
        phase_out_next = phase_out_r; // Hold previous value when not valid
    end
end

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        phase_diff_r <= 0;
        phase_out_r <= 0;
    end else begin
        phase_diff_r <= phase_diff_next;
        phase_out_r <= phase_out_next;
    end
end


endmodule