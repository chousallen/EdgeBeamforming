`timescale `timescale 1ns / 1ps

module tb_steering_module;

    parameter DATA_WIDTH = 32;
    parameter ADDR_DEPTH = 512; 
    parameter CLK_PERIOD = 10;

    // --- 訊號聲明 ---
    logic clk, rst_n;
    
    // 串列介面 (一次只有一組 Q/I)
    logic in_valid;
    logic [DATA_WIDTH-1:0] in_data_q, in_data_i;
    
    logic out_valid;
    logic [DATA_WIDTH-1:0] out_data_q, out_data_i;
    
    // Golden Data 緩衝區
    logic [DATA_WIDTH-1:0] golden_mem [0:ADDR_DEPTH-1][0:15];
    
    integer error_count = 0;

    // --- 時脈產生 ---
    initial begin
        clk = 0;
        forever #(CLK_PERIOD/2) clk = ~clk;
    end

    // --- DUT 例化 ---
    steering_module dut (
        .clk        (clk),
        .rst_n      (rst_n),
        .in_valid   (in_valid),
        .in_q       (in_data_q),
        .in_i       (in_data_i),
        .out_valid  (out_valid),
        .out_q      (out_data_q),
        .out_i      (out_data_i)
    );

    // --- 測試程序 ---
    initial begin
        $readmemh("golden.mem", golden_mem);
        rst_n = 0;
        in_valid = 0;
        in_data_q = 0;
        in_data_i = 0;
        #(CLK_PERIOD * 5);
        rst_n = 1;
        @(posedge clk);

        $display("===== Start Sequential Steering Test =====");

        fork
            // 執行緒 A: 串列餵資料
            begin
                for (int i = 0; i < ADDR_DEPTH; i++) begin
                    for (int ch = 0; ch < 4; ch++) begin
                        in_valid  <= 1;
                        in_data_q <= golden_mem[i][ch*2];   // x1_q, x2_q...
                        in_data_i <= golden_mem[i][ch*2+1]; // x1_i, x2_i...
                        @(posedge clk);
                    end
                    in_valid <= 0;
                    // 可在此插入隨機延遲，模擬資料間隔
                    // repeat($urandom_range(0, 5)) @(posedge clk);
                end
            end

            // 執行緒 B: 串列比對結果
            begin
                for (int i = 0; i < ADDR_DEPTH; i++) begin
                    for (int ch = 0; ch < 4; ch++) begin
                        // 等待 out_valid 拉高
                        while (!out_valid) @(posedge clk);
                        
                        // 比對目前的輸出與 Golden 內的對應欄位 (Index 8~15)
                        check_sample(i, ch, out_data_q, out_data_i);
                        
                        @(posedge clk); // 跳到下一拍
                    end
                end
            end
        join

        #(CLK_PERIOD * 10);
        if (error_count == 0)
            $display("===== [SUCCESS] All %d rows passed! =====", ADDR_DEPTH);
        else
            $display("===== [FAILURE] Total Errors: %d =====", error_count);
        $finish;
    end

    // --- 比對邏輯 Task ---
    task check_sample(input integer row, input integer ch, input logic [31:0] q, input logic [31:0] i);
        logic [31:0] exp_q = golden_mem[row][8 + ch*2];
        logic [31:0] exp_i = golden_mem[row][9 + ch*2];

        if (q !== exp_q || i !== exp_i) begin
            $display("[Error] Row %0d, Antenna %0d mismatch!", row, ch+1);
            $display("        Expected: Q=%h, I=%h", exp_q, exp_i);
            $display("        Got     : Q=%h, I=%h", q, i);
            error_count++;
        end
    endtask

endmodule

endmodule