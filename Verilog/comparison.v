// comparison module

module comparison(
            channel_count,
            clk,
            reset_n_i,
            valid_in,
            Q_in,
            I_in,
            theta_in,
            theta_out,
            valid_out,
            Q_out,
            I_out
    );

    input clk;
    input reset_n_i;
    input valid_in;
    input signed [9:0] Q_in;
    input signed [9:0] I_in;
    input [7:0] theta_in;
    input [1:0] channel_count;

    output reg [7:0] theta_out;
    output reg valid_out;
    output reg signed [9:0] Q_out;
    output reg signed [9:0] I_out;



    // interconnection

    reg [11:0] max_power;
    reg [7:0] current_theta;
    reg [7:0] theta_latched;
    wire [11:0] new_power;
    reg signed [11:0] Q_acc;
    reg signed [11:0] I_acc;
    wire [10:0] absolute_Q_acc;
    wire [10:0] absolute_I_acc;
    reg comparator_valid;
    

   
    
    //power calculation
    assign absolute_Q_acc = (Q_acc < 12'sd0) ? (-Q_acc) : Q_acc;
    assign absolute_I_acc = (I_acc < 12'sd0) ? (-I_acc) : I_acc;
    assign new_power = absolute_Q_acc + absolute_I_acc;

    // sequential state update
    always @(posedge clk or negedge reset_n_i) begin
        if (!reset_n_i) begin
            max_power <= 13'd0;
            current_theta <= 8'd0;
            theta_out <= 8'd0;
            valid_out <= 1'b0;
            comparator_valid <= 1'b0;
            theta_latched <= 8'd0;
            Q_out <= 10'sd0;
            I_out <= 10'sd0;
        end else begin

            if (valid_in && theta_in == 8'd0 && channel_count == 2'd0) begin
                max_power <= 13'd0;
            end


            if (valid_in && channel_count == 3) begin
                comparator_valid <= 1'b1;
                theta_latched <= theta_in; 
            end 
            else begin
                comparator_valid <= 1'b0; 
            end

            if (comparator_valid) begin

                Q_out <= Q_acc >>> 2;
                I_out <= I_acc >>> 2;
                valid_out <= 1'b1;

                if (new_power > max_power) begin
                    max_power <= new_power;
                    current_theta <= theta_latched;
                    theta_out <= theta_latched;
                end 
                
                else begin
                    theta_out <= current_theta;
                end

            end 
            
            else begin
                valid_out <= 1'b0;
            end
        end
    end

    always @(posedge clk or negedge reset_n_i) begin
        if (!reset_n_i) begin
            Q_acc <= 12'sd0;
            I_acc <= 12'sd0;
        end 
        else if (valid_in) begin
            if (channel_count == 0) begin 
                Q_acc <= Q_in;
                I_acc <= I_in;
            end else begin
                Q_acc <= Q_acc + Q_in;
                I_acc <= I_acc + I_in;
            end
        end
    end

endmodule

