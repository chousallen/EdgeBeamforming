// IO-pad wrapper for the beamforming core.
module CHIP (
    input  wire       clk,
    input  wire       rst_n,
    input  wire       valid_in,
    input  wire [9:0] data_in,
    output wire       in_en,
    output wire       valid_out,
    output wire [9:0] data_out
);

    wire       i_clk;
    wire       i_rst_n;
    wire       i_valid_in;
    wire [9:0] i_data_in;
    wire       i_in_en;
    wire       i_valid_out;
    wire [9:0] i_data_out;
    wire       n_logic0;
    wire       n_logic1;

    beamforming beamforming_in (
        .clk(i_clk),
        .rst_n(i_rst_n),
        .valid_in(i_valid_in),
        .data_in(i_data_in),
        .in_en(i_in_en),
        .valid_out(i_valid_out),
        .data_out(i_data_out)
    );

    TIE0 ipad_n_logic0 (.O(n_logic0));
    TIE1 ipad_n_logic1 (.O(n_logic1));

    XMD ipad_clk      (.O(i_clk),      .I(clk),      .PU(n_logic0), .PD(n_logic0), .SMT(n_logic0));
    XMD ipad_rst_n    (.O(i_rst_n),    .I(rst_n),    .PU(n_logic0), .PD(n_logic0), .SMT(n_logic0));
    XMD ipad_valid_in (.O(i_valid_in), .I(valid_in), .PU(n_logic0), .PD(n_logic0), .SMT(n_logic0));

    XMD ipad_data_in_0 (.O(i_data_in[0]), .I(data_in[0]), .PU(n_logic0), .PD(n_logic0), .SMT(n_logic0));
    XMD ipad_data_in_1 (.O(i_data_in[1]), .I(data_in[1]), .PU(n_logic0), .PD(n_logic0), .SMT(n_logic0));
    XMD ipad_data_in_2 (.O(i_data_in[2]), .I(data_in[2]), .PU(n_logic0), .PD(n_logic0), .SMT(n_logic0));
    XMD ipad_data_in_3 (.O(i_data_in[3]), .I(data_in[3]), .PU(n_logic0), .PD(n_logic0), .SMT(n_logic0));
    XMD ipad_data_in_4 (.O(i_data_in[4]), .I(data_in[4]), .PU(n_logic0), .PD(n_logic0), .SMT(n_logic0));
    XMD ipad_data_in_5 (.O(i_data_in[5]), .I(data_in[5]), .PU(n_logic0), .PD(n_logic0), .SMT(n_logic0));
    XMD ipad_data_in_6 (.O(i_data_in[6]), .I(data_in[6]), .PU(n_logic0), .PD(n_logic0), .SMT(n_logic0));
    XMD ipad_data_in_7 (.O(i_data_in[7]), .I(data_in[7]), .PU(n_logic0), .PD(n_logic0), .SMT(n_logic0));
    XMD ipad_data_in_8 (.O(i_data_in[8]), .I(data_in[8]), .PU(n_logic0), .PD(n_logic0), .SMT(n_logic0));
    XMD ipad_data_in_9 (.O(i_data_in[9]), .I(data_in[9]), .PU(n_logic0), .PD(n_logic0), .SMT(n_logic0));

    YA2GSD opad_in_en     (.O(in_en),     .I(i_in_en),     .E(n_logic1), .E2(n_logic0), .E4(n_logic0), .E8(n_logic0), .SR(n_logic0));
    YA2GSD opad_valid_out (.O(valid_out), .I(i_valid_out), .E(n_logic1), .E2(n_logic0), .E4(n_logic0), .E8(n_logic0), .SR(n_logic0));

    YA2GSD opad_data_out_0 (.O(data_out[0]), .I(i_data_out[0]), .E(n_logic1), .E2(n_logic0), .E4(n_logic0), .E8(n_logic0), .SR(n_logic0));
    YA2GSD opad_data_out_1 (.O(data_out[1]), .I(i_data_out[1]), .E(n_logic1), .E2(n_logic0), .E4(n_logic0), .E8(n_logic0), .SR(n_logic0));
    YA2GSD opad_data_out_2 (.O(data_out[2]), .I(i_data_out[2]), .E(n_logic1), .E2(n_logic0), .E4(n_logic0), .E8(n_logic0), .SR(n_logic0));
    YA2GSD opad_data_out_3 (.O(data_out[3]), .I(i_data_out[3]), .E(n_logic1), .E2(n_logic0), .E4(n_logic0), .E8(n_logic0), .SR(n_logic0));
    YA2GSD opad_data_out_4 (.O(data_out[4]), .I(i_data_out[4]), .E(n_logic1), .E2(n_logic0), .E4(n_logic0), .E8(n_logic0), .SR(n_logic0));
    YA2GSD opad_data_out_5 (.O(data_out[5]), .I(i_data_out[5]), .E(n_logic1), .E2(n_logic0), .E4(n_logic0), .E8(n_logic0), .SR(n_logic0));
    YA2GSD opad_data_out_6 (.O(data_out[6]), .I(i_data_out[6]), .E(n_logic1), .E2(n_logic0), .E4(n_logic0), .E8(n_logic0), .SR(n_logic0));
    YA2GSD opad_data_out_7 (.O(data_out[7]), .I(i_data_out[7]), .E(n_logic1), .E2(n_logic0), .E4(n_logic0), .E8(n_logic0), .SR(n_logic0));
    YA2GSD opad_data_out_8 (.O(data_out[8]), .I(i_data_out[8]), .E(n_logic1), .E2(n_logic0), .E4(n_logic0), .E8(n_logic0), .SR(n_logic0));
    YA2GSD opad_data_out_9 (.O(data_out[9]), .I(i_data_out[9]), .E(n_logic1), .E2(n_logic0), .E4(n_logic0), .E8(n_logic0), .SR(n_logic0));

endmodule
