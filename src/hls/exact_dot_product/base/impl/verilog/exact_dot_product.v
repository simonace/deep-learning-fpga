// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="exact_dot_product,hls_ip_2017_4,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc7z020clg400-1,HLS_INPUT_CLOCK=5.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=4.150000,HLS_SYN_LAT=117,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=851,HLS_SYN_LUT=1295}" *)

module exact_dot_product (
        ap_clk,
        ap_rst_n,
        data_in_V_V_TDATA,
        data_in_V_V_TVALID,
        data_in_V_V_TREADY,
        data_out_V_V_TDATA,
        data_out_V_V_TVALID,
        data_out_V_V_TREADY
);

parameter    ap_ST_fsm_state1 = 5'd1;
parameter    ap_ST_fsm_pp0_stage0 = 5'd2;
parameter    ap_ST_fsm_state5 = 5'd4;
parameter    ap_ST_fsm_state6 = 5'd8;
parameter    ap_ST_fsm_state7 = 5'd16;

input   ap_clk;
input   ap_rst_n;
input  [15:0] data_in_V_V_TDATA;
input   data_in_V_V_TVALID;
output   data_in_V_V_TREADY;
output  [15:0] data_out_V_V_TDATA;
output   data_out_V_V_TVALID;
input   data_out_V_V_TREADY;

