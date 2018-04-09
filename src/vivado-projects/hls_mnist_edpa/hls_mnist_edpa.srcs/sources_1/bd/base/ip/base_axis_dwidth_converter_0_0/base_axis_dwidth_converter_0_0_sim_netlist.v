// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Mon Apr  9 22:16:27 2018
// Host        : xbili-T470-ubuntu running 64-bit Ubuntu 17.10
// Command     : write_verilog -force -mode funcsim
//               /home/xbili/Code/FPGA/vivado-projects/hls_mnist_edpa/hls_mnist_edpa.srcs/sources_1/bd/base/ip/base_axis_dwidth_converter_0_0/base_axis_dwidth_converter_0_0_sim_netlist.v
// Design      : base_axis_dwidth_converter_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "base_axis_dwidth_converter_0_0,axis_dwidth_converter_v1_1_14_axis_dwidth_converter,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axis_dwidth_converter_v1_1_14_axis_dwidth_converter,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module base_axis_dwidth_converter_0_0
   (aclk,
    aresetn,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLKIF CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLKIF, FREQ_HZ 66666672, PHASE 0.000, CLK_DOMAIN base_processing_system7_0_0_FCLK_CLK0, ASSOCIATED_BUSIF S_AXIS:M_AXIS, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RSTIF RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RSTIF, POLARITY ACTIVE_LOW, TYPE INTERCONNECT" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) output s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *) input [15:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TSTRB" *) input [1:0]s_axis_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TKEEP" *) input [1:0]s_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TLAST" *) input s_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TID" *) input [0:0]s_axis_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TDEST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 2, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 66666672, PHASE 0.000, CLK_DOMAIN base_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 16 TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TUSER_WIDTH 1}" *) input [0:0]s_axis_tdest;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) input m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) output [31:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TSTRB" *) output [3:0]m_axis_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TKEEP" *) output [3:0]m_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TLAST" *) output m_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TID" *) output [0:0]m_axis_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDEST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 66666672, PHASE 0.000, CLK_DOMAIN base_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef" *) output [0:0]m_axis_tdest;

  wire aclk;
  wire aresetn;
  wire [31:0]m_axis_tdata;
  wire [0:0]m_axis_tdest;
  wire [0:0]m_axis_tid;
  wire [3:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire [3:0]m_axis_tstrb;
  wire m_axis_tvalid;
  wire [15:0]s_axis_tdata;
  wire [0:0]s_axis_tdest;
  wire [0:0]s_axis_tid;
  wire [1:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire [1:0]s_axis_tstrb;
  wire s_axis_tvalid;
  wire [0:0]NLW_inst_m_axis_tuser_UNCONNECTED;

  (* C_AXIS_SIGNAL_SET = "32'b00000000000000000000000001111111" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_M_AXIS_TDATA_WIDTH = "32" *) 
  (* C_M_AXIS_TUSER_WIDTH = "1" *) 
  (* C_S_AXIS_TDATA_WIDTH = "16" *) 
  (* C_S_AXIS_TUSER_WIDTH = "1" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* G_INDX_SS_TDATA = "1" *) 
  (* G_INDX_SS_TDEST = "6" *) 
  (* G_INDX_SS_TID = "5" *) 
  (* G_INDX_SS_TKEEP = "3" *) 
  (* G_INDX_SS_TLAST = "4" *) 
  (* G_INDX_SS_TREADY = "0" *) 
  (* G_INDX_SS_TSTRB = "2" *) 
  (* G_INDX_SS_TUSER = "7" *) 
  (* G_MASK_SS_TDATA = "2" *) 
  (* G_MASK_SS_TDEST = "64" *) 
  (* G_MASK_SS_TID = "32" *) 
  (* G_MASK_SS_TKEEP = "8" *) 
  (* G_MASK_SS_TLAST = "16" *) 
  (* G_MASK_SS_TREADY = "1" *) 
  (* G_MASK_SS_TSTRB = "4" *) 
  (* G_MASK_SS_TUSER = "128" *) 
  (* G_TASK_SEVERITY_ERR = "2" *) 
  (* G_TASK_SEVERITY_INFO = "0" *) 
  (* G_TASK_SEVERITY_WARNING = "1" *) 
  (* P_AXIS_SIGNAL_SET = "32'b00000000000000000000000001111111" *) 
  (* P_D1_REG_CONFIG = "0" *) 
  (* P_D1_TUSER_WIDTH = "2" *) 
  (* P_D2_TDATA_WIDTH = "32" *) 
  (* P_D2_TUSER_WIDTH = "4" *) 
  (* P_D3_REG_CONFIG = "0" *) 
  (* P_D3_TUSER_WIDTH = "4" *) 
  (* P_M_RATIO = "1" *) 
  (* P_SS_TKEEP_REQUIRED = "8" *) 
  (* P_S_RATIO = "2" *) 
  base_axis_dwidth_converter_0_0_axis_dwidth_converter_v1_1_14_axis_dwidth_converter inst
       (.aclk(aclk),
        .aclken(1'b1),
        .aresetn(aresetn),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tdest(m_axis_tdest),
        .m_axis_tid(m_axis_tid),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tstrb(m_axis_tstrb),
        .m_axis_tuser(NLW_inst_m_axis_tuser_UNCONNECTED[0]),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tdest(s_axis_tdest),
        .s_axis_tid(s_axis_tid),
        .s_axis_tkeep(s_axis_tkeep),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tstrb(s_axis_tstrb),
        .s_axis_tuser(1'b0),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* C_AXIS_SIGNAL_SET = "32'b00000000000000000000000001111111" *) (* C_AXIS_TDEST_WIDTH = "1" *) (* C_AXIS_TID_WIDTH = "1" *) 
(* C_FAMILY = "zynq" *) (* C_M_AXIS_TDATA_WIDTH = "32" *) (* C_M_AXIS_TUSER_WIDTH = "1" *) 
(* C_S_AXIS_TDATA_WIDTH = "16" *) (* C_S_AXIS_TUSER_WIDTH = "1" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* G_INDX_SS_TDATA = "1" *) (* G_INDX_SS_TDEST = "6" *) (* G_INDX_SS_TID = "5" *) 
(* G_INDX_SS_TKEEP = "3" *) (* G_INDX_SS_TLAST = "4" *) (* G_INDX_SS_TREADY = "0" *) 
(* G_INDX_SS_TSTRB = "2" *) (* G_INDX_SS_TUSER = "7" *) (* G_MASK_SS_TDATA = "2" *) 
(* G_MASK_SS_TDEST = "64" *) (* G_MASK_SS_TID = "32" *) (* G_MASK_SS_TKEEP = "8" *) 
(* G_MASK_SS_TLAST = "16" *) (* G_MASK_SS_TREADY = "1" *) (* G_MASK_SS_TSTRB = "4" *) 
(* G_MASK_SS_TUSER = "128" *) (* G_TASK_SEVERITY_ERR = "2" *) (* G_TASK_SEVERITY_INFO = "0" *) 
(* G_TASK_SEVERITY_WARNING = "1" *) (* ORIG_REF_NAME = "axis_dwidth_converter_v1_1_14_axis_dwidth_converter" *) (* P_AXIS_SIGNAL_SET = "32'b00000000000000000000000001111111" *) 
(* P_D1_REG_CONFIG = "0" *) (* P_D1_TUSER_WIDTH = "2" *) (* P_D2_TDATA_WIDTH = "32" *) 
(* P_D2_TUSER_WIDTH = "4" *) (* P_D3_REG_CONFIG = "0" *) (* P_D3_TUSER_WIDTH = "4" *) 
(* P_M_RATIO = "1" *) (* P_SS_TKEEP_REQUIRED = "8" *) (* P_S_RATIO = "2" *) 
module base_axis_dwidth_converter_0_0_axis_dwidth_converter_v1_1_14_axis_dwidth_converter
   (aclk,
    aresetn,
    aclken,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser);
  input aclk;
  input aresetn;
  input aclken;
  input s_axis_tvalid;
  output s_axis_tready;
  input [15:0]s_axis_tdata;
  input [1:0]s_axis_tstrb;
  input [1:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [0:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [31:0]m_axis_tdata;
  output [3:0]m_axis_tstrb;
  output [3:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [0:0]m_axis_tuser;

  wire \<const0> ;
  wire aclk;
  wire aclken;
  wire areset_r;
  wire aresetn;
  wire [31:0]m_axis_tdata;
  wire [0:0]m_axis_tdest;
  wire [0:0]m_axis_tid;
  wire [3:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire [3:0]m_axis_tstrb;
  wire m_axis_tvalid;
  wire p_0_in;
  wire [15:0]s_axis_tdata;
  wire [0:0]s_axis_tdest;
  wire [0:0]s_axis_tid;
  wire [1:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire [1:0]s_axis_tstrb;
  wire s_axis_tvalid;

  assign m_axis_tuser[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  LUT1 #(
    .INIT(2'h1)) 
    areset_r_i_1
       (.I0(aresetn),
        .O(p_0_in));
  FDRE areset_r_reg
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(areset_r),
        .R(1'b0));
  base_axis_dwidth_converter_0_0_axis_dwidth_converter_v1_1_14_axisc_upsizer \gen_upsizer_conversion.axisc_upsizer_0 
       (.SR(areset_r),
        .aclk(aclk),
        .aclken(aclken),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tdest(m_axis_tdest),
        .m_axis_tid(m_axis_tid),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tstrb(m_axis_tstrb),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tdest(s_axis_tdest),
        .s_axis_tid(s_axis_tid),
        .s_axis_tkeep(s_axis_tkeep),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tstrb(s_axis_tstrb),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "axis_dwidth_converter_v1_1_14_axisc_upsizer" *) 
module base_axis_dwidth_converter_0_0_axis_dwidth_converter_v1_1_14_axisc_upsizer
   (m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    s_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tvalid,
    s_axis_tlast,
    aclk,
    s_axis_tid,
    s_axis_tvalid,
    aclken,
    s_axis_tdest,
    SR,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    m_axis_tready);
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output s_axis_tready;
  output [31:0]m_axis_tdata;
  output [3:0]m_axis_tstrb;
  output [3:0]m_axis_tkeep;
  output m_axis_tvalid;
  input s_axis_tlast;
  input aclk;
  input [0:0]s_axis_tid;
  input s_axis_tvalid;
  input aclken;
  input [0:0]s_axis_tdest;
  input [0:0]SR;
  input [15:0]s_axis_tdata;
  input [1:0]s_axis_tstrb;
  input [1:0]s_axis_tkeep;
  input m_axis_tready;

  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[0]_i_2_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_2_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_2_n_0 ;
  wire \FSM_onehot_state[4]_i_1_n_0 ;
  wire \FSM_onehot_state[4]_i_2_n_0 ;
  wire \FSM_onehot_state[4]_i_3_n_0 ;
  wire \FSM_onehot_state[4]_i_4_n_0 ;
  wire \FSM_onehot_state[4]_i_5_n_0 ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[0] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[1] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[3] ;
  wire [0:0]SR;
  wire acc_data;
  wire \acc_data[31]_i_1_n_0 ;
  wire \acc_dest[0]_i_1_n_0 ;
  wire \acc_id[0]_i_1_n_0 ;
  wire acc_last4_out;
  wire acc_last_i_1_n_0;
  wire acc_last_i_2_n_0;
  wire acc_last_i_4_n_0;
  wire acc_last_i_5_n_0;
  wire acc_strb;
  wire \acc_strb[3]_i_2_n_0 ;
  wire aclk;
  wire aclken;
  wire [31:0]m_axis_tdata;
  wire [0:0]m_axis_tdest;
  wire [0:0]m_axis_tid;
  wire [3:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire [3:0]m_axis_tstrb;
  wire m_axis_tvalid;
  (* RTL_KEEP = "yes" *) wire p_0_in1_in;
  (* RTL_KEEP = "yes" *) wire p_1_in;
  wire [15:0]r0_data;
  wire r0_dest;
  wire \r0_dest[0]_i_1_n_0 ;
  wire \r0_id[0]_i_1_n_0 ;
  wire \r0_id_reg_n_0_[0] ;
  wire [1:0]r0_keep;
  wire r0_last;
  wire r0_last_reg_n_0;
  wire \r0_reg_sel[0]_i_1_n_0 ;
  wire \r0_reg_sel[0]_i_2_n_0 ;
  wire \r0_reg_sel[1]_i_1_n_0 ;
  wire \r0_reg_sel_reg_n_0_[0] ;
  wire \r0_reg_sel_reg_n_0_[1] ;
  wire [1:0]r0_strb;
  wire [15:0]s_axis_tdata;
  wire [0:0]s_axis_tdest;
  wire [0:0]s_axis_tid;
  wire [1:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire [1:0]s_axis_tstrb;
  wire s_axis_tvalid;
  wire [2:0]state;
  wire state110_out;
  wire state14_out;
  wire state18_out;
  wire \state[0]_i_2_n_0 ;
  wire \state[1]_i_2_n_0 ;
  wire \state[1]_i_3_n_0 ;
  wire \state[2]_i_2_n_0 ;
  wire \state[2]_i_3_n_0 ;
  wire \state[2]_i_4_n_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;
  wire \state_reg_n_0_[2] ;

  LUT6 #(
    .INIT(64'hFFBAFFBAFFBFFFBB)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(s_axis_tvalid),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state[0]_i_2_n_0 ),
        .I4(\FSM_onehot_state[4]_i_5_n_0 ),
        .I5(\FSM_onehot_state[4]_i_3_n_0 ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000100001011101)) 
    \FSM_onehot_state[0]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(p_0_in1_in),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(m_axis_tready),
        .I4(s_axis_tvalid),
        .I5(p_1_in),
        .O(\FSM_onehot_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5555544444445444)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_state[2]_i_2_n_0 ),
        .I2(p_0_in1_in),
        .I3(state110_out),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .I5(state18_out),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0011001000000010)) 
    \FSM_onehot_state[2]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(p_0_in1_in),
        .I2(p_1_in),
        .I3(m_axis_tready),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .I5(s_axis_tvalid),
        .O(\FSM_onehot_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF6FF600000000)) 
    \FSM_onehot_state[2]_i_3 
       (.I0(s_axis_tid),
        .I1(\r0_id_reg_n_0_[0] ),
        .I2(s_axis_tdest),
        .I3(r0_dest),
        .I4(r0_last_reg_n_0),
        .I5(s_axis_tvalid),
        .O(state110_out));
  LUT6 #(
    .INIT(64'h000022220000E222)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(\FSM_onehot_state[3]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(s_axis_tvalid),
        .I3(\FSM_onehot_state[4]_i_5_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .I5(state18_out),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00020002FF020002)) 
    \FSM_onehot_state[3]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(m_axis_tready),
        .I2(s_axis_tvalid),
        .I3(p_0_in1_in),
        .I4(state14_out),
        .I5(state110_out),
        .O(\FSM_onehot_state[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0440444444440440)) 
    \FSM_onehot_state[3]_i_3 
       (.I0(\r0_reg_sel_reg_n_0_[0] ),
        .I1(s_axis_tvalid),
        .I2(r0_dest),
        .I3(s_axis_tdest),
        .I4(\r0_id_reg_n_0_[0] ),
        .I5(s_axis_tid),
        .O(state18_out));
  LUT5 #(
    .INIT(32'hF8FFF800)) 
    \FSM_onehot_state[3]_i_4 
       (.I0(p_0_in1_in),
        .I1(\r0_reg_sel_reg_n_0_[0] ),
        .I2(\r0_reg_sel_reg_n_0_[1] ),
        .I3(s_axis_tvalid),
        .I4(r0_last_reg_n_0),
        .O(state14_out));
  LUT6 #(
    .INIT(64'h000A0F0B000A000A)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(\FSM_onehot_state[4]_i_2_n_0 ),
        .I1(\FSM_onehot_state[4]_i_3_n_0 ),
        .I2(\FSM_onehot_state[4]_i_4_n_0 ),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(\FSM_onehot_state[4]_i_5_n_0 ),
        .I5(s_axis_tvalid),
        .O(\FSM_onehot_state[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000E020)) 
    \FSM_onehot_state[4]_i_2 
       (.I0(p_1_in),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(m_axis_tready),
        .I3(s_axis_tvalid),
        .I4(p_0_in1_in),
        .O(\FSM_onehot_state[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFB3333)) 
    \FSM_onehot_state[4]_i_3 
       (.I0(\acc_strb[3]_i_2_n_0 ),
        .I1(p_0_in1_in),
        .I2(\r0_reg_sel_reg_n_0_[0] ),
        .I3(\r0_reg_sel_reg_n_0_[1] ),
        .I4(s_axis_tvalid),
        .I5(r0_last_reg_n_0),
        .O(\FSM_onehot_state[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAEAAAAAA)) 
    \FSM_onehot_state[4]_i_4 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\r0_reg_sel_reg_n_0_[0] ),
        .I3(s_axis_tvalid),
        .I4(\acc_strb[3]_i_2_n_0 ),
        .O(\FSM_onehot_state[4]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hF8)) 
    \FSM_onehot_state[4]_i_5 
       (.I0(p_0_in1_in),
        .I1(\r0_reg_sel_reg_n_0_[0] ),
        .I2(\r0_reg_sel_reg_n_0_[1] ),
        .O(\FSM_onehot_state[4]_i_5_n_0 ));
  (* FSM_ENCODED_STATES = "SM_RESET:00010,SM_IDLE:00001,SM_ACTIVE:10000,SM_END:01000,SM_END_TO_ACTIVE:00100" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[0] 
       (.C(aclk),
        .CE(aclken),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "SM_RESET:00010,SM_IDLE:00001,SM_ACTIVE:10000,SM_END:01000,SM_END_TO_ACTIVE:00100" *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[1] 
       (.C(aclk),
        .CE(aclken),
        .D(1'b0),
        .Q(\FSM_onehot_state_reg_n_0_[1] ),
        .S(SR));
  (* FSM_ENCODED_STATES = "SM_RESET:00010,SM_IDLE:00001,SM_ACTIVE:10000,SM_END:01000,SM_END_TO_ACTIVE:00100" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(aclk),
        .CE(aclken),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(p_1_in),
        .R(SR));
  (* FSM_ENCODED_STATES = "SM_RESET:00010,SM_IDLE:00001,SM_ACTIVE:10000,SM_END:01000,SM_END_TO_ACTIVE:00100" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(aclk),
        .CE(aclken),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "SM_RESET:00010,SM_IDLE:00001,SM_ACTIVE:10000,SM_END:01000,SM_END_TO_ACTIVE:00100" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(aclk),
        .CE(aclken),
        .D(\FSM_onehot_state[4]_i_1_n_0 ),
        .Q(p_0_in1_in),
        .R(SR));
  LUT3 #(
    .INIT(8'h80)) 
    \acc_data[15]_i_1 
       (.I0(aclken),
        .I1(p_0_in1_in),
        .I2(\r0_reg_sel_reg_n_0_[0] ),
        .O(acc_data));
  LUT3 #(
    .INIT(8'hE0)) 
    \acc_data[31]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(p_0_in1_in),
        .I2(aclken),
        .O(\acc_data[31]_i_1_n_0 ));
  FDRE \acc_data_reg[0] 
       (.C(aclk),
        .CE(acc_data),
        .D(r0_data[0]),
        .Q(m_axis_tdata[0]),
        .R(1'b0));
  FDRE \acc_data_reg[10] 
       (.C(aclk),
        .CE(acc_data),
        .D(r0_data[10]),
        .Q(m_axis_tdata[10]),
        .R(1'b0));
  FDRE \acc_data_reg[11] 
       (.C(aclk),
        .CE(acc_data),
        .D(r0_data[11]),
        .Q(m_axis_tdata[11]),
        .R(1'b0));
  FDRE \acc_data_reg[12] 
       (.C(aclk),
        .CE(acc_data),
        .D(r0_data[12]),
        .Q(m_axis_tdata[12]),
        .R(1'b0));
  FDRE \acc_data_reg[13] 
       (.C(aclk),
        .CE(acc_data),
        .D(r0_data[13]),
        .Q(m_axis_tdata[13]),
        .R(1'b0));
  FDRE \acc_data_reg[14] 
       (.C(aclk),
        .CE(acc_data),
        .D(r0_data[14]),
        .Q(m_axis_tdata[14]),
        .R(1'b0));
  FDRE \acc_data_reg[15] 
       (.C(aclk),
        .CE(acc_data),
        .D(r0_data[15]),
        .Q(m_axis_tdata[15]),
        .R(1'b0));
  FDRE \acc_data_reg[16] 
       (.C(aclk),
        .CE(\acc_data[31]_i_1_n_0 ),
        .D(s_axis_tdata[0]),
        .Q(m_axis_tdata[16]),
        .R(1'b0));
  FDRE \acc_data_reg[17] 
       (.C(aclk),
        .CE(\acc_data[31]_i_1_n_0 ),
        .D(s_axis_tdata[1]),
        .Q(m_axis_tdata[17]),
        .R(1'b0));
  FDRE \acc_data_reg[18] 
       (.C(aclk),
        .CE(\acc_data[31]_i_1_n_0 ),
        .D(s_axis_tdata[2]),
        .Q(m_axis_tdata[18]),
        .R(1'b0));
  FDRE \acc_data_reg[19] 
       (.C(aclk),
        .CE(\acc_data[31]_i_1_n_0 ),
        .D(s_axis_tdata[3]),
        .Q(m_axis_tdata[19]),
        .R(1'b0));
  FDRE \acc_data_reg[1] 
       (.C(aclk),
        .CE(acc_data),
        .D(r0_data[1]),
        .Q(m_axis_tdata[1]),
        .R(1'b0));
  FDRE \acc_data_reg[20] 
       (.C(aclk),
        .CE(\acc_data[31]_i_1_n_0 ),
        .D(s_axis_tdata[4]),
        .Q(m_axis_tdata[20]),
        .R(1'b0));
  FDRE \acc_data_reg[21] 
       (.C(aclk),
        .CE(\acc_data[31]_i_1_n_0 ),
        .D(s_axis_tdata[5]),
        .Q(m_axis_tdata[21]),
        .R(1'b0));
  FDRE \acc_data_reg[22] 
       (.C(aclk),
        .CE(\acc_data[31]_i_1_n_0 ),
        .D(s_axis_tdata[6]),
        .Q(m_axis_tdata[22]),
        .R(1'b0));
  FDRE \acc_data_reg[23] 
       (.C(aclk),
        .CE(\acc_data[31]_i_1_n_0 ),
        .D(s_axis_tdata[7]),
        .Q(m_axis_tdata[23]),
        .R(1'b0));
  FDRE \acc_data_reg[24] 
       (.C(aclk),
        .CE(\acc_data[31]_i_1_n_0 ),
        .D(s_axis_tdata[8]),
        .Q(m_axis_tdata[24]),
        .R(1'b0));
  FDRE \acc_data_reg[25] 
       (.C(aclk),
        .CE(\acc_data[31]_i_1_n_0 ),
        .D(s_axis_tdata[9]),
        .Q(m_axis_tdata[25]),
        .R(1'b0));
  FDRE \acc_data_reg[26] 
       (.C(aclk),
        .CE(\acc_data[31]_i_1_n_0 ),
        .D(s_axis_tdata[10]),
        .Q(m_axis_tdata[26]),
        .R(1'b0));
  FDRE \acc_data_reg[27] 
       (.C(aclk),
        .CE(\acc_data[31]_i_1_n_0 ),
        .D(s_axis_tdata[11]),
        .Q(m_axis_tdata[27]),
        .R(1'b0));
  FDRE \acc_data_reg[28] 
       (.C(aclk),
        .CE(\acc_data[31]_i_1_n_0 ),
        .D(s_axis_tdata[12]),
        .Q(m_axis_tdata[28]),
        .R(1'b0));
  FDRE \acc_data_reg[29] 
       (.C(aclk),
        .CE(\acc_data[31]_i_1_n_0 ),
        .D(s_axis_tdata[13]),
        .Q(m_axis_tdata[29]),
        .R(1'b0));
  FDRE \acc_data_reg[2] 
       (.C(aclk),
        .CE(acc_data),
        .D(r0_data[2]),
        .Q(m_axis_tdata[2]),
        .R(1'b0));
  FDRE \acc_data_reg[30] 
       (.C(aclk),
        .CE(\acc_data[31]_i_1_n_0 ),
        .D(s_axis_tdata[14]),
        .Q(m_axis_tdata[30]),
        .R(1'b0));
  FDRE \acc_data_reg[31] 
       (.C(aclk),
        .CE(\acc_data[31]_i_1_n_0 ),
        .D(s_axis_tdata[15]),
        .Q(m_axis_tdata[31]),
        .R(1'b0));
  FDRE \acc_data_reg[3] 
       (.C(aclk),
        .CE(acc_data),
        .D(r0_data[3]),
        .Q(m_axis_tdata[3]),
        .R(1'b0));
  FDRE \acc_data_reg[4] 
       (.C(aclk),
        .CE(acc_data),
        .D(r0_data[4]),
        .Q(m_axis_tdata[4]),
        .R(1'b0));
  FDRE \acc_data_reg[5] 
       (.C(aclk),
        .CE(acc_data),
        .D(r0_data[5]),
        .Q(m_axis_tdata[5]),
        .R(1'b0));
  FDRE \acc_data_reg[6] 
       (.C(aclk),
        .CE(acc_data),
        .D(r0_data[6]),
        .Q(m_axis_tdata[6]),
        .R(1'b0));
  FDRE \acc_data_reg[7] 
       (.C(aclk),
        .CE(acc_data),
        .D(r0_data[7]),
        .Q(m_axis_tdata[7]),
        .R(1'b0));
  FDRE \acc_data_reg[8] 
       (.C(aclk),
        .CE(acc_data),
        .D(r0_data[8]),
        .Q(m_axis_tdata[8]),
        .R(1'b0));
  FDRE \acc_data_reg[9] 
       (.C(aclk),
        .CE(acc_data),
        .D(r0_data[9]),
        .Q(m_axis_tdata[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \acc_dest[0]_i_1 
       (.I0(r0_dest),
        .I1(p_0_in1_in),
        .I2(\r0_reg_sel_reg_n_0_[0] ),
        .I3(aclken),
        .I4(m_axis_tdest),
        .O(\acc_dest[0]_i_1_n_0 ));
  FDRE \acc_dest_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\acc_dest[0]_i_1_n_0 ),
        .Q(m_axis_tdest),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \acc_id[0]_i_1 
       (.I0(\r0_id_reg_n_0_[0] ),
        .I1(p_0_in1_in),
        .I2(\r0_reg_sel_reg_n_0_[0] ),
        .I3(aclken),
        .I4(m_axis_tid),
        .O(\acc_id[0]_i_1_n_0 ));
  FDRE \acc_id_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\acc_id[0]_i_1_n_0 ),
        .Q(m_axis_tid),
        .R(1'b0));
  FDRE \acc_keep_reg[0] 
       (.C(aclk),
        .CE(acc_data),
        .D(r0_keep[0]),
        .Q(m_axis_tkeep[0]),
        .R(1'b0));
  FDRE \acc_keep_reg[1] 
       (.C(aclk),
        .CE(acc_data),
        .D(r0_keep[1]),
        .Q(m_axis_tkeep[1]),
        .R(1'b0));
  FDRE \acc_keep_reg[2] 
       (.C(aclk),
        .CE(\acc_data[31]_i_1_n_0 ),
        .D(s_axis_tkeep[0]),
        .Q(m_axis_tkeep[2]),
        .R(acc_strb));
  FDRE \acc_keep_reg[3] 
       (.C(aclk),
        .CE(\acc_data[31]_i_1_n_0 ),
        .D(s_axis_tkeep[1]),
        .Q(m_axis_tkeep[3]),
        .R(acc_strb));
  LUT6 #(
    .INIT(64'hAFAEAEAEAAAEAEAE)) 
    acc_last_i_1
       (.I0(acc_last_i_2_n_0),
        .I1(m_axis_tlast),
        .I2(acc_last4_out),
        .I3(acc_last_i_4_n_0),
        .I4(aclken),
        .I5(acc_last_i_5_n_0),
        .O(acc_last_i_1_n_0));
  LUT5 #(
    .INIT(32'h02000000)) 
    acc_last_i_2
       (.I0(r0_last_reg_n_0),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(p_1_in),
        .I3(p_0_in1_in),
        .I4(aclken),
        .O(acc_last_i_2_n_0));
  LUT5 #(
    .INIT(32'h10000000)) 
    acc_last_i_3
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(p_1_in),
        .I2(aclken),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(\acc_strb[3]_i_2_n_0 ),
        .O(acc_last4_out));
  LUT2 #(
    .INIT(4'h1)) 
    acc_last_i_4
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(p_1_in),
        .O(acc_last_i_4_n_0));
  LUT4 #(
    .INIT(16'hEA2A)) 
    acc_last_i_5
       (.I0(s_axis_tlast),
        .I1(\acc_strb[3]_i_2_n_0 ),
        .I2(p_0_in1_in),
        .I3(r0_last_reg_n_0),
        .O(acc_last_i_5_n_0));
  FDRE acc_last_reg
       (.C(aclk),
        .CE(1'b1),
        .D(acc_last_i_1_n_0),
        .Q(m_axis_tlast),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFC00A000)) 
    \acc_strb[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(r0_last_reg_n_0),
        .I2(\acc_strb[3]_i_2_n_0 ),
        .I3(aclken),
        .I4(p_0_in1_in),
        .O(acc_strb));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \acc_strb[3]_i_2 
       (.I0(s_axis_tid),
        .I1(\r0_id_reg_n_0_[0] ),
        .I2(s_axis_tdest),
        .I3(r0_dest),
        .O(\acc_strb[3]_i_2_n_0 ));
  FDRE \acc_strb_reg[0] 
       (.C(aclk),
        .CE(acc_data),
        .D(r0_strb[0]),
        .Q(m_axis_tstrb[0]),
        .R(1'b0));
  FDRE \acc_strb_reg[1] 
       (.C(aclk),
        .CE(acc_data),
        .D(r0_strb[1]),
        .Q(m_axis_tstrb[1]),
        .R(1'b0));
  FDRE \acc_strb_reg[2] 
       (.C(aclk),
        .CE(\acc_data[31]_i_1_n_0 ),
        .D(s_axis_tstrb[0]),
        .Q(m_axis_tstrb[2]),
        .R(acc_strb));
  FDRE \acc_strb_reg[3] 
       (.C(aclk),
        .CE(\acc_data[31]_i_1_n_0 ),
        .D(s_axis_tstrb[1]),
        .Q(m_axis_tstrb[3]),
        .R(acc_strb));
  LUT2 #(
    .INIT(4'h2)) 
    m_axis_tvalid_INST_0
       (.I0(\state_reg_n_0_[1] ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .O(m_axis_tvalid));
  LUT5 #(
    .INIT(32'h00FE0000)) 
    \r0_data[15]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(p_0_in1_in),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(aclken),
        .O(r0_last));
  FDRE \r0_data_reg[0] 
       (.C(aclk),
        .CE(r0_last),
        .D(s_axis_tdata[0]),
        .Q(r0_data[0]),
        .R(1'b0));
  FDRE \r0_data_reg[10] 
       (.C(aclk),
        .CE(r0_last),
        .D(s_axis_tdata[10]),
        .Q(r0_data[10]),
        .R(1'b0));
  FDRE \r0_data_reg[11] 
       (.C(aclk),
        .CE(r0_last),
        .D(s_axis_tdata[11]),
        .Q(r0_data[11]),
        .R(1'b0));
  FDRE \r0_data_reg[12] 
       (.C(aclk),
        .CE(r0_last),
        .D(s_axis_tdata[12]),
        .Q(r0_data[12]),
        .R(1'b0));
  FDRE \r0_data_reg[13] 
       (.C(aclk),
        .CE(r0_last),
        .D(s_axis_tdata[13]),
        .Q(r0_data[13]),
        .R(1'b0));
  FDRE \r0_data_reg[14] 
       (.C(aclk),
        .CE(r0_last),
        .D(s_axis_tdata[14]),
        .Q(r0_data[14]),
        .R(1'b0));
  FDRE \r0_data_reg[15] 
       (.C(aclk),
        .CE(r0_last),
        .D(s_axis_tdata[15]),
        .Q(r0_data[15]),
        .R(1'b0));
  FDRE \r0_data_reg[1] 
       (.C(aclk),
        .CE(r0_last),
        .D(s_axis_tdata[1]),
        .Q(r0_data[1]),
        .R(1'b0));
  FDRE \r0_data_reg[2] 
       (.C(aclk),
        .CE(r0_last),
        .D(s_axis_tdata[2]),
        .Q(r0_data[2]),
        .R(1'b0));
  FDRE \r0_data_reg[3] 
       (.C(aclk),
        .CE(r0_last),
        .D(s_axis_tdata[3]),
        .Q(r0_data[3]),
        .R(1'b0));
  FDRE \r0_data_reg[4] 
       (.C(aclk),
        .CE(r0_last),
        .D(s_axis_tdata[4]),
        .Q(r0_data[4]),
        .R(1'b0));
  FDRE \r0_data_reg[5] 
       (.C(aclk),
        .CE(r0_last),
        .D(s_axis_tdata[5]),
        .Q(r0_data[5]),
        .R(1'b0));
  FDRE \r0_data_reg[6] 
       (.C(aclk),
        .CE(r0_last),
        .D(s_axis_tdata[6]),
        .Q(r0_data[6]),
        .R(1'b0));
  FDRE \r0_data_reg[7] 
       (.C(aclk),
        .CE(r0_last),
        .D(s_axis_tdata[7]),
        .Q(r0_data[7]),
        .R(1'b0));
  FDRE \r0_data_reg[8] 
       (.C(aclk),
        .CE(r0_last),
        .D(s_axis_tdata[8]),
        .Q(r0_data[8]),
        .R(1'b0));
  FDRE \r0_data_reg[9] 
       (.C(aclk),
        .CE(r0_last),
        .D(s_axis_tdata[9]),
        .Q(r0_data[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \r0_dest[0]_i_1 
       (.I0(s_axis_tdest),
        .I1(s_axis_tvalid),
        .I2(aclken),
        .I3(s_axis_tready),
        .I4(r0_dest),
        .O(\r0_dest[0]_i_1_n_0 ));
  FDRE \r0_dest_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\r0_dest[0]_i_1_n_0 ),
        .Q(r0_dest),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \r0_id[0]_i_1 
       (.I0(s_axis_tid),
        .I1(s_axis_tvalid),
        .I2(aclken),
        .I3(s_axis_tready),
        .I4(\r0_id_reg_n_0_[0] ),
        .O(\r0_id[0]_i_1_n_0 ));
  FDRE \r0_id_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\r0_id[0]_i_1_n_0 ),
        .Q(\r0_id_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \r0_keep_reg[0] 
       (.C(aclk),
        .CE(r0_last),
        .D(s_axis_tkeep[0]),
        .Q(r0_keep[0]),
        .R(1'b0));
  FDRE \r0_keep_reg[1] 
       (.C(aclk),
        .CE(r0_last),
        .D(s_axis_tkeep[1]),
        .Q(r0_keep[1]),
        .R(1'b0));
  FDRE r0_last_reg
       (.C(aclk),
        .CE(r0_last),
        .D(s_axis_tlast),
        .Q(r0_last_reg_n_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    \r0_reg_sel[0]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(m_axis_tready),
        .I3(aclken),
        .I4(SR),
        .O(\r0_reg_sel[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \r0_reg_sel[0]_i_2 
       (.I0(\r0_reg_sel_reg_n_0_[0] ),
        .I1(p_0_in1_in),
        .I2(aclken),
        .O(\r0_reg_sel[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0000EA2A)) 
    \r0_reg_sel[1]_i_1 
       (.I0(\r0_reg_sel_reg_n_0_[1] ),
        .I1(p_0_in1_in),
        .I2(aclken),
        .I3(\r0_reg_sel_reg_n_0_[0] ),
        .I4(\r0_reg_sel[0]_i_1_n_0 ),
        .O(\r0_reg_sel[1]_i_1_n_0 ));
  FDSE \r0_reg_sel_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\r0_reg_sel[0]_i_2_n_0 ),
        .Q(\r0_reg_sel_reg_n_0_[0] ),
        .S(\r0_reg_sel[0]_i_1_n_0 ));
  FDRE \r0_reg_sel_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\r0_reg_sel[1]_i_1_n_0 ),
        .Q(\r0_reg_sel_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \r0_strb_reg[0] 
       (.C(aclk),
        .CE(r0_last),
        .D(s_axis_tstrb[0]),
        .Q(r0_strb[0]),
        .R(1'b0));
  FDRE \r0_strb_reg[1] 
       (.C(aclk),
        .CE(r0_last),
        .D(s_axis_tstrb[1]),
        .Q(r0_strb[1]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h5554)) 
    s_axis_tready_INST_0
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(p_0_in1_in),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .O(s_axis_tready));
  LUT5 #(
    .INIT(32'hFFAEFAAE)) 
    \state[0]_i_1 
       (.I0(\state[0]_i_2_n_0 ),
        .I1(\r0_reg_sel_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(m_axis_tready),
        .O(state[0]));
  LUT6 #(
    .INIT(64'h44444444777F7F7F)) 
    \state[0]_i_2 
       (.I0(s_axis_tvalid),
        .I1(\state_reg_n_0_[0] ),
        .I2(\acc_strb[3]_i_2_n_0 ),
        .I3(r0_last_reg_n_0),
        .I4(\state_reg_n_0_[2] ),
        .I5(\state_reg_n_0_[1] ),
        .O(\state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFECCFECCEECCFECC)) 
    \state[1]_i_1 
       (.I0(\FSM_onehot_state[4]_i_5_n_0 ),
        .I1(\state[1]_i_2_n_0 ),
        .I2(\acc_strb[3]_i_2_n_0 ),
        .I3(\state[1]_i_3_n_0 ),
        .I4(\r0_reg_sel_reg_n_0_[0] ),
        .I5(\state_reg_n_0_[2] ),
        .O(state[1]));
  LUT5 #(
    .INIT(32'h000F8080)) 
    \state[1]_i_2 
       (.I0(r0_last_reg_n_0),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(m_axis_tready),
        .I4(\state_reg_n_0_[1] ),
        .O(\state[1]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \state[1]_i_3 
       (.I0(\state_reg_n_0_[1] ),
        .I1(s_axis_tvalid),
        .I2(\state_reg_n_0_[0] ),
        .O(\state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAEAAA)) 
    \state[2]_i_1 
       (.I0(\state[2]_i_2_n_0 ),
        .I1(\state[2]_i_3_n_0 ),
        .I2(\state_reg_n_0_[0] ),
        .I3(s_axis_tvalid),
        .I4(\state_reg_n_0_[1] ),
        .I5(\acc_strb[3]_i_2_n_0 ),
        .O(state[2]));
  LUT6 #(
    .INIT(64'h00CF000080808080)) 
    \state[2]_i_2 
       (.I0(\state[2]_i_4_n_0 ),
        .I1(s_axis_tvalid),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(m_axis_tready),
        .I5(\state_reg_n_0_[1] ),
        .O(\state[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0005003F)) 
    \state[2]_i_3 
       (.I0(\state_reg_n_0_[2] ),
        .I1(p_0_in1_in),
        .I2(\r0_reg_sel_reg_n_0_[0] ),
        .I3(\r0_reg_sel_reg_n_0_[1] ),
        .I4(r0_last_reg_n_0),
        .O(\state[2]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \state[2]_i_4 
       (.I0(\r0_reg_sel_reg_n_0_[1] ),
        .I1(p_0_in1_in),
        .I2(\r0_reg_sel_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[2] ),
        .O(\state[2]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(aclk),
        .CE(aclken),
        .D(state[0]),
        .Q(\state_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(aclk),
        .CE(aclken),
        .D(state[1]),
        .Q(\state_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(aclk),
        .CE(aclken),
        .D(state[2]),
        .Q(\state_reg_n_0_[2] ),
        .R(SR));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
