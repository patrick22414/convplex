`timescale 1ns / 1ps


// Weight_Buffer : store 9 * 16bits input Weight for convolution
// Data inputs according to the clk and Write_en sequentially, data outputs according to the clk and Read_en concurrently
module Weight_Buffer (
    Write_en,
    Read_en,
    clk,
    rst,
    din,
    dout0,
    dout1,
    dout2,
    dout3,
    dout4,
    dout5,
    dout6,
    dout7,
    dout8
);
    
    input Write_en, Read_en, clk, rst;
    input [15:0] din;
    output reg [15:0] dout0, dout1, dout2, dout3, dout4, dout5, dout6, dout7, dout8;
    
    reg [15:0] Memory [15:0];  // storing the input data array 16*16bits, using 9*16bits in fact
    reg [4:0] count = 4'b0;       // record the current position for input data in the array

    always @ (posedge clk, posedge rst)
    begin
        if (rst) 
            begin
                 Memory[0] <= 16'b0;
                 Memory[1] <= 16'b0;
                 Memory[2] <= 16'b0;
                 Memory[3] <= 16'b0;
                 Memory[4] <= 16'b0;
                 Memory[5] <= 16'b0;
                 Memory[6] <= 16'b0;
                 Memory[7] <= 16'b0;
                 Memory[8] <= 16'b0;
                 Memory[9] <= 16'b0;
                 Memory[10] <= 16'b0;
                 Memory[11] <= 16'b0;
                 Memory[12] <= 16'b0;
                 Memory[13] <= 16'b0;
                 Memory[14] <= 16'b0;
                 Memory[15] <= 16'b0;                              
              
                 count <= 4'b0;
                 
                 dout0 <= 16'b0;
                 dout1 <= 16'b0;
                 dout2 <= 16'b0;
                 dout3 <= 16'b0;
                 dout4 <= 16'b0;
                 dout5 <= 16'b0;
                 dout6 <= 16'b0;
                 dout7 <= 16'b0;
                 dout8 <= 16'b0;
             end
        else if (Write_en)   
            begin
                if (count < 4'b1001)
                    begin
                        Memory[count] <= din;
                        count = count + 4'b1;
                    end
                end
          else if (Read_en)
            begin
                dout0 <= Memory[0];
                dout1 <= Memory[1];
                dout2 <= Memory[2];
                dout3 <= Memory[3];
                dout4 <= Memory[4];
                dout5 <= Memory[5];
                dout6 <= Memory[6];
                dout7 <= Memory[7];
                dout8 <= Memory[8];
            end
     end       

endmodule
