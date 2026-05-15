// comparison module

module comparison(
            channel_count,
            clk_p_i,
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

    input clk_p_i;
    input reset_n_i;
    input valid_in;
    input signed [9:0] Q_in;
    input signed [9:0] I_in;
    input [5:0] theta_in;
    input [1:0] channel_count;

    output reg [5:0] theta_out;
    output reg valid_out;
    output reg signed [9:0] Q_out;
    output reg signed [9:0] I_out;



    // interconnection

    reg [12:0] max_power;
    reg [5:0] current_theta;
    reg [5:0] theta_latched;
    reg [12:0] new_power;
    reg signed [11:0] Q_acc;
    reg signed [11:0] I_acc;
    reg [11:0] absolute_Q_acc;
    reg [11:0] absolute_I_acc;
    reg comparator_valid;
    

   
    
    //power calculation
    always @(*) begin
        case(Q_acc[11])
                1'b0: absolute_Q_acc = Q_acc[11:0];
                1'b1: absolute_Q_acc = ~Q_acc[11:0] + 1;
        endcase

        case(I_acc[11])
                1'b0: absolute_I_acc = I_acc[11:0];
                1'b1: absolute_I_acc = ~I_acc[11:0] + 1;
        endcase

        new_power = absolute_Q_acc + absolute_I_acc;
    end

    // sequential state update
    always @(posedge clk_p_i or negedge reset_n_i) begin
        if (!reset_n_i) begin
            max_power <= 13'd0;
            current_theta <= 6'd0;
            theta_out <= 6'd0;
            valid_out <= 1'b0;
            comparator_valid <= 1'b0;
            theta_latched <= 6'd0;
        end else begin

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

    always @(posedge clk_p_i or negedge reset_n_i) begin
        if (!reset_n_i) begin
            Q_acc <= 12'sd0;
            I_acc <= 12'sd0;
        end 
        else if (valid_in) begin
            if (channel_count == 0) begin 
                Q_acc <= {{2{Q_in[9]}}, Q_in};
                I_acc <= {{2{I_in[9]}}, I_in};
            end else begin
                Q_acc <= Q_acc + {{2{Q_in[9]}}, Q_in};
                I_acc <= I_acc + {{2{I_in[9]}}, I_in};
            end
        end
    end

endmodule

