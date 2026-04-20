`timescale 1ns/1ps

module div8_tb();

reg clk;
reg [7:0] a;
reg [7:0] b;
wire [7:0] q;

// Instantiate the divider module
div8_s1 dut(
    .clk(clk),
    .a(a),
    .b(b),
    .q(q)
);

// Clock generation
initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

// Test variables
integer dividend, divisor, expected_quotient, errors;
integer total_tests;

initial begin
    errors = 0;
    total_tests = 0;
    
    // Wait for initial reset
    #10;
    
    // Prime the pipeline with an extra cycle to initialize register
    a = 8'b0;
    b = 8'b1;
    @(posedge clk);
    
    // Test all 256 * 255 combinations (excluding b=0)
    for (dividend = 0; dividend < 256; dividend = dividend + 1) begin
        for (divisor = 1; divisor < 256; divisor = divisor + 1) begin
            
            // Apply test inputs
            a = dividend[7:0];
            b = divisor[7:0];
            
            // Wait two cycles for the pipeline to propagate result
            @(posedge clk);
            @(posedge clk);
            
            // Calculate expected result
            expected_quotient = dividend / divisor;
            
            // Compare with actual output
            if (q !== expected_quotient[7:0]) begin
                errors = errors + 1;
                if (errors <= 10) begin  // Print first 10 errors
                    $display("ERROR at test %d: %d / %d = %d (expected %d)", 
                             total_tests, dividend, divisor, q, expected_quotient);
                end
            end
            
            total_tests = total_tests + 1;
        end
    end
    
    // Print summary
    $display("\n========== TEST SUMMARY ==========");
    $display("Total tests run: %d", total_tests);
    $display("Total errors: %d", errors);
    
    if (errors == 0) begin
        $display("STATUS: ALL TESTS PASSED!");
    end else begin
        $display("STATUS: %d TESTS FAILED!", errors);
    end
    
    $display("==================================\n");
    
    $finish;
end

endmodule
