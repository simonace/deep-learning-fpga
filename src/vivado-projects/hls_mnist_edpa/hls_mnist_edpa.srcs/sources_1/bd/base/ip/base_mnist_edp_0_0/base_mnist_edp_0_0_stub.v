// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Mon Apr  9 21:38:41 2018
// Host        : xbili-T470-ubuntu running 64-bit Ubuntu 17.10
// Command     : write_verilog -force -mode synth_stub
//               /home/xbili/Code/FPGA/vivado-projects/hls_mnist_edpa/hls_mnist_edpa.srcs/sources_1/bd/base/ip/base_mnist_edp_0_0/base_mnist_edp_0_0_stub.v
// Design      : base_mnist_edp_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "mnist_edp,Vivado 2017.4" *)
module base_mnist_edp_0_0(sdata_in_TVALID, sdata_in_TREADY, 
  sdata_in_TDATA, sdata_in_TKEEP, sdata_in_TSTRB, sdata_in_TUSER, sdata_in_TLAST, 
  sdata_in_TID, sdata_in_TDEST, sdata_out_TVALID, sdata_out_TREADY, sdata_out_TDATA, 
  sdata_out_TKEEP, sdata_out_TSTRB, sdata_out_TUSER, sdata_out_TLAST, sdata_out_TID, 
  sdata_out_TDEST, ap_clk, ap_rst_n)
/* synthesis syn_black_box black_box_pad_pin="sdata_in_TVALID,sdata_in_TREADY,sdata_in_TDATA[15:0],sdata_in_TKEEP[1:0],sdata_in_TSTRB[1:0],sdata_in_TUSER[0:0],sdata_in_TLAST[0:0],sdata_in_TID[0:0],sdata_in_TDEST[0:0],sdata_out_TVALID,sdata_out_TREADY,sdata_out_TDATA[15:0],sdata_out_TKEEP[1:0],sdata_out_TSTRB[1:0],sdata_out_TUSER[0:0],sdata_out_TLAST[0:0],sdata_out_TID[0:0],sdata_out_TDEST[0:0],ap_clk,ap_rst_n" */;
  input sdata_in_TVALID;
  output sdata_in_TREADY;
  input [15:0]sdata_in_TDATA;
  input [1:0]sdata_in_TKEEP;
  input [1:0]sdata_in_TSTRB;
  input [0:0]sdata_in_TUSER;
  input [0:0]sdata_in_TLAST;
  input [0:0]sdata_in_TID;
  input [0:0]sdata_in_TDEST;
  output sdata_out_TVALID;
  input sdata_out_TREADY;
  output [15:0]sdata_out_TDATA;
  output [1:0]sdata_out_TKEEP;
  output [1:0]sdata_out_TSTRB;
  output [0:0]sdata_out_TUSER;
  output [0:0]sdata_out_TLAST;
  output [0:0]sdata_out_TID;
  output [0:0]sdata_out_TDEST;
  input ap_clk;
  input ap_rst_n;
endmodule
