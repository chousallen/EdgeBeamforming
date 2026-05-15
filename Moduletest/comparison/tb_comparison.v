`timescale 1ns / 1ps

module tb_comparison();

    // --- Inputs ---
    reg clk_p_i;
    reg reset_n_i;
    reg valid_in;
    reg signed [9:0] Q_in;
    reg signed [9:0] I_in;
    reg [5:0] theta_in;
    reg [1:0] channel_count;

    // --- Outputs ---
    wire [5:0] theta_out;
    wire valid_out;
    wire signed [9:0] Q_out;
    wire signed [9:0] I_out;

    // --- Verification Variables ---
    integer t, c, timeout_count;
    reg signed [11:0] ref_Q_sum, ref_I_sum;
    wire signed [9:0] ref_Q_avg, ref_I_avg;

    // --- UUT Instantiation ---
    comparison uut (
        .clk_p_i(clk_p_i), .reset_n_i(reset_n_i), .valid_in(valid_in),
        .Q_in(Q_in), .I_in(I_in), .theta_in(theta_in),
        .channel_count(channel_count), .theta_out(theta_out),
        .valid_out(valid_out), .Q_out(Q_out), .I_out(I_out)
    );

    // --- Clock Logic ---
    initial clk_p_i = 0;
    always #5 clk_p_i = ~clk_p_i;

    // Reference calculation for checking
    assign ref_Q_avg = ref_Q_sum >>> 2;
    assign ref_I_avg = ref_I_sum >>> 2;

    initial begin
        // Setup Waveform Dump
        $dumpfile("sim.vcd");
        $dumpvars(0, tb_comparison);

        // Initialize
        reset_n_i = 0;
        valid_in = 0;
        Q_in = 0; I_in = 0; theta_in = 0; channel_count = 0;

        #50 reset_n_i = 1;
        repeat(5) @(posedge clk_p_i);
        
        $display("--- Starting Synchronized Signal Test (Theta 0 to 63) ---");

        for (t = 0; t < 64; t = t + 1) begin
            c = 0;
            ref_Q_sum = 0;
            ref_I_sum = 0;

            // Send 4 channels for current Theta
            while (c < 4) begin
                @(negedge clk_p_i);
                if (($unsigned($random) % 10) < 8) begin 
                    valid_in = 1;
                    theta_in = t;
                    channel_count = c;
                    
                    // Generate specific data for Theta 32 to ensure it's the peak
                    if (t == 32) begin
                        Q_in = 10'sd150; I_in = -10'sd100;
                    end else begin
                        Q_in = $signed($random % 64); 
                        I_in = $signed($random % 64);
                    end

                    // Keep track of what the output SHOULD be
                    ref_Q_sum = ref_Q_sum + {{2{Q_in[9]}}, Q_in};
                    ref_I_sum = ref_I_sum + {{2{I_in[9]}}, I_in};
                    c = c + 1; 
                end else begin
                    valid_in = 0; 
                end
            end

            // Drive valid_in low after 4 channels
            @(negedge clk_p_i);
            valid_in = 0;

            // Wait for Synchronization (valid_out should trigger 2 cycles after c=3)
            timeout_count = 0;
            while (valid_out !== 1'b1 && timeout_count < 100) begin
                @(posedge clk_p_i);
                timeout_count = timeout_count + 1;
            end

            // --- SYNC CHECK ---
            if (valid_out) begin
                $display("[Time %0t] Theta %0d: Q_out=%d (Ref:%d), I_out=%d (Ref:%d), BestTheta=%d", 
                          $time, t, Q_out, ref_Q_avg, I_out, ref_I_avg, theta_out);
                
                if (Q_out !== ref_Q_avg || I_out !== ref_I_avg) begin
                    $display(">>> ERROR: Signal Data Mismatch at Theta %0d!", t);
                end
            end
        end

        $display("--------------------------------------------------");
        $display("Sweep Complete. Final Best Theta Identified: %0d", theta_out);
        $display("--------------------------------------------------");
        #100;
        $finish;
    end

endmodule