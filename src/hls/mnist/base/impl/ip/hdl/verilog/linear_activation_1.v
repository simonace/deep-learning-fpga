// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module linear_activation_1 (
        ap_clk,
        ap_rst,
        ap_start,
        start_full_n,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        start_out,
        start_write,
        data_in_V_V_dout,
        data_in_V_V_empty_n,
        data_in_V_V_read,
        data_out_V_V_din,
        data_out_V_V_full_n,
        data_out_V_V_write
);

parameter    ap_ST_fsm_state1 = 5'd1;
parameter    ap_ST_fsm_pp0_stage0 = 5'd2;
parameter    ap_ST_fsm_state6 = 5'd4;
parameter    ap_ST_fsm_pp1_stage0 = 5'd8;
parameter    ap_ST_fsm_state10 = 5'd16;

input   ap_clk;
input   ap_rst;
input   ap_start;
input   start_full_n;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output   start_out;
output   start_write;
input  [31:0] data_in_V_V_dout;
input   data_in_V_V_empty_n;
output   data_in_V_V_read;
output  [31:0] data_out_V_V_din;
input   data_out_V_V_full_n;
output   data_out_V_V_write;

reg ap_done;
reg ap_idle;
reg start_write;
reg data_in_V_V_read;
reg data_out_V_V_write;

