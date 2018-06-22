`timescale 1ns / 1ps


module Convplex #(
    parameter w = 16 // width: 16 bits
)(
    input wire clk, rst,
    input [w-1:0] din,

    output [w-1:0] result,
    output wire mem_wr,
    output [11:0] addr_rd,
    output [11:0] addr_wr
);

    // declarations
    wire en_weights, en_pixels;
    wire [w-1:0] weight [0:8];
    wire [w-1:0] pixel [0:8];
    wire [w-1:0] m [0:8];

    // instantiations
    Control control(
        .clk(clk),
        .rst(rst),
        .en_weights(en_weights),
        .en_pixels(en_pixels),
        .mem_wr(mem_wr),
        .addr_rd(addr_rd),
        .addr_wr(addr_wr)
    );
    WeightBuffer wb (
        .en(en_weights),
        .clk(clk),
        .din(din),
        .dout0(weight[0]),
        .dout1(weight[1]),
        .dout2(weight[2]),
        .dout3(weight[3]),
        .dout4(weight[4]),
        .dout5(weight[5]),
        .dout6(weight[6]),
        .dout7(weight[7]),
        .dout8(weight[8])
    );

    DataLine dl (
        .en(en_pixels),
        .clk(clk),
        .din(din),
        .dout0(pixel[0]),
        .dout1(pixel[1]),
        .dout2(pixel[2]),
        .dout3(pixel[3]),
        .dout4(pixel[4]),
        .dout5(pixel[5]),
        .dout6(pixel[6]),
        .dout7(pixel[7]),
        .dout8(pixel[8])
    );

    Mul mul0(.data(pixel[0]), .weight(weight[0]), .m(m[0]));
    Mul mul1(.data(pixel[1]), .weight(weight[1]), .m(m[1]));
    Mul mul2(.data(pixel[2]), .weight(weight[2]), .m(m[2]));
    Mul mul3(.data(pixel[3]), .weight(weight[3]), .m(m[3]));
    Mul mul4(.data(pixel[4]), .weight(weight[4]), .m(m[4]));
    Mul mul5(.data(pixel[5]), .weight(weight[5]), .m(m[5]));
    Mul mul6(.data(pixel[6]), .weight(weight[6]), .m(m[6]));
    Mul mul7(.data(pixel[7]), .weight(weight[7]), .m(m[7]));
    Mul mul8(.data(pixel[8]), .weight(weight[8]), .m(m[8]));

    AddTree addtree(
        .din0(m[0]),
        .din1(m[1]),
        .din2(m[2]),
        .din3(m[3]),
        .din4(m[4]),
        .din5(m[5]),
        .din6(m[6]),
        .din7(m[7]),
        .din8(m[8]),
        .dout(result)
    );

endmodule
