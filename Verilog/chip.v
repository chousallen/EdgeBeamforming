// module for top-level chip that integrates the track and cordic modules
module chip #(
    parameter IW = 10, // Input width for I and Q
    parameter OW = 10, // Output width for I, Q and angle
    parameter TW = 8   // Input width for theta
)(
    input wire clk,
    input wire rst_n,
    input wire valid_in,
    input wire signed [IW-1:0] data_in,
    input wire signed [IW-1:0] q_in,
    output wire valid_out,
    output wire [OW-1:0] data_out
);

// Data input wrapper for steering module
reg [2:0] data_count;
reg [IW-1:0] x1_q_r, x1_i_r, x2_q_r, x2_i_r, x3_q_r, x3_i_r, x4_q_r, x4_i_r;
reg [IW-1:0] x1_q_next, x1_i_next, x2_q_next, x2_i_next, x3_q_next, x3_i_next, x4_q_next, x4_i_next;
reg valid_data_r, valid_data_next;
reg valid_steer_in_r, valid_steer_in_next;

always @(*) begin
    // Default to hold current values
    x1_q_next = x1_q_r;
    x1_i_next = x1_i_r;
    x2_q_next = x2_q_r;
    x2_i_next = x2_i_r;
    x3_q_next = x3_q_r;
    x3_i_next = x3_i_r;
    x4_q_next = x4_q_r;
    x4_i_next = x4_i_r;
    valid_data_next = valid_data_r;
    valid_steer_in_next = valid_steer_in_r;
    // Data valid control logic and data counter
    if (valid_in) begin
        data_count = 0;
        valid_data_next = 1'b1;
    end else if (valid_data_r) begin
        data_count = data_count + 1;
        if (data_count == 7) begin
            valid_data_next = 1'b0; // Clear valid after 4 cycles of data
            valid_steer_in_next = 1'b1; // Set valid for cordic input after all data is loaded
        end
    end else if (valid_steer_in_r) begin
        valid_steer_in_next = 1'b0; // Clear cordic valid after one cycle
    end

    // Data assignment based on count
    if (valid_data_r || valid_in) begin
        case (data_count)
            3'd0: x1_q_next = data_in; // First cycle: x1_q
            3'd1: x1_i_next = data_in; // Second cycle: x1_i
            3'd2: x2_q_next = data_in; // Third cycle: x2_q
            3'd3: x2_i_next = data_in; // Fourth cycle: x2_i
            3'd4: x3_q_next = data_in; // Fifth cycle: x3_q
            3'd5: x3_i_next = data_in; // Sixth cycle: x3_i
            3'd6: x4_q_next = data_in; // Seventh cycle: x4_q
            3'd7: x4_i_next = data_in; // Eighth cycle: x4_i
        endcase
    end
end

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        x1_q_r <= 0; x1_i_r <= 0; x2_q_r <= 0; x2_i_r <= 0;
        x3_q_r <= 0; x3_i_r <= 0; x4_q_r <= 0; x4_i_r <= 0;
        valid_data_r <= 1'b0;
        valid_steer_in_r <= 1'b0;
    end else begin
        x1_q_r <= x1_q_next; x1_i_r <= x1_i_next; 
        x2_q_r <= x2_q_next; x2_i_r <= x2_i_next;
        x3_q_r <= x3_q_next; x3_i_r <= x3_i_next; 
        x4_q_r <= x4_q_next; x4_i_r <= x4_i_next;
        valid_data_r <= valid_data_next;
        valid_steer_in_r <= valid_steer_in_next;
    end
end

// GLobal control module
reg mode_r, mode_next;  // 0 for search, 1 for track
reg signed [TW-1:0] target_degree_r, target_degree_next;     // Target current degree register
reg signed [TW-1:0] search_degree_r, search_degree_next;    // Search degree counter
reg signed [TW-1:0] steer_theta_r, steer_theta_next;        // Steering theta for steering module
wire valid_comparison_out;
wire signed [OW-1:0] Comparison_Q_out;
wire signed [OW-1:0] Comparison_I_out;
wire [TW-1:0] comparison_theta_out;
wire valid_track_out;
wire signed [OW-1:0] track_phase_out;

