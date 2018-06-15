`timescale 1ns / 1ps

module Control_tb;

    wire clk, rst, enweig, endata, rd, wr;

    Control control(
        .clk(clk),
        .rst(rst),
        .en_weights(enweig),
        .en_data(endata),
        .mem_rd(rd),
        .mem_wr(wr)
    );

    initial begin
        rst <= 1;
        clk <= 1;
    end

endmodule // Control_tb
