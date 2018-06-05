`timescale 1ns / 1ps


// Weight_Buffer : store 9 * 16bits input Weight for convolution
// Data inputs according to the CLK and Write_en sequentially, data outputs according to the CLK and Read_en concurrently
module Weight_Buffer(Write_en, Read_en, CLK, RESET, Data_in, Data_out0, Data_out1, Data_out2, Data_out3, Data_out4, Data_out5, Data_out6, Data_out7, Data_out8 );
    
    input Write_en, Read_en, CLK, RESET;
    input [15:0] Data_in;
    output reg [15:0] Data_out0, Data_out1, Data_out2, Data_out3, Data_out4, Data_out5, Data_out6, Data_out7, Data_out8;
    
    reg [15:0] Memory [15:0];  // storing the input data array 16*16bits, using 9*16bits in fact
    reg [4:0] count = 4'b0;       // record the current position for input data in the array

    always @ (posedge CLK, posedge RESET)
    begin
        if (RESET) 
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
                 
                 Data_out0 <= 16'b0;
                 Data_out1 <= 16'b0;
                 Data_out2 <= 16'b0;
                 Data_out3 <= 16'b0;
                 Data_out4 <= 16'b0;
                 Data_out5 <= 16'b0;
                 Data_out6 <= 16'b0;
                 Data_out7 <= 16'b0;
                 Data_out8 <= 16'b0;
             end
        else if (Write_en)   
            begin
                if (count < 4'b1001)
                    begin
                        Memory[count] <= Data_in;
                        count = count + 4'b1;
                    end
                end
          else if (Read_en)
            begin
                Data_out0 <= Memory[0];
                Data_out1 <= Memory[1];
                Data_out2 <= Memory[2];
                Data_out3 <= Memory[3];
                Data_out4 <= Memory[4];
                Data_out5 <= Memory[5];
                Data_out6 <= Memory[6];
                Data_out7 <= Memory[7];
                Data_out8 <= Memory[8];
            end
     end       

endmodule
