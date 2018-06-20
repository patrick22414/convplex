`timescale 1ns / 1ps
module PE_tb#(
    parameter w = 16 // width: 16 bits
)();

    // declaration
    reg clk = 1'b0;
    reg rst = 1'b1;
    wire signed [15:0] result;
    wire signed [w-1:0] dout0, dout1, dout2, dout3, dout4, dout5, dout6, dout7, dout8;
    wire signed [w-1:0] din;
    wire signed [w-1:0] weight;
    wire [10:0] addr1;
    wire [10:0] addr2;
    wire [9:0] raddr;
    wire en_weights;
    wire en_data;
    wire mem_rd;
    wire mem_wr;
    wire signed [w-1:0] w0, w1, w2, w3, w4, w5, w6, w7, w8;
    wire signed [w-1:0] m0, m1, m2, m3, m4, m5, m6, m7, m8;
    // instantiations
    PE pe (clk, rst, result,
               dout0, dout1, dout2, dout3, dout4, dout5, dout6, dout7, dout8,
               din, weight, addr1, addr2, raddr,
               en_weights, en_data, mem_rd, mem_wr,
               w0, w1, w2, w3, w4, w5, w6, w7, w8,
                m0, m1, m2, m3, m4, m5, m6, m7, m8);

    always #5 clk = ~clk;

    integer f, i;
    // test patterns
    initial begin
        f = $fopen("D:/output.txt");
        rst <= 1;
        #100
        rst <= 0;
        #770;
        for (i=0; i<960; i=i+1) begin
            if (mem_wr) begin
                $fdisplay(f,"%d\t",result);  
            end
            #10;
        end
        $fclose(f);
        $finish;
    end
endmodule
