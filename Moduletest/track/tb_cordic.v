`timescale 1ns/1ps

module tb_cordic;

    // Parameters
    parameter IW = 10;
    parameter OW = 8;
    parameter N_ITER = 8;

    // Testbench Signals
    reg clk;
    reg rst_n;
    reg valid_in;
    reg signed [IW-1:0] x1_in;
    reg signed [IW-1:0] y1_in;
    reg signed [IW-1:0] x2_in;
    reg signed [IW-1:0] y2_in;
    
    wire valid_out;
    wire signed [OW-1:0] phase_out1;
    wire signed [OW-1:0] phase_out2;

    // Variables for Golden File checks
    reg signed [OW-1:0] exp_phase1;
    reg signed [OW-1:0] exp_phase2;

    integer fd;
    integer r1, r2, r3, r4, r5, r6;
    integer test_count, pass_count, fail_count;

    // Instantiate the CORDIC Module
    cordic #(
        .N_ITER(N_ITER),
        .IW(IW),
        .OW(OW)
    ) dut (
        .clk(clk),
        .rst_n(rst_n),
        .valid_in(valid_in),
        .x1_in(x1_in),
        .y1_in(y1_in),
        .x2_in(x2_in),
        .y2_in(y2_in),
        .valid_out(valid_out),
        .phase_out1(phase_out1),
        .phase_out2(phase_out2)
    );

    // Clock Generation (100MHz)
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Main Test Sequence
    initial begin
        // Initialize Signals
        rst_n = 0;
        valid_in = 0;
        x1_in = 0; y1_in = 0;
        x2_in = 0; y2_in = 0;
        test_count = 0;
        pass_count = 0;
        fail_count = 0;

        // Apply Reset
        #20;
        rst_n = 1;
        #10;

        // Open Golden File
        // Note: Make sure the file format matches your expectations (using 'r' for read)
        fd = $fopen("cordic_ref.mem", "r");
        if (fd == 0) begin
            $display("ERROR: Cannot open 'cordic_golden_vec.mem'. Exiting.");
            $finish;
        end

        // Read Test Vectors and verify
        while (!$feof(fd)) begin
            // Read 6 lines for one full module evaluation cycle (Ch1 and Ch2)
            // Note: %h is used assuming hex values. If your file is in decimal, change %h to %d.
            r1 = $fscanf(fd, "%h\n", x1_in);
            r2 = $fscanf(fd, "%h\n", y1_in);
            r3 = $fscanf(fd, "%h\n", exp_phase1);
            r4 = $fscanf(fd, "%h\n", x2_in);
            r5 = $fscanf(fd, "%h\n", y2_in);
            r6 = $fscanf(fd, "%h\n", exp_phase2);

            // Ensure we successfully read all 6 values before testing
            if (r1 == 1 && r2 == 1 && r3 == 1 && r4 == 1 && r5 == 1 && r6 == 1) begin
                
                // Assert valid_in for one clock cycle
                @(posedge clk);
                valid_in = 1;
                
                @(posedge clk);
                valid_in = 0;

                // Wait for processing to complete
                @(posedge valid_out);
                #1; // Small delay to let non-blocking assignments settle

                // Increment total comparisons by 2 (since we evaluate 2 channels at once)
                test_count = test_count + 2;

                // Check Channel 1
                if (phase_out1 === exp_phase1) begin
                    pass_count = pass_count + 1;
                end else begin
                    fail_count = fail_count + 1;
                    $display("FAIL [CH1]: x1=%h, y1=%h | Expected=%h, Got=%h", x1_in, y1_in, exp_phase1, phase_out1);
                end

                // Check Channel 2
                if (phase_out2 === exp_phase2) begin
                    pass_count = pass_count + 1;
                end else begin
                    fail_count = fail_count + 1;
                    $display("FAIL [CH2]: x2=%h, y2=%h | Expected=%h, Got=%h", x2_in, y2_in, exp_phase2, phase_out2);
                end
                
                // Wait briefly before the next input cycle
                #10;
            end
        end

        // Close File and Print Summary
        $fclose(fd);
        $display("========================================");
        $display("          CORDIC TEST SUMMARY           ");
        $display("========================================");
        $display(" Total test cases : %0d", test_count);
        $display(" Passed           : %0d", pass_count);
        $display(" Failed           : %0d", fail_count);
        $display("========================================");
        if (fail_count == 0 && test_count > 0) begin
            $display(" SUCCESS! All vectors matched.");
        end else begin
            $display(" WARNING! There were test failures.");
        end
        $finish;
    end

endmodule