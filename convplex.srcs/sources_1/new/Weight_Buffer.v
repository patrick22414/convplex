`timescale 1ns / 1ps


// Weight_Buffer : store 9 * 16bits input Weight for convolution
// Data inputs according to the clk and en=1 sequentially, lasting for 9 clock cycles; data outputs continuously and concurrently
module Weight_Buffer (
    input en,
    input clk,
    input [15:0] din,
    output  [15:0] dout0,
    output  [15:0] dout1,
    output  [15:0] dout2,
    output  [15:0] dout3,
    output  [15:0] dout4,
    output  [15:0] dout5,
    output  [15:0] dout6,
    output  [15:0] dout7,
    output  [15:0] dout8
);
    
    reg [15:0] Memory [8:0];  // storing the input data array 16*16bits, using 9*16bits in fact
    reg [4:0] count = 4'b0;       // record the current position for input data in the array, only for 9 input data
    integer k = 0;

    always @ (posedge clk)     // input according to clk
        begin
            if (en==1 && count < 4'b1001)
                begin
                    for (k=0; k<8; k=k+1) 
                        begin
                                        Memory[k] <= Memory[k+1];
                        end
                    Memory[8] <= din;
                    count <= count + 1;
                end
            if (en==0)
                begin
                    count <= 4'b0;
                end
        end

    assign dout0 = Memory[0];
    assign dout1 = Memory[1];
    assign dout2 = Memory[2];
    assign dout3 = Memory[3];
    assign dout4 = Memory[4];
    assign dout5 = Memory[5];
    assign dout6 = Memory[6];
    assign dout7 = Memory[7];
    assign dout8 = Memory[8];
    
endmodule
