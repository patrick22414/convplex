`timescale 1ns / 1ps


module Control(
    input wire clk,
    input wire rst,

    output reg en_weights, // enable weights input
    output reg en_data,    // enable data input
    output reg mem_rd,     // enable memory read
    output reg mem_wr      // enable memory write
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

    always @(*) begin
        if (rst) begin
            rst32 <= 1;
            en_weights <= 0;
            en_data <= 0;
            mem_rd <= 0;
            mem_wr <= 0;
        end else if (c < 9) begin  // effective from 1st to 9th clk
            rst32 <= 1;
            en_weights <= 1;
            en_data <= 0;
            mem_rd <= 1;
            mem_wr <= 0;
        end else if (c < (9 + 67)) begin // effective from 10th to 76th clk
            rst32 <= 1;
            en_weights <= 0;
            en_data <= 1;
            mem_rd <= 1;
            mem_wr <= 0;
        end else if (c < (9 + 1024)) begin
            rst32 <= 0;
            en_weights <= 0;
            en_data <= 1;
            mem_rd <= 1;
            if (c32 < 30)
                mem_wr <= 1;
            else
                mem_wr <= 0;
        end else begin
            rst32 <= 1;
            en_weights <= 0;
            en_data <= 0;
            mem_rd <= 0;
            mem_wr <= 1;
        end
    end

endmodule