always @(*) begin
    // Default to hold current values
    mode_next = mode_r;
    target_degree_next = target_degree_r;
    search_degree_next = search_degree_r;
    steer_theta_next = steer_theta_r;

    steer_theta_next = (mode_r == 1'b0) ? search_degree_r : target_degree_r; // Steering theta is search degree in search mode, target degree in track mode

    if (mode_r == 1'b0) begin
        if (valid_comparison_out) begin
            target_degree_next = comparison_theta_out; // Update target degree from comparison output in search mode
        end
        if (valid_in) begin
            search_degree_next = search_degree_r + 8'sd1;   // Increment search degree in search mode on valid input
            if (search_degree_next > 8'sd43) begin
                search_degree_next = -8'sd44; // Wrap around search degree after one full sweep
                mode_next = 1'b1; // Switch to track mode after one full sweep
            end
        end
    end else if (mode_r == 1'b1 && valid_track_out) begin
        target_degree_next = track_phase_out; // Update target degree from track output in track mode
    end
end

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        mode_r <= 1'b0; // Start in search mode
        target_degree_r <= 0;
        search_degree_r <= -8'sd44; // Start search degree at -44 to begin sweep from -44 to +43
        steer_theta_r <= -8'sd44; // Initialize steering theta to match initial search degree
    end else begin
        mode_r <= mode_next;
        target_degree_r <= target_degree_next;
        search_degree_r <= search_degree_next;
        steer_theta_r <= steer_theta_next;
    end
end

wire valid_steer_out;
wire signed [TW-1:0] steer_phase_out;
wire [1:0] steer_channel_out;
wire signed [OW-1:0] steer_x_out, steer_y_out;

steer steer_inst (
    .clk(clk),
    .rst_n(rst_n),
    .i_valid(valid_steer_in_r),
    .i_theta(steer_theta_r),
    .i_x1(x1_q_r), .i_y1(x1_i_r),
    .i_x2(x2_q_r), .i_y2(x2_i_r),
    .i_x3(x3_q_r), .i_y3(x3_i_r),
    .i_x4(x4_q_r), .i_y4(x4_i_r),
    .o_valid(valid_steer_out),
    .o_theta(steer_phase_out),
    .channel(steer_channel_out),
    .o_x(steer_x_out),
    .o_y(steer_y_out)
);

comparison comparison_inst (
    .clk(clk),
    .reset_n_i(rst_n),
    .valid_in(valid_steer_out),
    .Q_in(steer_x_out),
    .I_in(steer_y_out),
    .theta_in(steer_phase_out),
    .channel_count(steer_channel_out),
    .theta_out(comparison_theta_out),
    .Q_out(Comparison_Q_out),
    .I_out(Comparison_I_out),
    .valid_out(valid_comparison_out)
);

reg angle_valid_in_r, angle_valid_in_next;
reg signed [TW-1:0] cur_angle_r, cur_angle_next;

always @(*) begin
    if (valid_steer_out && mode_r == 1'b1 && steer_channel_out == 2'b0) begin
        angle_valid_in_next = 1'b1;
        cur_angle_next = steer_phase_out; // Use steer phase output as current angle input to track module in track mode
    end else begin
        angle_valid_in_next = 1'b0;
        cur_angle_next = cur_angle_r; // Hold current angle when not valid
    end
end

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        angle_valid_in_r <= 1'b0;
        cur_angle_r <= 0;
    end else begin
        angle_valid_in_r <= angle_valid_in_next;
        cur_angle_r <= cur_angle_next;
    end
end

track track_inst (
    .clk(clk),
    .rst_n(rst_n),
    .valid_in(valid_steer_out),
    .phase_in(steer_phase_out),
    .channel_in(steer_channel_out),
    .q_in(steer_x_out),
    .i_in(steer_y_out),
    .angle_in(cur_angle_r),
    .angle_valid_in(angle_valid_in_r),
    .valid_out(valid_track_out),
    .angle_out(track_phase_out)
);

reg out_valid_r, out_valid_next;
reg [OW-1:0] out_data_r, out_data_next;
reg [OW-1:0] q_out_r, q_out_next, i_out_r, i_out_next;
reg [TW-1:0] theta_out_r, theta_out_next;
reg [1:0] output_count_r, output_count_next;

always @(*) begin
    out_valid_next = 1'b0;
    out_data_next = out_data_r;
    q_out_next = q_out_r;
    i_out_next = i_out_r;
    theta_out_next = theta_out_r;
    output_count_next = output_count_r;

    // Collect Q/I from comparison output in track mode
    if (mode_r == 1'b1 && valid_comparison_out) begin
        q_out_next = Comparison_Q_out;
        i_out_next = Comparison_I_out;
    end

    // Collect latest tracked phase and start 3-cycle output sequence
    if (valid_track_out) begin
        theta_out_next = track_phase_out;
        out_valid_next = 1'b1; // one-cycle pulse when phase is collected
        output_count_next = 2'd1;
        out_data_next = {{(OW-TW){track_phase_out[TW-1]}}, track_phase_out};
    end else begin
        case (output_count_r)
            2'd1: begin
                out_data_next = q_out_r;
                output_count_next = 2'd2;
            end
            2'd2: begin
                out_data_next = i_out_r;
                output_count_next = 2'd3;
            end
            2'd3: begin
                output_count_next = 2'd0;
            end
            default: begin
                output_count_next = 2'd0;
            end
        endcase
    end
end

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        out_valid_r <= 1'b0;
        out_data_r <= {OW{1'b0}};
        q_out_r <= {OW{1'b0}};
        i_out_r <= {OW{1'b0}};
        theta_out_r <= {TW{1'b0}};
        output_count_r <= 2'd0;
    end else begin
        out_valid_r <= out_valid_next;
        out_data_r <= out_data_next;
        q_out_r <= q_out_next;
        i_out_r <= i_out_next;
        theta_out_r <= theta_out_next;
        output_count_r <= output_count_next;
    end
end

assign valid_out = out_valid_r;
assign data_out = out_data_r;



endmodule