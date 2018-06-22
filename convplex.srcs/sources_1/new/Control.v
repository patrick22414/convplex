`timescale 1ns / 1ps


module Control(
    input wire clk,
    input wire rst,

    output reg en_weights,  // enable weights input
    output reg en_pixels,  // enable pixels input
    output reg mem_wr,  // enable memory write

    output reg [11:0] addr_rd,
    output reg [11:0] addr_wr
);

    reg [10:0] c;  // counter

    reg rst32;
    reg [4:0] c32;  // counter 32

    always @(posedge clk) begin
        if (rst)
            c <= 0;
        else if (c == 1034)
            c <= 0;
        else
            c <= c + 1;
    end

    always @(posedge clk) begin
        if (rst32)
            c32 <= 0;
        else
            c32 <= c32 + 1;
    end

    always @(posedge clk) begin
        if (c == 0) begin
            addr_rd <= 0;
            addr_wr <= 3072;
        end else begin
            addr_rd <= addr_rd + 1;
            if (mem_wr)
                addr_wr <= addr_wr + 1;
        end
    end

    always @(c) begin
        if (c < 1) begin
            rst32       <= 1;
            en_weights  <= 0;
            en_pixels   <= 0;
            mem_wr      <= 0;
        end else if (c < (1+11)) begin
            rst32       <= 1;
            en_weights  <= 1;
            en_pixels   <= 0;
            mem_wr      <= 0;
        end else if (c < (1+11+67)) begin
            rst32       <= 1;
            en_weights  <= 0;
            en_pixels   <= 1;
            mem_wr      <= 0;
        end else if (c < (1+11+1024)) begin
            rst32       <= 0;
            en_weights  <= 0;
            en_pixels   <= 1;
            if (c32 < 30)
                mem_wr  <= 1;
            else
                mem_wr  <= 0;
        end else begin
            rst32       <= 1;
            en_weights  <= 0;
            en_pixels   <= 0;
            mem_wr      <= 1;
        end
    end

endmodule
