`timescale 1ns / 1ps


module WeightBuffer #(
    parameter w = 16,  // width: 16 bits
    parameter depth = 9  // depth: 9 registers
)(
    input wire clk, en,
    input [w-1:0] din,

    output [w-1:0] dout0, dout1, dout2,
    output [w-1:0] dout3, dout4, dout5,
    output [w-1:0] dout6, dout7, dout8
);

    reg [w-1:0] buffer [depth-1:0];
    integer k = 0;

    always @(posedge clk) begin
        if (en) begin
            for (k=0; k<depth-1; k=k+1) begin
                buffer[k] <= buffer[k+1];
            end
            buffer[depth-1] <= din;
        end
    end

    assign dout0 = buffer[0];
    assign dout1 = buffer[1];
    assign dout2 = buffer[2];
    assign dout3 = buffer[3];
    assign dout4 = buffer[4];
    assign dout5 = buffer[5];
    assign dout6 = buffer[6];
    assign dout7 = buffer[7];
    assign dout8 = buffer[8];

endmodule
