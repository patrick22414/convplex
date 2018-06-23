`timescale 1ns / 1ps

module Convplex_tb;

    reg clk, rst;

    wire [15:0] result, mem_out;
    wire [11:0] addr_rd, addr_wr;
    wire mem_wr;

    Mem memory(
        // port A used for [write] operation
        .clka(clk),
        .addra(addr_wr),
        .dina(result),
        .wea(mem_wr),
        // port B used for [read] operation
        .clkb(clk),
        .addrb(addr_rd),
        .doutb(mem_out)
    );

    Convplex convplex(
        .clk(clk),
        .rst(rst),
        .din(mem_out),
        .result(result),
        .mem_wr(mem_wr),
        .addr_rd(addr_rd),
        .addr_wr(addr_wr)
    );

    integer file, i;

    initial begin
        file = $fopen("output.txt");
        rst <= 1; #20;
        rst <= 0; #157; // begin to write in memory 
        // write value of 'mem_out' every 2 ns if 'mem_wr' is high
        for (i=0; i<3000; i=i+1) begin
            if(mem_wr) begin
                $fdisplay(file, "%d", result);
            end
            #2;
        end
        $fclose(file);
        $finish;
    end

    initial
        clk <= 0;

    always
        #1 clk <= ! clk;

endmodule