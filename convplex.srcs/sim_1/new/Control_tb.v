`timescale 1ns / 1ps

module Control_tb;

    reg clk, rst;
    wire enweig, endata, rd, wr;

    Control control(
        .clk(clk),
        .rst(rst),
        .en_weights(enweig),
        .en_data(endata),
        .mem_rd(rd),
        .mem_wr(wr)
    );

    initial begin
        rst <= 1; #20;
        rst <= 0; #5000;
        $finish;
    end

    initial
        clk <= 0;

    always
        #1 clk <= ! clk;

endmodule // Control_tb
