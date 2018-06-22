`timescale 1ns / 1ps

module Control_tb;

    reg clk, rst;
    wire en_weights, en_pixels, mem_wr;
    wire [11:0] addr_rd, addr_wr;

    Control control(
        .clk(clk),
        .rst(rst),
        .en_weights(en_weights),
        .en_pixels(en_pixels),
        .mem_wr(mem_wr),
        .addr_rd(addr_rd),
        .addr_wr(addr_wr)
    );

    initial begin
        rst <= 1; #20;
        rst <= 0; #3000;
        $finish;
    end

    initial
        clk <= 0;

    always
        #1 clk <= ! clk;

endmodule // Control_tb
