// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Thu Jun 21 04:39:35 2018
// Host        : DESKTOP-MPJHNLF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/14683/Documents/GitHub/convplex/convplex.srcs/sources_1/ip/d_mem/d_mem_stub.v
// Design      : d_mem
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_1,Vivado 2017.4" *)
module d_mem(clka, ena, addra, douta, clkb, enb, addrb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,ena,addra[10:0],douta[15:0],clkb,enb,addrb[10:0],doutb[15:0]" */;
  input clka;
  input ena;
  input [10:0]addra;
  output [15:0]douta;
  input clkb;
  input enb;
  input [10:0]addrb;
  output [15:0]doutb;
endmodule
