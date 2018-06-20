`timescale 1ns / 1ps

module PE #(
    parameter w = 16  // data bit-width = 16
)(
    input wire clk,
    input wire rst,
    output signed [w-1:0] result,
    output signed [w-1:0] dout0, dout1, dout2, dout3, dout4, dout5, dout6, dout7, dout8,
    output signed [w-1:0] din, // data fetched from ROM
    output signed [w-1:0] weight, //weight fetched from ROM
    output wire [10:0] addr1,
    output wire [10:0] addr2,
    output wire [9:0] raddr,
    output wire en_weights,
    output wire en_data,
    output wire mem_rd,
    output wire mem_wr,
    output signed [w-1:0] w0, w1, w2, w3, w4, w5, w6, w7, w8,
    output signed [w-1:0] m0, m1, m2, m3, m4, m5, m6, m7, m8
);

    // declarations
    reg [10:0] d_addr1 = 11'b0;
    reg [10:0] d_addr2 = 11'd9;
    reg [9:0] r_addr = 10'b0;
    //wire signed [w-1:0] din;
    //wire signed [w-1:0] weight;
    wire signed [w-1:0] r_dataout;
    //wire en_weights;
    //wire en_data;
    //wire mem_rd;
    //wire mem_wr;
    
    assign addr1 = d_addr1;
    assign addr2 = d_addr2;
    assign raddr = r_addr;
    
    // instantiations
    Control control(clk, rst, en_weights, en_data, mem_rd, mem_wr);
    d_mem data_mem(clk, mem_rd, d_addr1, weight, clk, mem_rd, d_addr2, din); // first 9 are weights, the rest are image data
    result_mem r_mem(clk, mem_wr, r_addr, result, r_dataout);
    Convplex convplex (clk, en_weights, en_data, din, weight, result, dout0, dout1, dout2, dout3, dout4, dout5, dout6, dout7, dout8, w0, w1, w2, w3, w4, w5, w6, w7, w8, m0, m1, m2, m3, m4, m5, m6, m7, m8);
    
    always @(posedge clk) begin
        if (mem_rd) begin
            if (d_addr1 < 8)
                d_addr1 <= d_addr1 + 1;
            else
                d_addr1 <= 0;
        end else begin
            d_addr1 <= 0;
        end
    end
    
    always @(posedge clk) begin
         if (mem_rd) begin
             if (d_addr2 < 1032)
                 d_addr2 <= d_addr2 + 1;
             else
                 d_addr2 <= 9;
           end else begin
               d_addr2 <= 9;
           end
    end
    
    always @(posedge clk) begin
             if (mem_wr) begin
                 if (r_addr < 1023)
                     r_addr <= r_addr + 1;
                 else
                     r_addr <= 0;
               end else begin
                   r_addr <= 0;
               end
        end
    
endmodule