reg    ap_rst_n_inv;
reg   [15:0] data_in_V_V_0_data_out;
wire    data_in_V_V_0_vld_in;
wire    data_in_V_V_0_vld_out;
wire    data_in_V_V_0_ack_in;
reg    data_in_V_V_0_ack_out;
reg   [15:0] data_in_V_V_0_payload_A;
reg   [15:0] data_in_V_V_0_payload_B;
reg    data_in_V_V_0_sel_rd;
reg    data_in_V_V_0_sel_wr;
wire    data_in_V_V_0_sel;
wire    data_in_V_V_0_load_A;
wire    data_in_V_V_0_load_B;
reg   [1:0] data_in_V_V_0_state;
wire    data_in_V_V_0_state_cmp_full;
reg   [15:0] data_out_V_V_1_data_out;
reg    data_out_V_V_1_vld_in;
wire    data_out_V_V_1_vld_out;
wire    data_out_V_V_1_ack_in;
wire    data_out_V_V_1_ack_out;
reg   [15:0] data_out_V_V_1_payload_A;
reg   [15:0] data_out_V_V_1_payload_B;
reg    data_out_V_V_1_sel_rd;
reg    data_out_V_V_1_sel_wr;
wire    data_out_V_V_1_sel;
wire    data_out_V_V_1_load_A;
wire    data_out_V_V_1_load_B;
reg   [1:0] data_out_V_V_1_state;
wire    data_out_V_V_1_state_cmp_full;
reg    data_in_V_V_TDATA_blk_n;
(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] exitcond_reg_209;
reg    data_out_V_V_TDATA_blk_n;
wire    ap_CS_fsm_state6;
wire    ap_CS_fsm_state7;
reg   [71:0] CompleteRegister_m_c_reg_87;
reg   [6:0] i_reg_99;
wire   [0:0] exitcond_fu_117_p2;
wire    ap_block_state2_pp0_stage0_iter0;
reg    ap_block_state3_pp0_stage0_iter1;
wire    ap_block_state4_pp0_stage0_iter2;
reg    ap_block_pp0_stage0_11001;
reg   [0:0] ap_reg_pp0_iter1_exitcond_reg_209;
wire   [6:0] i_1_fu_123_p2;
reg    ap_enable_reg_pp0_iter0;
reg   [15:0] tmp_V_2_reg_218;
wire   [21:0] r_V_cast_fu_153_p1;
reg   [21:0] r_V_cast_reg_223;
wire   [21:0] agg_result_V_assign_s_fu_157_p2;
reg   [21:0] agg_result_V_assign_s_reg_228;
wire   [5:0] op2_assign_fu_167_p2;
reg   [5:0] op2_assign_reg_233;
wire   [71:0] cr_m_cr_V_fu_203_p2;
reg    ap_enable_reg_pp0_iter2;
wire   [15:0] grp_get_result_fu_110_ap_return;
wire    grp_get_result_fu_110_ap_done;
wire    ap_CS_fsm_state1;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
wire    grp_get_result_fu_110_ap_start;
wire    grp_get_result_fu_110_ap_idle;
wire    grp_get_result_fu_110_ap_ready;
reg    ap_reg_grp_get_result_fu_110_ap_start;
wire    ap_CS_fsm_state5;
wire   [9:0] tmp_24_fu_129_p1;
wire   [20:0] r_V_fu_143_p4;
wire   [4:0] e2_V_fu_133_p4;
wire   [5:0] tmp_i_cast_fu_163_p1;
wire   [0:0] sign_fu_173_p3;
wire   [21:0] result_V_fu_180_p3;
wire  signed [64:0] shifted_V_cast_fu_186_p1;
wire   [64:0] tmp_i_cast_9_fu_190_p1;
wire   [64:0] r_V_1_fu_193_p2;
wire  signed [71:0] r_V_2_cast_fu_199_p1;
reg   [4:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 data_in_V_V_0_sel_rd = 1'b0;
#0 data_in_V_V_0_sel_wr = 1'b0;
#0 data_in_V_V_0_state = 2'd0;
#0 data_out_V_V_1_sel_rd = 1'b0;
#0 data_out_V_V_1_sel_wr = 1'b0;
#0 data_out_V_V_1_state = 2'd0;
#0 ap_CS_fsm = 5'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_reg_grp_get_result_fu_110_ap_start = 1'b0;
end

get_result grp_get_result_fu_110(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(grp_get_result_fu_110_ap_start),
    .ap_done(grp_get_result_fu_110_ap_done),
    .ap_idle(grp_get_result_fu_110_ap_idle),
    .ap_ready(grp_get_result_fu_110_ap_ready),
    .CompleteRegister_m_cr_V_read(CompleteRegister_m_c_reg_87),
    .ap_return(grp_get_result_fu_110_ap_return)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_pp0_exit_iter0_state2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state1)) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state2)) begin
                ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state2);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end else if ((1'b1 == ap_CS_fsm_state1)) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_reg_grp_get_result_fu_110_ap_start <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            ap_reg_grp_get_result_fu_110_ap_start <= 1'b1;
        end else if ((grp_get_result_fu_110_ap_ready == 1'b1)) begin
            ap_reg_grp_get_result_fu_110_ap_start <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        data_in_V_V_0_sel_rd <= 1'b0;
    end else begin
        if (((data_in_V_V_0_ack_out == 1'b1) & (data_in_V_V_0_vld_out == 1'b1))) begin
            data_in_V_V_0_sel_rd <= ~data_in_V_V_0_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        data_in_V_V_0_sel_wr <= 1'b0;
    end else begin
        if (((data_in_V_V_0_ack_in == 1'b1) & (data_in_V_V_0_vld_in == 1'b1))) begin
            data_in_V_V_0_sel_wr <= ~data_in_V_V_0_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        data_in_V_V_0_state <= 2'd0;
    end else begin
        if ((((data_in_V_V_0_state == 2'd2) & (data_in_V_V_0_vld_in == 1'b0)) | ((data_in_V_V_0_state == 2'd3) & (data_in_V_V_0_vld_in == 1'b0) & (data_in_V_V_0_ack_out == 1'b1)))) begin
            data_in_V_V_0_state <= 2'd2;
        end else if ((((data_in_V_V_0_state == 2'd1) & (data_in_V_V_0_ack_out == 1'b0)) | ((data_in_V_V_0_state == 2'd3) & (data_in_V_V_0_ack_out == 1'b0) & (data_in_V_V_0_vld_in == 1'b1)))) begin
            data_in_V_V_0_state <= 2'd1;
        end else if (((~((data_in_V_V_0_vld_in == 1'b0) & (data_in_V_V_0_ack_out == 1'b1)) & ~((data_in_V_V_0_ack_out == 1'b0) & (data_in_V_V_0_vld_in == 1'b1)) & (data_in_V_V_0_state == 2'd3)) | ((data_in_V_V_0_state == 2'd1) & (data_in_V_V_0_ack_out == 1'b1)) | ((data_in_V_V_0_state == 2'd2) & (data_in_V_V_0_vld_in == 1'b1)))) begin
            data_in_V_V_0_state <= 2'd3;
        end else begin
            data_in_V_V_0_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        data_out_V_V_1_sel_rd <= 1'b0;
    end else begin
        if (((data_out_V_V_1_ack_out == 1'b1) & (data_out_V_V_1_vld_out == 1'b1))) begin
            data_out_V_V_1_sel_rd <= ~data_out_V_V_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        data_out_V_V_1_sel_wr <= 1'b0;
    end else begin
        if (((data_out_V_V_1_ack_in == 1'b1) & (data_out_V_V_1_vld_in == 1'b1))) begin
            data_out_V_V_1_sel_wr <= ~data_out_V_V_1_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        data_out_V_V_1_state <= 2'd0;
    end else begin
        if ((((data_out_V_V_1_state == 2'd2) & (data_out_V_V_1_vld_in == 1'b0)) | ((data_out_V_V_1_state == 2'd3) & (data_out_V_V_1_vld_in == 1'b0) & (data_out_V_V_1_ack_out == 1'b1)))) begin
            data_out_V_V_1_state <= 2'd2;
        end else if ((((data_out_V_V_1_state == 2'd1) & (data_out_V_V_1_ack_out == 1'b0)) | ((data_out_V_V_1_state == 2'd3) & (data_out_V_V_1_ack_out == 1'b0) & (data_out_V_V_1_vld_in == 1'b1)))) begin
            data_out_V_V_1_state <= 2'd1;
        end else if (((~((data_out_V_V_1_vld_in == 1'b0) & (data_out_V_V_1_ack_out == 1'b1)) & ~((data_out_V_V_1_ack_out == 1'b0) & (data_out_V_V_1_vld_in == 1'b1)) & (data_out_V_V_1_state == 2'd3)) | ((data_out_V_V_1_state == 2'd1) & (data_out_V_V_1_ack_out == 1'b1)) | ((data_out_V_V_1_state == 2'd2) & (data_out_V_V_1_vld_in == 1'b1)))) begin
            data_out_V_V_1_state <= 2'd3;
        end else begin
            data_out_V_V_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_reg_pp0_iter1_exitcond_reg_209 == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        CompleteRegister_m_c_reg_87 <= cr_m_cr_V_fu_203_p2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        CompleteRegister_m_c_reg_87 <= 72'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_fu_117_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        i_reg_99 <= i_1_fu_123_p2;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        i_reg_99 <= 7'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_reg_209 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        agg_result_V_assign_s_reg_228[21 : 10] <= agg_result_V_assign_s_fu_157_p2[21 : 10];
        op2_assign_reg_233 <= op2_assign_fu_167_p2;
        r_V_cast_reg_223[19 : 10] <= r_V_cast_fu_153_p1[19 : 10];
        tmp_V_2_reg_218 <= data_in_V_V_0_data_out;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ap_reg_pp0_iter1_exitcond_reg_209 <= exitcond_reg_209;
        exitcond_reg_209 <= exitcond_fu_117_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((data_in_V_V_0_load_A == 1'b1)) begin
        data_in_V_V_0_payload_A <= data_in_V_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if ((data_in_V_V_0_load_B == 1'b1)) begin
        data_in_V_V_0_payload_B <= data_in_V_V_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if ((data_out_V_V_1_load_A == 1'b1)) begin
        data_out_V_V_1_payload_A <= grp_get_result_fu_110_ap_return;
    end
end

always @ (posedge ap_clk) begin
    if ((data_out_V_V_1_load_B == 1'b1)) begin
        data_out_V_V_1_payload_B <= grp_get_result_fu_110_ap_return;
    end
end

always @ (*) begin
    if ((exitcond_fu_117_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state2 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state2 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_reg_209 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        data_in_V_V_0_ack_out = 1'b1;
    end else begin
        data_in_V_V_0_ack_out = 1'b0;
    end
end

always @ (*) begin
    if ((data_in_V_V_0_sel == 1'b1)) begin
        data_in_V_V_0_data_out = data_in_V_V_0_payload_B;
    end else begin
        data_in_V_V_0_data_out = data_in_V_V_0_payload_A;
    end
end

always @ (*) begin
    if (((exitcond_reg_209 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        data_in_V_V_TDATA_blk_n = data_in_V_V_0_state[1'd0];
    end else begin
        data_in_V_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((data_out_V_V_1_sel == 1'b1)) begin
        data_out_V_V_1_data_out = data_out_V_V_1_payload_B;
    end else begin
        data_out_V_V_1_data_out = data_out_V_V_1_payload_A;
    end
end

always @ (*) begin
    if ((~((data_out_V_V_1_ack_in == 1'b0) | (grp_get_result_fu_110_ap_done == 1'b0)) & (1'b1 == ap_CS_fsm_state6))) begin
        data_out_V_V_1_vld_in = 1'b1;
    end else begin
        data_out_V_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        data_out_V_V_TDATA_blk_n = data_out_V_V_1_state[1'd1];
    end else begin
        data_out_V_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((exitcond_fu_117_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0)) & ~((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0)) | ((exitcond_fu_117_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if ((~((data_out_V_V_1_ack_in == 1'b0) | (grp_get_result_fu_110_ap_done == 1'b0)) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            if (((data_out_V_V_1_ack_in == 1'b1) & (1'b1 == ap_CS_fsm_state7))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign agg_result_V_assign_s_fu_157_p2 = (22'd0 - r_V_cast_fu_153_p1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd4];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((exitcond_reg_209 == 1'd0) & (data_in_V_V_0_vld_out == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((exitcond_reg_209 == 1'd0) & (data_in_V_V_0_vld_out == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state3_pp0_stage0_iter1 = ((exitcond_reg_209 == 1'd0) & (data_in_V_V_0_vld_out == 1'b0));
end

assign ap_block_state4_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign cr_m_cr_V_fu_203_p2 = ($signed(CompleteRegister_m_c_reg_87) + $signed(r_V_2_cast_fu_199_p1));

assign data_in_V_V_0_ack_in = data_in_V_V_0_state[1'd1];

assign data_in_V_V_0_load_A = (~data_in_V_V_0_sel_wr & data_in_V_V_0_state_cmp_full);

assign data_in_V_V_0_load_B = (data_in_V_V_0_state_cmp_full & data_in_V_V_0_sel_wr);

assign data_in_V_V_0_sel = data_in_V_V_0_sel_rd;

assign data_in_V_V_0_state_cmp_full = ((data_in_V_V_0_state != 2'd1) ? 1'b1 : 1'b0);

assign data_in_V_V_0_vld_in = data_in_V_V_TVALID;

assign data_in_V_V_0_vld_out = data_in_V_V_0_state[1'd0];

assign data_in_V_V_TREADY = data_in_V_V_0_state[1'd1];

assign data_out_V_V_1_ack_in = data_out_V_V_1_state[1'd1];

assign data_out_V_V_1_ack_out = data_out_V_V_TREADY;

assign data_out_V_V_1_load_A = (~data_out_V_V_1_sel_wr & data_out_V_V_1_state_cmp_full);

assign data_out_V_V_1_load_B = (data_out_V_V_1_state_cmp_full & data_out_V_V_1_sel_wr);

assign data_out_V_V_1_sel = data_out_V_V_1_sel_rd;

assign data_out_V_V_1_state_cmp_full = ((data_out_V_V_1_state != 2'd1) ? 1'b1 : 1'b0);

assign data_out_V_V_1_vld_out = data_out_V_V_1_state[1'd0];

assign data_out_V_V_TDATA = data_out_V_V_1_data_out;

assign data_out_V_V_TVALID = data_out_V_V_1_state[1'd0];

assign e2_V_fu_133_p4 = {{data_in_V_V_0_data_out[14:10]}};

assign exitcond_fu_117_p2 = ((i_reg_99 == 7'd100) ? 1'b1 : 1'b0);

assign grp_get_result_fu_110_ap_start = ap_reg_grp_get_result_fu_110_ap_start;

assign i_1_fu_123_p2 = (i_reg_99 + 7'd1);

assign op2_assign_fu_167_p2 = (6'd12 + tmp_i_cast_fu_163_p1);

assign r_V_1_fu_193_p2 = shifted_V_cast_fu_186_p1 << tmp_i_cast_9_fu_190_p1;

assign r_V_2_cast_fu_199_p1 = $signed(r_V_1_fu_193_p2);

assign r_V_cast_fu_153_p1 = r_V_fu_143_p4;

assign r_V_fu_143_p4 = {{{{1'd1}, {tmp_24_fu_129_p1}}}, {10'd0}};

assign result_V_fu_180_p3 = ((sign_fu_173_p3[0:0] === 1'b1) ? agg_result_V_assign_s_reg_228 : r_V_cast_reg_223);

assign shifted_V_cast_fu_186_p1 = $signed(result_V_fu_180_p3);

assign sign_fu_173_p3 = tmp_V_2_reg_218[32'd15];

assign tmp_24_fu_129_p1 = data_in_V_V_0_data_out[9:0];

assign tmp_i_cast_9_fu_190_p1 = op2_assign_reg_233;

assign tmp_i_cast_fu_163_p1 = e2_V_fu_133_p4;

always @ (posedge ap_clk) begin
    r_V_cast_reg_223[9:0] <= 10'b0000000000;
    r_V_cast_reg_223[21:20] <= 2'b01;
    agg_result_V_assign_s_reg_228[9:0] <= 10'b0000000000;
end

endmodule //exact_dot_product
