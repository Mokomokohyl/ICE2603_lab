// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Mon May  5 21:54:57 2025
// Host        : HUANGYILUMA58AA running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               z:/25Spring/Vivado_lab/projects/project_3_extra/project_3_extra.srcs/sources_1/ip/lpm_ram_dq_dram/lpm_ram_dq_dram_stub.v
// Design      : lpm_ram_dq_dram
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a50tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_3,Vivado 2019.1" *)
module lpm_ram_dq_dram(clka, ena, wea, addra, dina, douta)
/* synthesis syn_black_box black_box_pad_pin="clka,ena,wea[0:0],addra[4:0],dina[31:0],douta[31:0]" */;
  input clka;
  input ena;
  input [0:0]wea;
  input [4:0]addra;
  input [31:0]dina;
  output [31:0]douta;
endmodule