reg    real_start;
reg    start_once_reg;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    internal_ap_ready;
wire   [5:0] L2_WEIGHTS_V_address0;
reg    L2_WEIGHTS_V_ce0;
wire   [79:0] L2_WEIGHTS_V_q0;
wire   [3:0] L2_BIAS_V_address0;
reg    L2_BIAS_V_ce0;
wire   [7:0] L2_BIAS_V_q0;
reg    data_in_V_V_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] exitcond5_reg_596;
reg    data_out_V_V_blk_n;
reg    ap_enable_reg_pp1_iter2;
wire    ap_block_pp1_stage0;
reg   [0:0] exitcond_reg_774;
reg   [0:0] ap_reg_pp1_iter1_exitcond_reg_774;
reg   [31:0] acc_9_V_reg_159;
reg   [31:0] acc_8_V_reg_171;
reg   [31:0] acc_7_V_reg_183;
reg   [31:0] acc_6_V_reg_195;
reg   [31:0] acc_5_V_reg_207;
reg   [31:0] acc_4_V_reg_219;
reg   [31:0] acc_3_V_reg_231;
reg   [31:0] acc_2_V_reg_243;
reg   [31:0] acc_1_V_reg_255;
reg   [31:0] acc_0_V_reg_267;
reg   [6:0] ii_reg_279;
reg   [3:0] ires_reg_290;
wire   [0:0] exitcond5_fu_302_p2;
wire    ap_block_state2_pp0_stage0_iter0;
reg    ap_block_state3_pp0_stage0_iter1;
wire    ap_block_state4_pp0_stage0_iter2;
wire    ap_block_state5_pp0_stage0_iter3;
reg    ap_block_pp0_stage0_11001;
reg   [0:0] ap_reg_pp0_iter1_exitcond5_reg_596;
reg   [0:0] ap_reg_pp0_iter2_exitcond5_reg_596;
wire   [6:0] ii_2_fu_308_p2;
reg    ap_enable_reg_pp0_iter0;
reg  signed [31:0] tmp_V_1_reg_610;
wire   [7:0] tmp_1_fu_319_p1;
reg   [7:0] tmp_1_reg_624;
reg   [7:0] tmp_4_reg_629;
reg   [7:0] tmp_5_reg_634;
reg   [7:0] tmp_6_reg_639;
reg   [7:0] tmp_9_reg_644;
reg   [7:0] tmp_10_reg_649;
reg   [7:0] tmp_11_reg_654;
reg   [7:0] tmp_12_reg_659;
reg   [7:0] tmp_13_reg_664;
reg   [7:0] tmp_14_reg_669;
wire   [31:0] tmp_3_fu_416_p2;
reg   [31:0] tmp_3_reg_674;
wire   [31:0] tmp_12_1_fu_424_p2;
reg   [31:0] tmp_12_1_reg_679;
wire   [31:0] tmp_12_2_fu_432_p2;
reg   [31:0] tmp_12_2_reg_684;
wire   [31:0] tmp_12_3_fu_440_p2;
reg   [31:0] tmp_12_3_reg_689;
wire   [31:0] tmp_12_4_fu_448_p2;
reg   [31:0] tmp_12_4_reg_694;
wire   [31:0] tmp_12_5_fu_456_p2;
reg   [31:0] tmp_12_5_reg_699;
wire   [31:0] tmp_12_6_fu_464_p2;
reg   [31:0] tmp_12_6_reg_704;
wire   [31:0] tmp_12_7_fu_472_p2;
reg   [31:0] tmp_12_7_reg_709;
wire   [31:0] tmp_12_8_fu_480_p2;
reg   [31:0] tmp_12_8_reg_714;
wire   [31:0] tmp_12_9_fu_488_p2;
reg   [31:0] tmp_12_9_reg_719;
wire   [31:0] acc_0_V_1_fu_493_p2;
reg    ap_enable_reg_pp0_iter3;
wire   [31:0] acc_1_V_1_fu_498_p2;
wire   [31:0] acc_2_V_1_fu_503_p2;
wire   [31:0] acc_3_V_1_fu_508_p2;
wire   [31:0] acc_4_V_1_fu_513_p2;
wire   [31:0] acc_5_V_1_fu_518_p2;
wire   [31:0] acc_6_V_1_fu_523_p2;
wire   [31:0] acc_7_V_1_fu_528_p2;
wire   [31:0] acc_8_V_1_fu_533_p2;
wire   [31:0] acc_9_V_1_fu_538_p2;
wire   [0:0] exitcond_fu_543_p2;
wire    ap_CS_fsm_pp1_stage0;
wire    ap_block_state7_pp1_stage0_iter0;
wire    ap_block_state8_pp1_stage0_iter1;
reg    ap_block_state9_pp1_stage0_iter2;
reg    ap_block_pp1_stage0_11001;
wire   [3:0] ires_1_fu_549_p2;
reg   [3:0] ires_1_reg_778;
reg    ap_enable_reg_pp1_iter0;
wire   [31:0] tmp_V_fu_590_p2;
reg   [31:0] tmp_V_reg_788;
reg    ap_block_state1;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
reg    ap_enable_reg_pp0_iter2;
wire    ap_CS_fsm_state6;
reg    ap_block_pp1_stage0_subdone;
reg    ap_condition_pp1_exit_iter0_state7;
reg    ap_enable_reg_pp1_iter1;
reg   [3:0] ap_phi_mux_ires_phi_fu_294_p4;
wire   [63:0] tmp_s_fu_314_p1;
wire   [63:0] tmp_7_fu_555_p1;
reg    ap_block_pp1_stage0_01001;
wire  signed [7:0] tmp_3_fu_416_p0;
wire  signed [7:0] tmp_12_1_fu_424_p0;
wire  signed [7:0] tmp_12_2_fu_432_p0;
wire  signed [7:0] tmp_12_3_fu_440_p0;
wire  signed [7:0] tmp_12_4_fu_448_p0;
wire  signed [7:0] tmp_12_5_fu_456_p0;
wire  signed [7:0] tmp_12_6_fu_464_p0;
wire  signed [7:0] tmp_12_7_fu_472_p0;
wire  signed [7:0] tmp_12_8_fu_480_p0;
wire  signed [7:0] tmp_12_9_fu_488_p0;
wire   [31:0] tmp_16_fu_560_p12;
wire  signed [31:0] tmp_8_fu_586_p1;
wire    ap_CS_fsm_state10;
reg   [4:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
reg    ap_idle_pp1;
wire    ap_enable_pp1;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 5'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp1_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp1_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp1_iter1 = 1'b0;
end

linear_activationfYi #(
    .DataWidth( 80 ),
    .AddressRange( 64 ),
    .AddressWidth( 6 ))
L2_WEIGHTS_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(L2_WEIGHTS_V_address0),
    .ce0(L2_WEIGHTS_V_ce0),
    .q0(L2_WEIGHTS_V_q0)
);

linear_activationg8j #(
    .DataWidth( 8 ),
    .AddressRange( 10 ),
    .AddressWidth( 4 ))
