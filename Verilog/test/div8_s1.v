module div8_s1(
    input clk,
    input [7:0] a,
    input [7:0] b,
    output reg [7:0] q
);

reg [7:0] quotient_w;
reg [7:0] quotient_r;

always @(*) begin
    quotient_w = a / b;
    q = quotient_r;
end

always @(posedge clk) begin
    quotient_r <= quotient_w;
end

endmodule
