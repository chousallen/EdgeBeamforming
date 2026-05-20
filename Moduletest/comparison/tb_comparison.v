`timescale 1ns / 1ps

module comparison_tb(); // 名稱已更改

    // --- Inputs ---
    reg clk;
    reg reset_n_i;
    reg valid_in;
    reg signed [9:0] Q_in;
    reg signed [9:0] I_in;
    reg [7:0] theta_in;
    reg [1:0] channel_count;

    // --- Outputs ---
    wire [7:0] theta_out;
    wire valid_out;
    wire signed [9:0] Q_out;
    wire signed [9:0] I_out;

    // --- Verification Variables ---
    integer t, c, timeout_count;
    integer pass_count;
    reg signed [11:0] ref_Q_sum, ref_I_sum;
    wire signed [9:0] ref_Q_avg, ref_I_avg;

    // --- Unit Under Test ---
    comparison uut (
        .clk(clk), .reset_n_i(reset_n_i), .valid_in(valid_in),
        .Q_in(Q_in), .I_in(I_in), .theta_in(theta_in),
        .channel_count(channel_count), .theta_out(theta_out),
        .valid_out(valid_out), .Q_out(Q_out), .I_out(I_out)
    );

    // --- 時脈生成 (200MHz) ---
    initial clk = 0;
    always #2.5 clk = ~clk;

    // 模擬硬體內部的 >>> 2 縮放運算
    assign ref_Q_avg = ref_Q_sum >>> 2;
    assign ref_I_avg = ref_I_sum >>> 2;

    initial begin
        // 設定 GTKWave 輸出檔 (名稱已更改)
        $dumpfile("comparison_tb.vcd");
        $dumpvars(0, comparison_tb);

        // 系統初始化
        reset_n_i = 0; valid_in = 0;
        Q_in = 0; I_in = 0; theta_in = 0; channel_count = 0;
        pass_count = 0;

        #50 reset_n_i = 1;
        repeat(5) @(posedge clk);
        
        $display("=================================================================================");
        $display(" 🚀 Starting Full 256-Angle Verification Scan (Module: comparison_tb)");
        $display("=================================================================================");

        // 完整掃描 0 到 255
        for (t = 0; t < 256; t = t + 1) begin
            c = 0; 
            ref_Q_sum = 0; 
            ref_I_sum = 0;

            while (c < 4) begin
                @(negedge clk);
                
                // 模擬隨機 20% 的資料停頓 (Data Gap)
                if (($unsigned($random) % 10) < 8) begin 
                    valid_in = 1;
                    theta_in = t;
                    channel_count = c;
                    
                    // =========================================================
                    // 劇本配置 (包含多波峰、相等能量、盲區、負數極限等測試)
                    // =========================================================
                    if (t == 15) begin
                        Q_in = 10'sd100; I_in = -10'sd25; 
                    end 
                    else if (t == 60) begin
                        Q_in = 10'sd150; I_in = 10'sd100; 
                    end 
                    else if (t == 61) begin
                        Q_in = -10'sd100; I_in = -10'sd150; 
                    end 
                    else if (t == 100) begin
                        Q_in = 10'sd125; I_in = -10'sd126; 
                    end 
                    else if (t >= 130 && t <= 140) begin
                        Q_in = 10'sd0; I_in = 10'sd0; 
                    end 
                    else if (t == 200) begin
                        Q_in = 10'sd511; I_in = 10'sd511; 
                    end 
                    else if (t == 255) begin
                        Q_in = -10'sd512; I_in = -10'sd512; 
                    end 
                    else begin
                        Q_in = $signed($random % 16); 
                        I_in = $signed($random % 16);
                    end
                    // =========================================================

                    ref_Q_sum = ref_Q_sum + {{2{Q_in[9]}}, Q_in};
                    ref_I_sum = ref_I_sum + {{2{I_in[9]}}, I_in};
                    c = c + 1; 
                end else begin
                    valid_in = 0; 
                end
            end

            @(negedge clk);
            valid_in = 0;

            // 等待硬體運算結束 (valid_out 拉高)
            timeout_count = 0;
            while (valid_out !== 1'b1 && timeout_count < 100) begin
                @(posedge clk);
                timeout_count = timeout_count + 1;
            end

            // 每一條角度都進行即時比對與列印
            if (valid_out) begin
                if (Q_out === ref_Q_avg && I_out === ref_I_avg) begin
                    $display("[PASS] Theta %3d | Q: Out=%4d / Ref=%4d | I: Out=%4d / Ref=%4d | BestTheta=%3d", 
                              t, Q_out, ref_Q_avg, I_out, ref_I_avg, theta_out);
                    pass_count = pass_count + 1;
                end else begin
                    $display("[FAIL] Theta %3d | Q: Out=%4d / Ref=%4d | I: Out=%4d / Ref=%4d | BestTheta=%3d >>> ERROR!", 
                              t, Q_out, ref_Q_avg, I_out, ref_I_avg, theta_out);
                    $finish;
                end
            end
        end

        // 驗證終點總結
        $display("=================================================================================");
        $display(" 🎉 Verification Scan Complete!");
        $display(" Total Checked: %0d / 256 Angles Passed Cleanly.", pass_count);
        $display(" Final Best Theta Answer: %0d", theta_out);
        $display("=================================================================================");
        
        #200;
        $finish;
    end

endmodule