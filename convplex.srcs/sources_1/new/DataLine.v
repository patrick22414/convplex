`timescale 1ns / 1ps


module DataLine #(
    parameter w = 16,  // width: 16 bits
    parameter pix = 32,  // pixels: 32-by-32 picture
    parameter ksz = 3,  // kernel size: 3-by-3
    parameter depth = pix*(ksz-1)+ksz  // depth: 32*(3-1) + 3 = 67 registers
)(
    input wire clk, en,
    input [w-1:0] din,

    output [w-1:0] dout0, dout1, dout2,
    output [w-1:0] dout3, dout4, dout5,
    output [w-1:0] dout6, dout7, dout8
);

    reg [w-1:0] line [depth-1:0];
    integer k = 0;

    always @(posedge clk) begin
        if (en) begin
            for (k=0; k<depth-1; k=k+1) begin
                line[k] <= line[k+1];
            end
            line[depth-1] <= din;
        end
    end

    assign dout0 = line[0];
    assign dout1 = line[1];
    assign dout2 = line[2];
    assign dout3 = line[pix+0];
    assign dout4 = line[pix+1];
    assign dout5 = line[pix+2];
    assign dout6 = line[pix*2+0];
    assign dout7 = line[pix*2+1];
    assign dout8 = line[pix*2+2];

endmodule
