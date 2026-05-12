module search (
    input wire clk,
    input wire rst_n,
    input wire start,
    input wire signed [9:0] data_in, // S5.4
    output reg finish,
    output reg signed [6:0] result // S7
);

reg  signed [ 9:0] x1_q_r, x1_i_r, x2_q_r, x2_i_r, x3_q_r, x3_i_r, x4_q_r, x4_i_r; // S5.4
wire signed [ 9:0] x1_q_next, x1_i_next, x2_q_next, x2_i_next, x3_q_next, x3_i_next, x4_q_next, x4_i_next; // S5.4
reg  [ 7:0] iter_r, scanidx_r; // Iteration and scan counters
wire [ 7:0] iter_next, scanidx_next; // Next values for iteration and scan counters
wire finish_next;
reg  running_r;
wire running_next;

function signed [8:0] sin_lut;
  input [5:0] idx;
  begin
    case (idx)
      
    endcase
  end
endfunction


// Multiplexing the inputs to the registers for buffering data
always @(*) begin

    // Default to hold the current values
    x1_q_next = x1_q_r; x1_i_next = x1_i_r;
    x2_q_next = x2_q_r; x2_i_next = x2_i_r;
    x3_q_next = x3_q_r; x3_i_next = x3_i_r;
    x4_q_next = x4_q_r; x4_i_next = x4_i_r;

    if (!running_r) begin
        iter_next = (start) ? 8'd1 : iter_r; // Reset iteration count on start
        scanidx_next = scanidx_r; // Hold scan index until running
        running_next = start; // Start running when start signal is high
    end else begin
        iter_next = (iter_r < 8'd49) ? iter_r + 1 : 0; // Increment iteration count
        scanidx_next = (iter_r == 8'd49) ? scanidx_r + 1 : scanidx_r; // Switch to next scan index after max iterations
        running_next = (iter_r < 8'd49) ? 1'b1 : 1'b0; // Keep running until max iterations
    end

    switch(iter_r) begin
        8'd1: x1_q_next = data_in[9:0]; 
        8'd2: x1_i_next = data_in[9:0]; 
        8'd3: x2_q_next = data_in[9:0]; 
        8'd4: x2_i_next = data_in[9:0];
        8'd5: x3_q_next = data_in[9:0]; 
        8'd6: x3_i_next = data_in[9:0];
        8'd7: x4_q_next = data_in[9:0]; 
        8'd8: x4_i_next = data_in[9:0];
    end
end

always @(negedge clk or negedge rst_n) begin
    if (!rst_n) begin
        x1_q_r <= 10'sd0; x1_i_r <= 10'sd0;
        x2_q_r <= 10'sd0; x2_i_r <= 10'sd0;
        x3_q_r <= 10'sd0; x3_i_r <= 10'sd0;
        x4_q_r <= 10'sd0; x4_i_r <= 10'sd0;
        iter_r <= 8'd0;
        finish <= 1'b0;
        running_r <= 1'b0;
        scanidx_r <= 8'd0;
    end else begin
        x1_q_r <= x1_q_next; x1_i_r <= x1_i_next;
        x2_q_r <= x2_q_next; x2_i_r <= x2_i_next;
        x3_q_r <= x3_q_next; x3_i_r <= x3_i_next;
        x4_q_r <= x4_q_next; x4_i_r <= x4_i_next;
        iter_r <= iter_next;
        finish <= finish_next;
        running_r <= running_next;
        scanidx_r <= scanidx_next;
    end
end

// Cordic calculation control logic
reg signed [9:0] x_r, y_r, z_r; // S5.4
reg signed [9:0] x_next, y_next, z_next; // S5.4
reg mode, cordic_start_r;
wire cordic_start_next, cordic_finish;
wire signed [9:0] x_out, y_out, z_out; // S5.4
reg [1:0] acc_counter_r; // Counter to track which input is being processed for accumulation
wire [1:0] acc_counter_next; // Next value for accumulator counter

reg signed [11:0] Q_acc_r, I_acc_r; // S3.8 accumulator for quotient and imaginary part
wire signed [11:0] Q_acc_next, I_acc_next; // S3.8 next values for accumulators

cordic #(.N_ITER(10)) cordic_inst (
    .clk(clk),
    .rst(rst_n),
    .start(cordic_start_r),
    .mode(mode),
    .angle(z_r),
    .x_in(x_r),
    .y_in(y_r),
    .finish(cordic_finish),
    .cos_out(x_out),
    .sin_out(y_out),
    .phase_out(z_out)
);


// Control logic to manage the cordic operations and accumulation of results
// Z has not been written. It must be passed with correct angle for the cordic to compute the desired rotation or vectoring operation. The mode is set to 0 for rotation, which is what we want for this search operation. The x and y inputs to the cordic are set based on the current scan index and iteration count, allowing us to process each of the four inputs in sequence. When the cordic finishes its computation, we accumulate the results into Q_acc and I_acc, which will eventually be used to determine the final result of the search operation.
always @(*) begin
    
    x_next = x_r; y_next = y_r; z_next = z_r; cordic_start_next = 1'b0; mode = 1'b0; // Default to rotation mode
    Q_acc_next = Q_acc_r; I_acc_next = I_acc_r; // Default to hold current accumulator values

    switch(iter_r) begin
        8'd3: begin
            x_next = x1_q_r; y_next = x1_i_r; z_next = 10'sd0; cordic_start_next = 1'b1; // Start cordic for first input
        end
        8'd14: begin
            x_next = x2_q_r; y_next = x2_i_r; z_next = 10'sd0; cordic_start_next = 1'b1; // Start cordic for first input
        end
        8'd25: begin
            x_next = x3_q_r; y_next = x3_i_r; z_next = 10'sd0; cordic_start_next = 1'b1; // Start cordic for first input
        end
        8'd36: begin
            x_next = x4_q_r; y_next = x4_i_r; z_next = 10'sd0; cordic_start_next = 1'b1; // Start cordic for first input
        end
    end

    if (cordic_finish) begin
        if (acc_counter_r == 2'b00) begin
            Q_acc_next = x_out; // Accumulate real part
            I_acc_next = y_out; // Accumulate imaginary part
        end else begin
            Q_acc_next = Q_acc_r + x_out; // Accumulate real part
            I_acc_next = I_acc_r + y_out; // Accumulate imaginary part
        end
        acc_counter_next = (acc_counter_r == 2'd3) ? 2'd0 : acc_counter_r + 1; // Move to next input for accumulation
    end

end

endmodule