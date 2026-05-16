module steer(
    input clk,
    input rst,
    input i_valid,
    input signed [0:-7] theta, // target angle, unit: pi/128, range: [-pi/3, pi/3] -> [-43, 43]
    input signed [5:-4] i_x1,
    input signed [5:-4] i_y1,
    input signed [5:-4] i_x2,
    input signed [5:-4] i_y2,
    input signed [5:-4] i_x3,
    input signed [5:-4] i_y3,
    input signed [5:-4] i_x4,
    input signed [5:-4] i_y4,
    output o_valid,
    output signed [0:-7] theta,
    output signed [5:-4] o_x1,
    output signed [5:-4] o_y1,
    output signed [5:-4] o_x2,
    output signed [5:-4] o_y2,
    output signed [5:-4] o_x3,
    output signed [5:-4] o_y3,
    output signed [5:-4] o_x4,
    output signed [5:-4] o_y4
);

endmodule
