`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/06/12 23:33:19
// Design Name: 
// Module Name: Memory_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Memory_tb(

    );

reg clka;
reg [9:0] addra ;
wire [15:0] douta;


blk_mem_gen_0 mem (.clka(clka), .addra(addra), .douta(douta));

initial
begin
       clka <= 0;
       repeat(70)
              #25 clka = ~clka;
       
end

initial
begin
    addra <= 10'b11_1111_1100;
    repeat(50)
        #50 addra = addra  + 1;
end

    
endmodule