L2_BIAS_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(L2_BIAS_V_address0),
    .ce0(L2_BIAS_V_ce0),
    .q0(L2_BIAS_V_q0)
);

mnist_mux_104_32_hbi #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .din2_WIDTH( 32 ),
    .din3_WIDTH( 32 ),
    .din4_WIDTH( 32 ),
    .din5_WIDTH( 32 ),
    .din6_WIDTH( 32 ),
    .din7_WIDTH( 32 ),
    .din8_WIDTH( 32 ),
    .din9_WIDTH( 32 ),
    .din10_WIDTH( 4 ),
    .dout_WIDTH( 32 ))
mnist_mux_104_32_hbi_U82(
    .din0(acc_0_V_reg_267),
    .din1(acc_1_V_reg_255),
    .din2(acc_2_V_reg_243),
    .din3(acc_3_V_reg_231),
    .din4(acc_4_V_reg_219),
    .din5(acc_5_V_reg_207),
    .din6(acc_6_V_reg_195),
    .din7(acc_7_V_reg_183),
    .din8(acc_8_V_reg_171),
    .din9(acc_9_V_reg_159),
    .din10(ires_reg_290),
    .dout(tmp_16_fu_560_p12)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state10)) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_pp0_exit_iter0_state2))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end else if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter3 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp1_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp1_stage0_subdone) & (1'b1 == ap_condition_pp1_exit_iter0_state7) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
            ap_enable_reg_pp1_iter0 <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state6)) begin
            ap_enable_reg_pp1_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp1_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp1_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp1_exit_iter0_state7)) begin
                ap_enable_reg_pp1_iter1 <= (1'b1 ^ ap_condition_pp1_exit_iter0_state7);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp1_iter1 <= ap_enable_reg_pp1_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp1_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp1_stage0_subdone)) begin
            ap_enable_reg_pp1_iter2 <= ap_enable_reg_pp1_iter1;
        end else if ((1'b1 == ap_CS_fsm_state6)) begin
            ap_enable_reg_pp1_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        start_once_reg <= 1'b0;
    end else begin
        if (((internal_ap_ready == 1'b0) & (real_start == 1'b1))) begin
            start_once_reg <= 1'b1;
        end else if ((internal_ap_ready == 1'b1)) begin
            start_once_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_reg_pp0_iter2_exitcond5_reg_596 == 1'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        acc_0_V_reg_267 <= acc_0_V_1_fu_493_p2;
    end else if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        acc_0_V_reg_267 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_reg_pp0_iter2_exitcond5_reg_596 == 1'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        acc_1_V_reg_255 <= acc_1_V_1_fu_498_p2;
    end else if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        acc_1_V_reg_255 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_reg_pp0_iter2_exitcond5_reg_596 == 1'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        acc_2_V_reg_243 <= acc_2_V_1_fu_503_p2;
    end else if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        acc_2_V_reg_243 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_reg_pp0_iter2_exitcond5_reg_596 == 1'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        acc_3_V_reg_231 <= acc_3_V_1_fu_508_p2;
    end else if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        acc_3_V_reg_231 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_reg_pp0_iter2_exitcond5_reg_596 == 1'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        acc_4_V_reg_219 <= acc_4_V_1_fu_513_p2;
    end else if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        acc_4_V_reg_219 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_reg_pp0_iter2_exitcond5_reg_596 == 1'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        acc_5_V_reg_207 <= acc_5_V_1_fu_518_p2;
    end else if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        acc_5_V_reg_207 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_reg_pp0_iter2_exitcond5_reg_596 == 1'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        acc_6_V_reg_195 <= acc_6_V_1_fu_523_p2;
    end else if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        acc_6_V_reg_195 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_reg_pp0_iter2_exitcond5_reg_596 == 1'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        acc_7_V_reg_183 <= acc_7_V_1_fu_528_p2;
    end else if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        acc_7_V_reg_183 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_reg_pp0_iter2_exitcond5_reg_596 == 1'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        acc_8_V_reg_171 <= acc_8_V_1_fu_533_p2;
    end else if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        acc_8_V_reg_171 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_reg_pp0_iter2_exitcond5_reg_596 == 1'd0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        acc_9_V_reg_159 <= acc_9_V_1_fu_538_p2;
    end else if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        acc_9_V_reg_159 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond5_fu_302_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ii_reg_279 <= ii_2_fu_308_p2;
    end else if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        ii_reg_279 <= 7'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        ires_reg_290 <= 4'd0;
    end else if (((exitcond_reg_774 == 1'd0) & (1'b0 == ap_block_pp1_stage0_11001) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        ires_reg_290 <= ires_1_reg_778;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ap_reg_pp0_iter1_exitcond5_reg_596 <= exitcond5_reg_596;
        exitcond5_reg_596 <= exitcond5_fu_302_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_reg_pp0_iter2_exitcond5_reg_596 <= ap_reg_pp0_iter1_exitcond5_reg_596;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp1_stage0_11001) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        ap_reg_pp1_iter1_exitcond_reg_774 <= exitcond_reg_774;
        exitcond_reg_774 <= exitcond_fu_543_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp1_stage0_11001) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        ires_1_reg_778 <= ires_1_fu_549_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond5_reg_596 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_10_reg_649 <= {{L2_WEIGHTS_V_q0[47:40]}};
        tmp_11_reg_654 <= {{L2_WEIGHTS_V_q0[55:48]}};
        tmp_12_reg_659 <= {{L2_WEIGHTS_V_q0[63:56]}};
        tmp_13_reg_664 <= {{L2_WEIGHTS_V_q0[71:64]}};
        tmp_14_reg_669 <= {{L2_WEIGHTS_V_q0[79:72]}};
        tmp_1_reg_624 <= tmp_1_fu_319_p1;
        tmp_4_reg_629 <= {{L2_WEIGHTS_V_q0[15:8]}};
        tmp_5_reg_634 <= {{L2_WEIGHTS_V_q0[23:16]}};
        tmp_6_reg_639 <= {{L2_WEIGHTS_V_q0[31:24]}};
        tmp_9_reg_644 <= {{L2_WEIGHTS_V_q0[39:32]}};
        tmp_V_1_reg_610 <= data_in_V_V_dout;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_reg_pp0_iter1_exitcond5_reg_596 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_12_1_reg_679 <= tmp_12_1_fu_424_p2;
        tmp_12_2_reg_684 <= tmp_12_2_fu_432_p2;
        tmp_12_3_reg_689 <= tmp_12_3_fu_440_p2;
        tmp_12_4_reg_694 <= tmp_12_4_fu_448_p2;
        tmp_12_5_reg_699 <= tmp_12_5_fu_456_p2;
        tmp_12_6_reg_704 <= tmp_12_6_fu_464_p2;
        tmp_12_7_reg_709 <= tmp_12_7_fu_472_p2;
        tmp_12_8_reg_714 <= tmp_12_8_fu_480_p2;
        tmp_12_9_reg_719 <= tmp_12_9_fu_488_p2;
        tmp_3_reg_674 <= tmp_3_fu_416_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_reg_774 == 1'd0) & (1'b0 == ap_block_pp1_stage0_11001) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        tmp_V_reg_788 <= tmp_V_fu_590_p2;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0_11001) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        L2_BIAS_V_ce0 = 1'b1;
    end else begin
        L2_BIAS_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        L2_WEIGHTS_V_ce0 = 1'b1;
    end else begin
        L2_WEIGHTS_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((exitcond5_fu_302_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state2 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state2 = 1'b0;
    end
end

always @ (*) begin
    if ((exitcond_fu_543_p2 == 1'd1)) begin
        ap_condition_pp1_exit_iter0_state7 = 1'b1;
    end else begin
        ap_condition_pp1_exit_iter0_state7 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((real_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp1_iter2 == 1'b0) & (ap_enable_reg_pp1_iter1 == 1'b0) & (ap_enable_reg_pp1_iter0 == 1'b0))) begin
        ap_idle_pp1 = 1'b1;
    end else begin
        ap_idle_pp1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0) & (exitcond_reg_774 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        ap_phi_mux_ires_phi_fu_294_p4 = ires_1_reg_778;
    end else begin
        ap_phi_mux_ires_phi_fu_294_p4 = ires_reg_290;
    end
end

always @ (*) begin
    if (((exitcond5_reg_596 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        data_in_V_V_blk_n = data_in_V_V_empty_n;
    end else begin
        data_in_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((exitcond5_reg_596 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        data_in_V_V_read = 1'b1;
    end else begin
        data_in_V_V_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0) & (ap_reg_pp1_iter1_exitcond_reg_774 == 1'd0) & (ap_enable_reg_pp1_iter2 == 1'b1))) begin
        data_out_V_V_blk_n = data_out_V_V_full_n;
    end else begin
        data_out_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_reg_pp1_iter1_exitcond_reg_774 == 1'd0) & (1'b0 == ap_block_pp1_stage0_11001) & (ap_enable_reg_pp1_iter2 == 1'b1))) begin
        data_out_V_V_write = 1'b1;
    end else begin
        data_out_V_V_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        internal_ap_ready = 1'b1;
    end else begin
        internal_ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (start_full_n == 1'b0))) begin
        real_start = 1'b0;
    end else begin
        real_start = ap_start;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (real_start == 1'b1))) begin
        start_write = 1'b1;
    end else begin
        start_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (exitcond5_fu_302_p2 == 1'd1)) & ~((ap_enable_reg_pp0_iter2 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((ap_enable_reg_pp0_iter2 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (exitcond5_fu_302_p2 == 1'd1)))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_pp1_stage0;
        end
        ap_ST_fsm_pp1_stage0 : begin
            if ((~((ap_enable_reg_pp1_iter1 == 1'b0) & (1'b0 == ap_block_pp1_stage0_subdone) & (exitcond_fu_543_p2 == 1'd1) & (ap_enable_reg_pp1_iter0 == 1'b1)) & ~((ap_enable_reg_pp1_iter1 == 1'b0) & (1'b0 == ap_block_pp1_stage0_subdone) & (ap_enable_reg_pp1_iter2 == 1'b1)))) begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage0;
            end else if ((((ap_enable_reg_pp1_iter1 == 1'b0) & (1'b0 == ap_block_pp1_stage0_subdone) & (ap_enable_reg_pp1_iter2 == 1'b1)) | ((ap_enable_reg_pp1_iter1 == 1'b0) & (1'b0 == ap_block_pp1_stage0_subdone) & (exitcond_fu_543_p2 == 1'd1) & (ap_enable_reg_pp1_iter0 == 1'b1)))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage0;
            end
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign L2_BIAS_V_address0 = tmp_7_fu_555_p1;

assign L2_WEIGHTS_V_address0 = tmp_s_fu_314_p1;

assign acc_0_V_1_fu_493_p2 = (acc_0_V_reg_267 + tmp_3_reg_674);

assign acc_1_V_1_fu_498_p2 = (acc_1_V_reg_255 + tmp_12_1_reg_679);

assign acc_2_V_1_fu_503_p2 = (acc_2_V_reg_243 + tmp_12_2_reg_684);

assign acc_3_V_1_fu_508_p2 = (acc_3_V_reg_231 + tmp_12_3_reg_689);

assign acc_4_V_1_fu_513_p2 = (acc_4_V_reg_219 + tmp_12_4_reg_694);

assign acc_5_V_1_fu_518_p2 = (acc_5_V_reg_207 + tmp_12_5_reg_699);

assign acc_6_V_1_fu_523_p2 = (acc_6_V_reg_195 + tmp_12_6_reg_704);

assign acc_7_V_1_fu_528_p2 = (acc_7_V_reg_183 + tmp_12_7_reg_709);

assign acc_8_V_1_fu_533_p2 = (acc_8_V_reg_171 + tmp_12_8_reg_714);

assign acc_9_V_1_fu_538_p2 = (acc_9_V_reg_159 + tmp_12_9_reg_719);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_pp1_stage0 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd2];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((exitcond5_reg_596 == 1'd0) & (data_in_V_V_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((exitcond5_reg_596 == 1'd0) & (data_in_V_V_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

assign ap_block_pp1_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp1_stage0_01001 = ((ap_reg_pp1_iter1_exitcond_reg_774 == 1'd0) & (data_out_V_V_full_n == 1'b0) & (ap_enable_reg_pp1_iter2 == 1'b1));
end

always @ (*) begin
    ap_block_pp1_stage0_11001 = ((ap_reg_pp1_iter1_exitcond_reg_774 == 1'd0) & (data_out_V_V_full_n == 1'b0) & (ap_enable_reg_pp1_iter2 == 1'b1));
end

always @ (*) begin
    ap_block_pp1_stage0_subdone = ((ap_reg_pp1_iter1_exitcond_reg_774 == 1'd0) & (data_out_V_V_full_n == 1'b0) & (ap_enable_reg_pp1_iter2 == 1'b1));
end

always @ (*) begin
    ap_block_state1 = ((real_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state3_pp0_stage0_iter1 = ((exitcond5_reg_596 == 1'd0) & (data_in_V_V_empty_n == 1'b0));
end

assign ap_block_state4_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp1_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp1_stage0_iter1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state9_pp1_stage0_iter2 = ((ap_reg_pp1_iter1_exitcond_reg_774 == 1'd0) & (data_out_V_V_full_n == 1'b0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_pp1 = (ap_idle_pp1 ^ 1'b1);

assign ap_ready = internal_ap_ready;

assign data_out_V_V_din = tmp_V_reg_788;

assign exitcond5_fu_302_p2 = ((ii_reg_279 == 7'd64) ? 1'b1 : 1'b0);

assign exitcond_fu_543_p2 = ((ap_phi_mux_ires_phi_fu_294_p4 == 4'd10) ? 1'b1 : 1'b0);

assign ii_2_fu_308_p2 = (ii_reg_279 + 7'd1);

assign ires_1_fu_549_p2 = (ap_phi_mux_ires_phi_fu_294_p4 + 4'd1);

assign start_out = real_start;

assign tmp_12_1_fu_424_p0 = tmp_4_reg_629;

assign tmp_12_1_fu_424_p2 = ($signed(tmp_12_1_fu_424_p0) * $signed(tmp_V_1_reg_610));

assign tmp_12_2_fu_432_p0 = tmp_5_reg_634;

assign tmp_12_2_fu_432_p2 = ($signed(tmp_12_2_fu_432_p0) * $signed(tmp_V_1_reg_610));

assign tmp_12_3_fu_440_p0 = tmp_6_reg_639;

assign tmp_12_3_fu_440_p2 = ($signed(tmp_12_3_fu_440_p0) * $signed(tmp_V_1_reg_610));

assign tmp_12_4_fu_448_p0 = tmp_9_reg_644;

assign tmp_12_4_fu_448_p2 = ($signed(tmp_12_4_fu_448_p0) * $signed(tmp_V_1_reg_610));

assign tmp_12_5_fu_456_p0 = tmp_10_reg_649;

assign tmp_12_5_fu_456_p2 = ($signed(tmp_12_5_fu_456_p0) * $signed(tmp_V_1_reg_610));

assign tmp_12_6_fu_464_p0 = tmp_11_reg_654;

assign tmp_12_6_fu_464_p2 = ($signed(tmp_12_6_fu_464_p0) * $signed(tmp_V_1_reg_610));

assign tmp_12_7_fu_472_p0 = tmp_12_reg_659;

assign tmp_12_7_fu_472_p2 = ($signed(tmp_12_7_fu_472_p0) * $signed(tmp_V_1_reg_610));

assign tmp_12_8_fu_480_p0 = tmp_13_reg_664;

assign tmp_12_8_fu_480_p2 = ($signed(tmp_12_8_fu_480_p0) * $signed(tmp_V_1_reg_610));

assign tmp_12_9_fu_488_p0 = tmp_14_reg_669;

assign tmp_12_9_fu_488_p2 = ($signed(tmp_12_9_fu_488_p0) * $signed(tmp_V_1_reg_610));

assign tmp_1_fu_319_p1 = L2_WEIGHTS_V_q0[7:0];

assign tmp_3_fu_416_p0 = tmp_1_reg_624;

assign tmp_3_fu_416_p2 = ($signed(tmp_3_fu_416_p0) * $signed(tmp_V_1_reg_610));

assign tmp_7_fu_555_p1 = ap_phi_mux_ires_phi_fu_294_p4;

assign tmp_8_fu_586_p1 = $signed(L2_BIAS_V_q0);

assign tmp_V_fu_590_p2 = ($signed(tmp_16_fu_560_p12) + $signed(tmp_8_fu_586_p1));

assign tmp_s_fu_314_p1 = ii_reg_279;

endmodule //linear_activation_1
