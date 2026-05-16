`timescale 1ns / 1ps

module track_tb;

    // Parameter definitions (matching track.v)
    parameter N_ITER = 8;
    parameter IW = 10;
    parameter PW = 8;
    parameter OW = 8;

    // Testbench signals
    reg clk;
    reg rst_n;
    reg valid_in;
    reg angle_valid_in;
    reg [1:0] channel_in;
    reg signed [IW-1:0] i_in;
    reg signed [IW-1:0] q_in;
    reg signed [PW-1:0] phase_in;

    wire valid_out;
    wire [OW-1:0] angle_out;

    // Instantiate Unit Under Test (UUT)
    track #(
        .N_ITER(N_ITER),
        .IW(IW),
        .PW(PW),
        .OW(OW)
    ) uut (
        .clk(clk),
        .rst_n(rst_n),
        .valid_in(valid_in),
        .channel_in(channel_in),
        .i_in(i_in),
        .q_in(q_in),
        .angle_in(phase_in),
        .angle_valid_in(angle_valid_in),
        .valid_out(valid_out),
        .angle_out(angle_out)
    );

    // Memory array to hold golden data (49 patterns * 9 entries = 441 entries)
    reg [7:0] golden_mem [0:500];
    
    integer p;
    integer error_count = 0;
    integer total_patterns = 49; // Total test cases parsed from track_golden.mem

    // 100MHz clock generation (10ns period)
    always #5 clk = ~clk;

    initial begin
        // Enable waveform dumping
        $dumpfile("track_tb.vcd");
        $dumpvars(0, track_tb);

        // Initialize inputs
        clk = 0;
        rst_n = 0;
        valid_in = 0;
        channel_in = 2'b00;
        i_in = 0;
        q_in = 0;
        phase_in = 0;
        angle_valid_in = 0;

        $display("Starting Track Module Testbench...");
        // Load golden data from file
        $readmemh("track_golden.mem", golden_mem);


        // Release reset
        #20;
        rst_n = 1;
        @(posedge clk);
        #1; // Offset from clock edge to prevent hold time issues
        angle_valid_in = 1; // Assuming angle input is valid for all patterns
        phase_in = 8'd228; // Assuming angle input is not used in current test patterns
        @(posedge clk);
        #1;
        angle_valid_in = 0;
        phase_in = 0;
        @(posedge clk);
        #1;

        // Drive test patterns sequentially
        for (p = 0; p < total_patterns; p = p + 1) begin
            $display("[Pattern %0d] Driving inputs...", p + 1);

            // 1. Left channel first pair (Channel 00 -> L_acc initial load)
            valid_in   = 1'b1;
            channel_in = 2'b00;
            q_in       = $signed(golden_mem[p*9 + 0]); // Sign-extend to IW bits
            i_in       = $signed(golden_mem[p*9 + 1]);
            @(posedge clk);
            #1;

            // 2. Left channel second pair (Channel 01 -> L_acc accumulation)
            valid_in   = 1'b1;
            channel_in = 2'b01;
            q_in       = $signed(golden_mem[p*9 + 2]);
            i_in       = $signed(golden_mem[p*9 + 3]);
            @(posedge clk);
            #1;

            // 3. Right channel first pair (Channel 10 -> R_acc initial load)
            valid_in   = 1'b1;
            channel_in = 2'b10;
            q_in       = $signed(golden_mem[p*9 + 4]);
            i_in       = $signed(golden_mem[p*9 + 5]);
            @(posedge clk);
            #1;

            // 4. Right channel second pair (Channel 11 -> R_acc accumulation and trigger CORDIC)
            valid_in   = 1'b1;
            channel_in = 2'b11;
            q_in       = $signed(golden_mem[p*9 + 6]);
            i_in       = $signed(golden_mem[p*9 + 7]);
            @(posedge clk);
            #1;

            // Clear inputs after sending the 4 (q, i) pairs
            valid_in   = 1'b0;
            channel_in = 2'b00;
            q_in       = 0;
            i_in       = 0;

            // Wait for CORDIC computation processing using fork-join timeout control
            fork : wait_result
                begin
                    // Wait for the valid hardware response
                    @(posedge valid_out);
                    // Sample right after the next clock edge
                    @(posedge clk);
                    #1;
                    if (angle_out === golden_mem[p*9 + 8]) begin
                        $display("[Pattern %0d] SUCCESS! Expected: %h, Got: %h", p + 1, golden_mem[p*9 + 8], angle_out);
                    end else begin
                        $display("[Pattern %0d] ERROR! Expected: %h, Got: %h", p + 1, golden_mem[p*9 + 8], angle_out);
                        error_count = error_count + 1;
                    end
                    disable wait_result;
                end
                begin
                    // Watchdog timer: timeout if CORDIC fails to respond within 200 cycles
                    repeat (200) @(posedge clk);
                    $display("[Pattern %0d] ERROR! Wait for valid_out timed out.", p + 1);
                    error_count = error_count + 1;
                    disable wait_result;
                end
            join

            // Inter-pattern gap delay
            repeat (5) @(posedge clk);
        end

        // Final simulation summary report
        $display("----------------------------------------");
        if (error_count == 0) begin
            $display("  SIMULATION PASSED: All patterns matched successfully!");
        end else begin
            $display("  SIMULATION FAILED: Found %0d mismatching pattern(s).", error_count);
        end
        $display("----------------------------------------");

        $finish;
    end

endmodule