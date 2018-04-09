// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Thu Apr  5 11:11:33 2018
// Host        : xbili-T470-ubuntu running 64-bit Ubuntu 17.10
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ base_mnist_0_1_stub.v
// Design      : base_mnist_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "mnist,Vivado 2017.4" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(data_in_V_V_TVALID, data_in_V_V_TREADY, 
  data_in_V_V_TDATA, data_out_V_V_TVALID, data_out_V_V_TREADY, data_out_V_V_TDATA, 
  const_size_in, const_size_out, ap_clk, ap_rst_n)
/* synthesis syn_black_box black_box_pad_pin="data_in_V_V_TVALID,data_in_V_V_TREADY,data_in_V_V_TDATA[7:0],data_out_V_V_TVALID,data_out_V_V_TREADY,data_out_V_V_TDATA[31:0],const_size_in[15:0],const_size_out[15:0],ap_clk,ap_rst_n" */;
  input data_in_V_V_TVALID;
  output data_in_V_V_TREADY;
  input [7:0]data_in_V_V_TDATA;
  output data_out_V_V_TVALID;
  input data_out_V_V_TREADY;
  output [31:0]data_out_V_V_TDATA;
  output [15:0]const_size_in;
  output [15:0]const_size_out;
  input ap_clk;
  input ap_rst_n;
endmodule
