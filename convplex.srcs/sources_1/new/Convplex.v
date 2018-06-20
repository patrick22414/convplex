`timescale 1ns / 1ps


module Convplex #(
    parameter w = 16 // width: 16 bits
)(
    input wire clk, en_weights, en_data,
    input signed [w-1:0] din,
    input signed [w-1:0] weight,

    output signed [w-1:0] result,
    output signed [w-1:0] dout0, dout1, dout2, dout3, dout4, dout5, dout6, dout7, dout8,
    output signed [w-1:0] w0, w1, w2, w3, w4, w5, w6, w7, w8,
    output signed [w-1:0] m0, m1, m2, m3, m4, m5, m6, m7, m8
);

    // declarations
    //wire signed [w-1:0] dout0, dout1, dout2, dout3, dout4, dout5, dout6, dout7, dout8;
    //wire signed [w-1:0] w0, w1, w2, w3, w4, w5, w6, w7, w8;
    //wire signed [w-1:0] m0, m1, m2, m3, m4, m5, m6, m7, m8;
    DataLine dataline(clk, en_data, din,
                      dout0, dout1, dout2,
                      dout3, dout4, dout5,
                      dout6, dout7, dout8);
    Weight_Buffer weight_buffer (en_weights, clk, weight,
                                 w0, w1, w2,
                                 w3, w4, w5,
                                 w6, w7, w8);
    Mul mul0(dout0, w0, m0);
    Mul mul1(dout1, w1, m1);
    Mul mul2(dout2, w2, m2);
    Mul mul3(dout3, w3, m3);
    Mul mul4(dout4, w4, m4);
    Mul mul5(dout5, w5, m5);
    Mul mul6(dout6, w6, m6);
    Mul mul7(dout7, w7, m7);
    Mul mul8(dout8, w8, m8);

    AddTree addtree(
        .en('b1),
        .din0(m0),
        .din1(m1),
        .din2(m2),
        .din3(m3),
        .din4(m4),
        .din5(m5),
        .din6(m6),
        .din7(m7),
        .din8(m8),
        .dout(result)
    );

endmodule
