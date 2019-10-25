// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Thu Oct 24 17:10:11 2019
// Host        : smithpc running 64-bit Ubuntu 16.04.6 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ os_pfb_os_pfb_0_stub.v
// Design      : os_pfb_os_pfb_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "os_pfb,Vivado 2018.3" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(in_r_TVALID, in_r_TREADY, in_r_TDATA, 
  out_r_TVALID, out_r_TREADY, out_r_TDATA, out_r_TLAST, ovflow_TVALID, ovflow_TREADY, 
  ovflow_TDATA, ap_clk, ap_rst_n)
/* synthesis syn_black_box black_box_pad_pin="in_r_TVALID,in_r_TREADY,in_r_TDATA[63:0],out_r_TVALID,out_r_TREADY,out_r_TDATA[63:0],out_r_TLAST[0:0],ovflow_TVALID,ovflow_TREADY,ovflow_TDATA[7:0],ap_clk,ap_rst_n" */;
  input in_r_TVALID;
  output in_r_TREADY;
  input [63:0]in_r_TDATA;
  output out_r_TVALID;
  input out_r_TREADY;
  output [63:0]out_r_TDATA;
  output [0:0]out_r_TLAST;
  output ovflow_TVALID;
  input ovflow_TREADY;
  output [7:0]ovflow_TDATA;
  input ap_clk;
  input ap_rst_n;
endmodule
