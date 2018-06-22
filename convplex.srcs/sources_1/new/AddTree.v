`timescale 1ns / 1ps


module AddTree #(
    parameter w = 16
)(
    input signed [w-1:0] din0,
    input signed [w-1:0] din1,
    input signed [w-1:0] din2,
    input signed [w-1:0] din3,
    input signed [w-1:0] din4,
    input signed [w-1:0] din5,
    input signed [w-1:0] din6,
    input signed [w-1:0] din7,
    input signed [w-1:0] din8,

    output signed [w-1:0] dout
);

    wire signed [w-1:0] level0 [0:7];
    wire signed [w-1:0] level1 [0:3];
    wire signed [w-1:0] level2 [0:1];

    assign level0[0] = din0;
    assign level0[1] = din1;
    assign level0[2] = din2;
    assign level0[3] = din3;
    assign level0[4] = din4;
    assign level0[5] = din5;
    assign level0[6] = din6;
    assign level0[7] = din7 + din8;

    assign level1[0] = level0[0] + level0[1];
    assign level1[1] = level0[2] + level0[3];
    assign level1[2] = level0[4] + level0[5];
    assign level1[3] = level0[6] + level0[7];

    assign level2[0] = level1[0] + level1[1];
    assign level2[1] = level1[2] + level1[3];

    assign dout = level2[0] + level2[1]; 

endmodule
