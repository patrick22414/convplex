`timescale 1ns / 1ps


module Control(
    input wire clk,
    input wire rst,

    output wire en_weightsin,   // enable weights input
    output wire en_datain,      // enable data in
    output wire en_rd           // enable memory read
);

    always @(posedge clk) begin
        if (rst) begin
            en_weightsin <= 1'b0;
            en_datain <= 1'b0;
            en_rd <= 1'b0;
        else begin
            // TODO
        end
    end

endmodule
