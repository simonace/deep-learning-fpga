// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module get_result (
        ap_clk,
        ap_rst,
        CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read,
        ap_return,
        ap_ce
);

parameter    ap_const_lv64_FFFFFFFFFFFFFFFF = 64'd18446744073709551615;


input   ap_clk;
input   ap_rst;
input  [79:0] CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read;
output  [15:0] ap_return;
input   ap_ce;

reg   [79:0] CompleteRegister_m_c_reg_853;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] tmp_fu_92_p3;
reg   [0:0] tmp_reg_858;
wire   [0:0] tmp_10_fu_206_p2;
reg   [0:0] tmp_10_reg_864;
wire   [4:0] tmp_74_fu_272_p1;
reg   [4:0] tmp_74_reg_869;
reg   [0:0] tmp_75_reg_874;
wire   [0:0] tmp_76_fu_298_p3;
reg   [0:0] tmp_76_reg_879;
wire   [0:0] tmp_36_1_fu_306_p2;
reg   [0:0] tmp_36_1_reg_884;
wire   [0:0] tmp_77_fu_322_p3;
reg   [0:0] tmp_77_reg_889;
reg   [0:0] tmp_78_reg_894;
wire   [0:0] tmp_79_fu_348_p3;
reg   [0:0] tmp_79_reg_900;
reg   [0:0] tmp_80_reg_906;
wire   [0:0] tmp_81_fu_374_p3;
reg   [0:0] tmp_81_reg_912;
reg   [0:0] tmp_82_reg_918;
wire   [0:0] tmp_83_fu_400_p3;
reg   [0:0] tmp_83_reg_924;
reg   [0:0] tmp_84_reg_930;
wire   [0:0] tmp_85_fu_426_p3;
reg   [0:0] tmp_85_reg_936;
reg   [0:0] tmp_86_reg_942;
wire   [0:0] tmp_87_fu_452_p3;
reg   [0:0] tmp_87_reg_948;
reg   [0:0] tmp_88_reg_954;
wire   [0:0] tmp_89_fu_478_p3;
reg   [0:0] tmp_89_reg_960;
reg   [0:0] tmp_90_reg_966;
wire   [0:0] tmp_91_fu_504_p3;
reg   [0:0] tmp_91_reg_972;
reg   [0:0] tmp_92_reg_978;
wire   [0:0] tmp_93_fu_530_p3;
reg   [0:0] tmp_93_reg_984;
wire    ap_block_pp0_stage0;
wire   [63:0] p_Result_3_fu_100_p4;
wire   [79:0] flipped_V_fu_124_p2;
wire   [63:0] p_Result_1_fu_130_p4;
reg   [15:0] p_Result_s_fu_154_p4;
reg   [63:0] p_Result_s_31_fu_164_p5;
reg   [63:0] tmp_19_fu_110_p3;
reg   [63:0] tmp_8_fu_176_p3;
wire   [7:0] tmp_71_fu_188_p1;
wire   [7:0] tmp_70_fu_184_p1;
wire   [0:0] tmp_28_fu_118_p2;
wire   [7:0] tmp_2_fu_192_p2;
wire   [7:0] leading_signs_V_fu_198_p3;
reg   [15:0] p_Result_4_fu_212_p4;
reg   [63:0] p_Result_2_fu_222_p5;
reg   [63:0] tmp_23_fu_140_p3;
reg   [63:0] tmp_11_fu_234_p3;
wire   [7:0] tmp_73_fu_246_p1;
wire   [7:0] tmp_72_fu_242_p1;
wire   [0:0] tmp_31_fu_148_p2;
wire   [7:0] tmp_7_fu_250_p2;
wire   [7:0] leading_signs_V_1_fu_256_p3;
wire   [7:0] leading_signs_V_2_fu_264_p3;
wire   [8:0] rhs_V_cast_fu_276_p1;
wire   [8:0] addconv_fu_280_p2;
wire  signed [31:0] tmp_16_cast_fu_286_p1;
wire   [8:0] index_assign_1_1_fu_312_p2;
wire   [31:0] index_assign_1_1_cas_fu_318_p1;
wire   [8:0] r_V_2_fu_330_p2;
wire   [31:0] index_assign_1_2_cas_fu_344_p1;
wire   [8:0] r_V_3_fu_356_p2;
wire   [31:0] index_assign_1_3_cas_fu_370_p1;
wire   [8:0] r_V_4_fu_382_p2;
wire   [31:0] index_assign_1_4_cas_fu_396_p1;
wire   [8:0] r_V_5_fu_408_p2;
wire   [31:0] index_assign_1_5_cas_fu_422_p1;
wire   [8:0] r_V_6_fu_434_p2;
wire   [31:0] index_assign_1_6_cas_fu_448_p1;
wire   [8:0] r_V_7_fu_460_p2;
wire   [31:0] index_assign_1_7_cas_fu_474_p1;
wire   [8:0] r_V_8_fu_486_p2;
wire   [31:0] index_assign_1_8_cas_fu_500_p1;
wire   [8:0] r_V_9_fu_512_p2;
wire   [31:0] index_assign_1_9_cas_fu_526_p1;
wire   [4:0] tmp_14_fu_550_p2;
wire   [9:0] p_Result_6_fu_561_p3;
wire   [0:0] rev7_fu_579_p2;
wire   [0:0] rev_fu_589_p2;
wire   [0:0] rev1_fu_599_p2;
wire   [0:0] rev2_fu_609_p2;
wire   [0:0] rev3_fu_619_p2;
wire   [0:0] rev4_fu_629_p2;
wire   [0:0] rev5_fu_639_p2;
wire   [0:0] rev6_fu_649_p2;
wire   [0:0] tmp_15_fu_575_p2;
wire   [0:0] tmp_16_fu_584_p2;
wire   [0:0] tmp_17_fu_594_p2;
wire   [0:0] tmp_18_fu_604_p2;
wire   [0:0] tmp_20_fu_614_p2;
wire   [0:0] tmp_21_fu_624_p2;
wire   [0:0] tmp_22_fu_634_p2;
wire   [0:0] tmp_24_fu_644_p2;
wire   [0:0] tmp_25_fu_654_p2;
wire   [9:0] p_0274_1_fu_568_p3;
wire   [8:0] tmp_26_fu_659_p10;
wire   [0:0] p_not_fu_693_p2;
wire   [0:0] p_not1_fu_703_p2;
wire   [0:0] p_not2_fu_713_p2;
wire   [0:0] p_not3_fu_723_p2;
wire   [0:0] p_not4_fu_733_p2;
wire   [0:0] p_not5_fu_743_p2;
wire   [0:0] p_not6_fu_753_p2;
wire   [0:0] p_not7_fu_763_p2;
wire   [0:0] tmp_94_fu_779_p3;
wire   [0:0] tmp_39_9_fu_787_p2;
wire   [0:0] tmp_39_8_fu_773_p2;
wire   [0:0] tmp_39_7_fu_768_p2;
wire   [0:0] tmp_39_6_fu_758_p2;
wire   [0:0] tmp_39_5_fu_748_p2;
wire   [0:0] tmp_39_4_fu_738_p2;
wire   [0:0] tmp_39_3_fu_728_p2;
wire   [0:0] tmp_39_2_fu_718_p2;
wire   [0:0] tmp_39_1_fu_708_p2;
wire   [0:0] tmp_39_fu_698_p2;
wire   [9:0] p_Result_27_9_fu_793_p11;
wire   [9:0] mantissa_V_fu_817_p2;
wire   [9:0] p_0274_1_9_fu_681_p5;
wire   [0:0] p_Repl2_2_fu_538_p3;
wire   [4:0] exponent_V_fu_555_p2;
wire   [9:0] p_Repl2_s_fu_823_p3;
wire   [0:0] tmp_s_fu_545_p2;
wire   [0:0] sel_tmp_fu_840_p2;
wire   [15:0] p_Result_5_fu_830_p4;

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce))) begin
        CompleteRegister_m_c_reg_853 <= CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read;
        tmp_10_reg_864 <= tmp_10_fu_206_p2;
        tmp_36_1_reg_884 <= tmp_36_1_fu_306_p2;
        tmp_74_reg_869 <= tmp_74_fu_272_p1;
        tmp_75_reg_874 <= addconv_fu_280_p2[32'd8];
        tmp_76_reg_879 <= tmp_76_fu_298_p3;
        tmp_77_reg_889 <= tmp_77_fu_322_p3;
        tmp_78_reg_894 <= r_V_2_fu_330_p2[32'd8];
        tmp_79_reg_900 <= tmp_79_fu_348_p3;
        tmp_80_reg_906 <= r_V_3_fu_356_p2[32'd8];
        tmp_81_reg_912 <= tmp_81_fu_374_p3;
        tmp_82_reg_918 <= r_V_4_fu_382_p2[32'd8];
        tmp_83_reg_924 <= tmp_83_fu_400_p3;
        tmp_84_reg_930 <= r_V_5_fu_408_p2[32'd8];
        tmp_85_reg_936 <= tmp_85_fu_426_p3;
        tmp_86_reg_942 <= r_V_6_fu_434_p2[32'd8];
        tmp_87_reg_948 <= tmp_87_fu_452_p3;
        tmp_88_reg_954 <= r_V_7_fu_460_p2[32'd8];
        tmp_89_reg_960 <= tmp_89_fu_478_p3;
        tmp_90_reg_966 <= r_V_8_fu_486_p2[32'd8];
        tmp_91_reg_972 <= tmp_91_fu_504_p3;
        tmp_92_reg_978 <= r_V_9_fu_512_p2[32'd8];
        tmp_93_reg_984 <= tmp_93_fu_530_p3;
        tmp_reg_858 <= CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read[32'd79];
    end
end

assign addconv_fu_280_p2 = (9'd78 - rhs_V_cast_fu_276_p1);

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_return = ((sel_tmp_fu_840_p2[0:0] === 1'b1) ? 16'd0 : p_Result_5_fu_830_p4);

assign exponent_V_fu_555_p2 = (tmp_14_fu_550_p2 ^ 5'd16);

assign flipped_V_fu_124_p2 = (80'd1208925819614629174706175 ^ CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read);

assign index_assign_1_1_cas_fu_318_p1 = index_assign_1_1_fu_312_p2;

assign index_assign_1_1_fu_312_p2 = ($signed(9'd511) + $signed(addconv_fu_280_p2));

assign index_assign_1_2_cas_fu_344_p1 = r_V_2_fu_330_p2;

assign index_assign_1_3_cas_fu_370_p1 = r_V_3_fu_356_p2;

assign index_assign_1_4_cas_fu_396_p1 = r_V_4_fu_382_p2;

assign index_assign_1_5_cas_fu_422_p1 = r_V_5_fu_408_p2;

assign index_assign_1_6_cas_fu_448_p1 = r_V_6_fu_434_p2;

assign index_assign_1_7_cas_fu_474_p1 = r_V_7_fu_460_p2;

assign index_assign_1_8_cas_fu_500_p1 = r_V_8_fu_486_p2;

assign index_assign_1_9_cas_fu_526_p1 = r_V_9_fu_512_p2;

assign leading_signs_V_1_fu_256_p3 = ((tmp_31_fu_148_p2[0:0] === 1'b1) ? tmp_7_fu_250_p2 : tmp_72_fu_242_p1);

assign leading_signs_V_2_fu_264_p3 = ((tmp_fu_92_p3[0:0] === 1'b1) ? leading_signs_V_1_fu_256_p3 : leading_signs_V_fu_198_p3);

assign leading_signs_V_fu_198_p3 = ((tmp_28_fu_118_p2[0:0] === 1'b1) ? tmp_2_fu_192_p2 : tmp_70_fu_184_p1);

assign mantissa_V_fu_817_p2 = (10'd1 + p_Result_27_9_fu_793_p11);

assign p_0274_1_9_fu_681_p5 = {{p_0274_1_fu_568_p3[9:9]}, {tmp_26_fu_659_p10}};

assign p_0274_1_fu_568_p3 = ((tmp_75_reg_874[0:0] === 1'b1) ? 10'd0 : p_Result_6_fu_561_p3);

assign p_Repl2_2_fu_538_p3 = CompleteRegister_m_c_reg_853[32'd79];

assign p_Repl2_s_fu_823_p3 = ((tmp_reg_858[0:0] === 1'b1) ? mantissa_V_fu_817_p2 : p_0274_1_9_fu_681_p5);

assign p_Result_1_fu_130_p4 = {{flipped_V_fu_124_p2[79:16]}};

assign p_Result_27_9_fu_793_p11 = {{{{{{{{{{tmp_39_9_fu_787_p2}, {tmp_39_8_fu_773_p2}}, {tmp_39_7_fu_768_p2}}, {tmp_39_6_fu_758_p2}}, {tmp_39_5_fu_748_p2}}, {tmp_39_4_fu_738_p2}}, {tmp_39_3_fu_728_p2}}, {tmp_39_2_fu_718_p2}}, {tmp_39_1_fu_708_p2}}, {tmp_39_fu_698_p2}};

integer ap_tvar_int_0;

always @ (p_Result_4_fu_212_p4) begin
    for (ap_tvar_int_0 = 64 - 1; ap_tvar_int_0 >= 0; ap_tvar_int_0 = ap_tvar_int_0 - 1) begin
        if (ap_tvar_int_0 > 63 | ap_tvar_int_0 < 48) begin
            p_Result_2_fu_222_p5[ap_tvar_int_0] = ap_const_lv64_FFFFFFFFFFFFFFFF[ap_tvar_int_0];
        end else if (63 - ap_tvar_int_0 >= 16) begin
            p_Result_2_fu_222_p5[ap_tvar_int_0] = 1'b0;
        end else begin
            p_Result_2_fu_222_p5[ap_tvar_int_0] = p_Result_4_fu_212_p4[63 - ap_tvar_int_0];
        end
    end
end

assign p_Result_3_fu_100_p4 = {{CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read[79:16]}};

integer ap_tvar_int_1;

always @ (flipped_V_fu_124_p2) begin
    for (ap_tvar_int_1 = 16 - 1; ap_tvar_int_1 >= 0; ap_tvar_int_1 = ap_tvar_int_1 - 1) begin
        if (ap_tvar_int_1 > 15 - 0) begin
            p_Result_4_fu_212_p4[ap_tvar_int_1] = 1'b0;
        end else begin
            p_Result_4_fu_212_p4[ap_tvar_int_1] = flipped_V_fu_124_p2[15 - ap_tvar_int_1];
        end
    end
end

assign p_Result_5_fu_830_p4 = {{{p_Repl2_2_fu_538_p3}, {exponent_V_fu_555_p2}}, {p_Repl2_s_fu_823_p3}};

assign p_Result_6_fu_561_p3 = {{tmp_76_reg_879}, {9'd0}};

integer ap_tvar_int_2;

always @ (p_Result_s_fu_154_p4) begin
    for (ap_tvar_int_2 = 64 - 1; ap_tvar_int_2 >= 0; ap_tvar_int_2 = ap_tvar_int_2 - 1) begin
        if (ap_tvar_int_2 > 63 | ap_tvar_int_2 < 48) begin
            p_Result_s_31_fu_164_p5[ap_tvar_int_2] = ap_const_lv64_FFFFFFFFFFFFFFFF[ap_tvar_int_2];
        end else if (63 - ap_tvar_int_2 >= 16) begin
            p_Result_s_31_fu_164_p5[ap_tvar_int_2] = 1'b0;
        end else begin
            p_Result_s_31_fu_164_p5[ap_tvar_int_2] = p_Result_s_fu_154_p4[63 - ap_tvar_int_2];
        end
    end
end

integer ap_tvar_int_3;

always @ (CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read) begin
    for (ap_tvar_int_3 = 16 - 1; ap_tvar_int_3 >= 0; ap_tvar_int_3 = ap_tvar_int_3 - 1) begin
        if (ap_tvar_int_3 > 15 - 0) begin
            p_Result_s_fu_154_p4[ap_tvar_int_3] = 1'b0;
        end else begin
            p_Result_s_fu_154_p4[ap_tvar_int_3] = CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read[15 - ap_tvar_int_3];
        end
    end
end

assign p_not1_fu_703_p2 = (tmp_91_reg_972 ^ 1'd1);

assign p_not2_fu_713_p2 = (tmp_89_reg_960 ^ 1'd1);

assign p_not3_fu_723_p2 = (tmp_87_reg_948 ^ 1'd1);

assign p_not4_fu_733_p2 = (tmp_85_reg_936 ^ 1'd1);

assign p_not5_fu_743_p2 = (tmp_83_reg_924 ^ 1'd1);

assign p_not6_fu_753_p2 = (tmp_81_reg_912 ^ 1'd1);

assign p_not7_fu_763_p2 = (tmp_79_reg_900 ^ 1'd1);

assign p_not_fu_693_p2 = (tmp_93_reg_984 ^ 1'd1);

assign r_V_2_fu_330_p2 = ($signed(9'd510) + $signed(addconv_fu_280_p2));

assign r_V_3_fu_356_p2 = ($signed(9'd509) + $signed(addconv_fu_280_p2));

assign r_V_4_fu_382_p2 = ($signed(9'd508) + $signed(addconv_fu_280_p2));

assign r_V_5_fu_408_p2 = ($signed(9'd507) + $signed(addconv_fu_280_p2));

assign r_V_6_fu_434_p2 = ($signed(9'd506) + $signed(addconv_fu_280_p2));

assign r_V_7_fu_460_p2 = ($signed(9'd505) + $signed(addconv_fu_280_p2));

assign r_V_8_fu_486_p2 = ($signed(9'd504) + $signed(addconv_fu_280_p2));

assign r_V_9_fu_512_p2 = ($signed(9'd503) + $signed(addconv_fu_280_p2));

assign rev1_fu_599_p2 = (tmp_82_reg_918 ^ 1'd1);

assign rev2_fu_609_p2 = (tmp_84_reg_930 ^ 1'd1);

assign rev3_fu_619_p2 = (tmp_86_reg_942 ^ 1'd1);

assign rev4_fu_629_p2 = (tmp_88_reg_954 ^ 1'd1);

assign rev5_fu_639_p2 = (tmp_90_reg_966 ^ 1'd1);

assign rev6_fu_649_p2 = (tmp_92_reg_978 ^ 1'd1);

assign rev7_fu_579_p2 = (tmp_78_reg_894 ^ 1'd1);

assign rev_fu_589_p2 = (tmp_80_reg_906 ^ 1'd1);

assign rhs_V_cast_fu_276_p1 = leading_signs_V_2_fu_264_p3;

assign sel_tmp_fu_840_p2 = (tmp_s_fu_545_p2 & tmp_10_reg_864);

assign tmp_10_fu_206_p2 = ((leading_signs_V_fu_198_p3 == 8'd80) ? 1'b1 : 1'b0);

always @ (p_Result_2_fu_222_p5) begin
    if (p_Result_2_fu_222_p5[63] == 1'b1) begin
        tmp_11_fu_234_p3 = 64'd0;
    end else if (p_Result_2_fu_222_p5[62] == 1'b1) begin
        tmp_11_fu_234_p3 = 64'd1;
    end else if (p_Result_2_fu_222_p5[61] == 1'b1) begin
        tmp_11_fu_234_p3 = 64'd2;
    end else if (p_Result_2_fu_222_p5[60] == 1'b1) begin
        tmp_11_fu_234_p3 = 64'd3;
    end else if (p_Result_2_fu_222_p5[59] == 1'b1) begin
        tmp_11_fu_234_p3 = 64'd4;
    end else if (p_Result_2_fu_222_p5[58] == 1'b1) begin
        tmp_11_fu_234_p3 = 64'd5;
    end else if (p_Result_2_fu_222_p5[57] == 1'b1) begin
        tmp_11_fu_234_p3 = 64'd6;
    end else if (p_Result_2_fu_222_p5[56] == 1'b1) begin
        tmp_11_fu_234_p3 = 64'd7;
    end else if (p_Result_2_fu_222_p5[55] == 1'b1) begin
        tmp_11_fu_234_p3 = 64'd8;
    end else if (p_Result_2_fu_222_p5[54] == 1'b1) begin
        tmp_11_fu_234_p3 = 64'd9;
    end else if (p_Result_2_fu_222_p5[53] == 1'b1) begin
        tmp_11_fu_234_p3 = 64'd10;
    end else if (p_Result_2_fu_222_p5[52] == 1'b1) begin
        tmp_11_fu_234_p3 = 64'd11;
    end else if (p_Result_2_fu_222_p5[51] == 1'b1) begin
        tmp_11_fu_234_p3 = 64'd12;
    end else if (p_Result_2_fu_222_p5[50] == 1'b1) begin
        tmp_11_fu_234_p3 = 64'd13;
    end else if (p_Result_2_fu_222_p5[49] == 1'b1) begin
        tmp_11_fu_234_p3 = 64'd14;
    end else if (p_Result_2_fu_222_p5[48] == 1'b1) begin
        tmp_11_fu_234_p3 = 64'd15;
    end else if (p_Result_2_fu_222_p5[47] == 1'b1) begin
        tmp_11_fu_234_p3 = 64'd16;
    end else if (p_Result_2_fu_222_p5[46] == 1'b1) begin
        tmp_11_fu_234_p3 = 64'd17;
    end else if (p_Result_2_fu_222_p5[45] == 1'b1) begin
        tmp_11_fu_234_p3 = 64'd18;
    end else if (p_Result_2_fu_222_p5[44] == 1'b1) begin
        tmp_11_fu_234_p3 = 64'd19;
    end else if (p_Result_2_fu_222_p5[43] == 1'b1) begin
        tmp_11_fu_234_p3 = 64'd20;
    end else if (p_Result_2_fu_222_p5[42] == 1'b1) begin
        tmp_11_fu_234_p3 = 64'd21;
    end else if (p_Result_2_fu_222_p5[41] == 1'b1) begin
        tmp_11_fu_234_p3 = 64'd22;
    end else if (p_Result_2_fu_222_p5[40] == 1'b1) begin
        tmp_11_fu_234_p3 = 64'd23;
    end else if (p_Result_2_fu_222_p5[39] == 1'b1) begin
        tmp_11_fu_234_p3 = 64'd24;
    end else if (p_Result_2_fu_222_p5[38] == 1'b1) begin
        tmp_11_fu_234_p3 = 64'd25;
    end else if (p_Result_2_fu_222_p5[37] == 1'b1) begin
        tmp_11_fu_234_p3 = 64'd26;
    end else if (p_Result_2_fu_222_p5[36] == 1'b1) begin
        tmp_11_fu_234_p3 = 64'd27;
    end else if (p_Result_2_fu_222_p5[35] == 1'b1) begin
        tmp_11_fu_234_p3 = 64'd28;
    end else if (p_Result_2_fu_222_p5[34] == 1'b1) begin
        tmp_11_fu_234_p3 = 64'd29;
    end else if (p_Result_2_fu_222_p5[33] == 1'b1) begin
        tmp_11_fu_234_p3 = 64'd30;
    end else if (p_Result_2_fu_222_p5[32] == 1'b1) begin
        tmp_11_fu_234_p3 = 64'd31;
    end else if (p_Result_2_fu_222_p5[31] == 1'b1) begin
        tmp_11_fu_234_p3 = 64'd32;
    end else if (p_Result_2_fu_222_p5[30] == 1'b1) begin
        tmp_11_fu_234_p3 = 64'd33;
    end else if (p_Result_2_fu_222_p5[29] == 1'b1) begin
        tmp_11_fu_234_p3 = 64'd34;
    end else if (p_Result_2_fu_222_p5[28] == 1'b1) begin
        tmp_11_fu_234_p3 = 64'd35;
    end else if (p_Result_2_fu_222_p5[27] == 1'b1) begin
        tmp_11_fu_234_p3 = 64'd36;
    end else if (p_Result_2_fu_222_p5[26] == 1'b1) begin
        tmp_11_fu_234_p3 = 64'd37;
    end else if (p_Result_2_fu_222_p5[25] == 1'b1) begin
        tmp_11_fu_234_p3 = 64'd38;
    end else if (p_Result_2_fu_222_p5[24] == 1'b1) begin
        tmp_11_fu_234_p3 = 64'd39;
    end else if (p_Result_2_fu_222_p5[23] == 1'b1) begin
        tmp_11_fu_234_p3 = 64'd40;
    end else if (p_Result_2_fu_222_p5[22] == 1'b1) begin
        tmp_11_fu_234_p3 = 64'd41;
    end else if (p_Result_2_fu_222_p5[21] == 1'b1) begin
        tmp_11_fu_234_p3 = 64'd42;
    end else if (p_Result_2_fu_222_p5[20] == 1'b1) begin
        tmp_11_fu_234_p3 = 64'd43;
    end else if (p_Result_2_fu_222_p5[19] == 1'b1) begin
        tmp_11_fu_234_p3 = 64'd44;
    end else if (p_Result_2_fu_222_p5[18] == 1'b1) begin
        tmp_11_fu_234_p3 = 64'd45;
    end else if (p_Result_2_fu_222_p5[17] == 1'b1) begin
        tmp_11_fu_234_p3 = 64'd46;
    end else if (p_Result_2_fu_222_p5[16] == 1'b1) begin
        tmp_11_fu_234_p3 = 64'd47;
    end else if (p_Result_2_fu_222_p5[15] == 1'b1) begin
        tmp_11_fu_234_p3 = 64'd48;
    end else if (p_Result_2_fu_222_p5[14] == 1'b1) begin
        tmp_11_fu_234_p3 = 64'd49;
    end else if (p_Result_2_fu_222_p5[13] == 1'b1) begin
        tmp_11_fu_234_p3 = 64'd50;
    end else if (p_Result_2_fu_222_p5[12] == 1'b1) begin
        tmp_11_fu_234_p3 = 64'd51;
    end else if (p_Result_2_fu_222_p5[11] == 1'b1) begin
        tmp_11_fu_234_p3 = 64'd52;
    end else if (p_Result_2_fu_222_p5[10] == 1'b1) begin
        tmp_11_fu_234_p3 = 64'd53;
    end else if (p_Result_2_fu_222_p5[9] == 1'b1) begin
        tmp_11_fu_234_p3 = 64'd54;
    end else if (p_Result_2_fu_222_p5[8] == 1'b1) begin
        tmp_11_fu_234_p3 = 64'd55;
    end else if (p_Result_2_fu_222_p5[7] == 1'b1) begin
        tmp_11_fu_234_p3 = 64'd56;
    end else if (p_Result_2_fu_222_p5[6] == 1'b1) begin
        tmp_11_fu_234_p3 = 64'd57;
    end else if (p_Result_2_fu_222_p5[5] == 1'b1) begin
        tmp_11_fu_234_p3 = 64'd58;
    end else if (p_Result_2_fu_222_p5[4] == 1'b1) begin
        tmp_11_fu_234_p3 = 64'd59;
    end else if (p_Result_2_fu_222_p5[3] == 1'b1) begin
        tmp_11_fu_234_p3 = 64'd60;
    end else if (p_Result_2_fu_222_p5[2] == 1'b1) begin
        tmp_11_fu_234_p3 = 64'd61;
    end else if (p_Result_2_fu_222_p5[1] == 1'b1) begin
        tmp_11_fu_234_p3 = 64'd62;
    end else if (p_Result_2_fu_222_p5[0] == 1'b1) begin
        tmp_11_fu_234_p3 = 64'd63;
    end else begin
        tmp_11_fu_234_p3 = 64'd64;
    end
end

assign tmp_14_fu_550_p2 = (5'd8 - tmp_74_reg_869);

assign tmp_15_fu_575_p2 = (tmp_77_reg_889 & tmp_36_1_reg_884);

assign tmp_16_cast_fu_286_p1 = $signed(addconv_fu_280_p2);

assign tmp_16_fu_584_p2 = (tmp_79_reg_900 & rev7_fu_579_p2);

assign tmp_17_fu_594_p2 = (tmp_81_reg_912 & rev_fu_589_p2);

assign tmp_18_fu_604_p2 = (tmp_83_reg_924 & rev1_fu_599_p2);

always @ (p_Result_3_fu_100_p4) begin
    if (p_Result_3_fu_100_p4[63] == 1'b1) begin
        tmp_19_fu_110_p3 = 64'd0;
    end else if (p_Result_3_fu_100_p4[62] == 1'b1) begin
        tmp_19_fu_110_p3 = 64'd1;
    end else if (p_Result_3_fu_100_p4[61] == 1'b1) begin
        tmp_19_fu_110_p3 = 64'd2;
    end else if (p_Result_3_fu_100_p4[60] == 1'b1) begin
        tmp_19_fu_110_p3 = 64'd3;
    end else if (p_Result_3_fu_100_p4[59] == 1'b1) begin
        tmp_19_fu_110_p3 = 64'd4;
    end else if (p_Result_3_fu_100_p4[58] == 1'b1) begin
        tmp_19_fu_110_p3 = 64'd5;
    end else if (p_Result_3_fu_100_p4[57] == 1'b1) begin
        tmp_19_fu_110_p3 = 64'd6;
    end else if (p_Result_3_fu_100_p4[56] == 1'b1) begin
        tmp_19_fu_110_p3 = 64'd7;
    end else if (p_Result_3_fu_100_p4[55] == 1'b1) begin
        tmp_19_fu_110_p3 = 64'd8;
    end else if (p_Result_3_fu_100_p4[54] == 1'b1) begin
        tmp_19_fu_110_p3 = 64'd9;
    end else if (p_Result_3_fu_100_p4[53] == 1'b1) begin
        tmp_19_fu_110_p3 = 64'd10;
    end else if (p_Result_3_fu_100_p4[52] == 1'b1) begin
        tmp_19_fu_110_p3 = 64'd11;
    end else if (p_Result_3_fu_100_p4[51] == 1'b1) begin
        tmp_19_fu_110_p3 = 64'd12;
    end else if (p_Result_3_fu_100_p4[50] == 1'b1) begin
        tmp_19_fu_110_p3 = 64'd13;
    end else if (p_Result_3_fu_100_p4[49] == 1'b1) begin
        tmp_19_fu_110_p3 = 64'd14;
    end else if (p_Result_3_fu_100_p4[48] == 1'b1) begin
        tmp_19_fu_110_p3 = 64'd15;
    end else if (p_Result_3_fu_100_p4[47] == 1'b1) begin
        tmp_19_fu_110_p3 = 64'd16;
    end else if (p_Result_3_fu_100_p4[46] == 1'b1) begin
        tmp_19_fu_110_p3 = 64'd17;
    end else if (p_Result_3_fu_100_p4[45] == 1'b1) begin
        tmp_19_fu_110_p3 = 64'd18;
    end else if (p_Result_3_fu_100_p4[44] == 1'b1) begin
        tmp_19_fu_110_p3 = 64'd19;
    end else if (p_Result_3_fu_100_p4[43] == 1'b1) begin
        tmp_19_fu_110_p3 = 64'd20;
    end else if (p_Result_3_fu_100_p4[42] == 1'b1) begin
        tmp_19_fu_110_p3 = 64'd21;
    end else if (p_Result_3_fu_100_p4[41] == 1'b1) begin
        tmp_19_fu_110_p3 = 64'd22;
    end else if (p_Result_3_fu_100_p4[40] == 1'b1) begin
        tmp_19_fu_110_p3 = 64'd23;
    end else if (p_Result_3_fu_100_p4[39] == 1'b1) begin
        tmp_19_fu_110_p3 = 64'd24;
    end else if (p_Result_3_fu_100_p4[38] == 1'b1) begin
        tmp_19_fu_110_p3 = 64'd25;
    end else if (p_Result_3_fu_100_p4[37] == 1'b1) begin
        tmp_19_fu_110_p3 = 64'd26;
    end else if (p_Result_3_fu_100_p4[36] == 1'b1) begin
        tmp_19_fu_110_p3 = 64'd27;
    end else if (p_Result_3_fu_100_p4[35] == 1'b1) begin
        tmp_19_fu_110_p3 = 64'd28;
    end else if (p_Result_3_fu_100_p4[34] == 1'b1) begin
        tmp_19_fu_110_p3 = 64'd29;
    end else if (p_Result_3_fu_100_p4[33] == 1'b1) begin
        tmp_19_fu_110_p3 = 64'd30;
    end else if (p_Result_3_fu_100_p4[32] == 1'b1) begin
        tmp_19_fu_110_p3 = 64'd31;
    end else if (p_Result_3_fu_100_p4[31] == 1'b1) begin
        tmp_19_fu_110_p3 = 64'd32;
    end else if (p_Result_3_fu_100_p4[30] == 1'b1) begin
        tmp_19_fu_110_p3 = 64'd33;
    end else if (p_Result_3_fu_100_p4[29] == 1'b1) begin
        tmp_19_fu_110_p3 = 64'd34;
    end else if (p_Result_3_fu_100_p4[28] == 1'b1) begin
        tmp_19_fu_110_p3 = 64'd35;
    end else if (p_Result_3_fu_100_p4[27] == 1'b1) begin
        tmp_19_fu_110_p3 = 64'd36;
    end else if (p_Result_3_fu_100_p4[26] == 1'b1) begin
        tmp_19_fu_110_p3 = 64'd37;
    end else if (p_Result_3_fu_100_p4[25] == 1'b1) begin
        tmp_19_fu_110_p3 = 64'd38;
    end else if (p_Result_3_fu_100_p4[24] == 1'b1) begin
        tmp_19_fu_110_p3 = 64'd39;
    end else if (p_Result_3_fu_100_p4[23] == 1'b1) begin
        tmp_19_fu_110_p3 = 64'd40;
    end else if (p_Result_3_fu_100_p4[22] == 1'b1) begin
        tmp_19_fu_110_p3 = 64'd41;
    end else if (p_Result_3_fu_100_p4[21] == 1'b1) begin
        tmp_19_fu_110_p3 = 64'd42;
    end else if (p_Result_3_fu_100_p4[20] == 1'b1) begin
        tmp_19_fu_110_p3 = 64'd43;
    end else if (p_Result_3_fu_100_p4[19] == 1'b1) begin
        tmp_19_fu_110_p3 = 64'd44;
    end else if (p_Result_3_fu_100_p4[18] == 1'b1) begin
        tmp_19_fu_110_p3 = 64'd45;
    end else if (p_Result_3_fu_100_p4[17] == 1'b1) begin
        tmp_19_fu_110_p3 = 64'd46;
    end else if (p_Result_3_fu_100_p4[16] == 1'b1) begin
        tmp_19_fu_110_p3 = 64'd47;
    end else if (p_Result_3_fu_100_p4[15] == 1'b1) begin
        tmp_19_fu_110_p3 = 64'd48;
    end else if (p_Result_3_fu_100_p4[14] == 1'b1) begin
        tmp_19_fu_110_p3 = 64'd49;
    end else if (p_Result_3_fu_100_p4[13] == 1'b1) begin
        tmp_19_fu_110_p3 = 64'd50;
    end else if (p_Result_3_fu_100_p4[12] == 1'b1) begin
        tmp_19_fu_110_p3 = 64'd51;
    end else if (p_Result_3_fu_100_p4[11] == 1'b1) begin
        tmp_19_fu_110_p3 = 64'd52;
    end else if (p_Result_3_fu_100_p4[10] == 1'b1) begin
        tmp_19_fu_110_p3 = 64'd53;
    end else if (p_Result_3_fu_100_p4[9] == 1'b1) begin
        tmp_19_fu_110_p3 = 64'd54;
    end else if (p_Result_3_fu_100_p4[8] == 1'b1) begin
        tmp_19_fu_110_p3 = 64'd55;
    end else if (p_Result_3_fu_100_p4[7] == 1'b1) begin
        tmp_19_fu_110_p3 = 64'd56;
    end else if (p_Result_3_fu_100_p4[6] == 1'b1) begin
        tmp_19_fu_110_p3 = 64'd57;
    end else if (p_Result_3_fu_100_p4[5] == 1'b1) begin
        tmp_19_fu_110_p3 = 64'd58;
    end else if (p_Result_3_fu_100_p4[4] == 1'b1) begin
        tmp_19_fu_110_p3 = 64'd59;
    end else if (p_Result_3_fu_100_p4[3] == 1'b1) begin
        tmp_19_fu_110_p3 = 64'd60;
    end else if (p_Result_3_fu_100_p4[2] == 1'b1) begin
        tmp_19_fu_110_p3 = 64'd61;
    end else if (p_Result_3_fu_100_p4[1] == 1'b1) begin
        tmp_19_fu_110_p3 = 64'd62;
    end else if (p_Result_3_fu_100_p4[0] == 1'b1) begin
        tmp_19_fu_110_p3 = 64'd63;
    end else begin
        tmp_19_fu_110_p3 = 64'd64;
    end
end

assign tmp_20_fu_614_p2 = (tmp_85_reg_936 & rev2_fu_609_p2);

assign tmp_21_fu_624_p2 = (tmp_87_reg_948 & rev3_fu_619_p2);

assign tmp_22_fu_634_p2 = (tmp_89_reg_960 & rev4_fu_629_p2);

always @ (p_Result_1_fu_130_p4) begin
    if (p_Result_1_fu_130_p4[63] == 1'b1) begin
        tmp_23_fu_140_p3 = 64'd0;
    end else if (p_Result_1_fu_130_p4[62] == 1'b1) begin
        tmp_23_fu_140_p3 = 64'd1;
    end else if (p_Result_1_fu_130_p4[61] == 1'b1) begin
        tmp_23_fu_140_p3 = 64'd2;
    end else if (p_Result_1_fu_130_p4[60] == 1'b1) begin
        tmp_23_fu_140_p3 = 64'd3;
    end else if (p_Result_1_fu_130_p4[59] == 1'b1) begin
        tmp_23_fu_140_p3 = 64'd4;
    end else if (p_Result_1_fu_130_p4[58] == 1'b1) begin
        tmp_23_fu_140_p3 = 64'd5;
    end else if (p_Result_1_fu_130_p4[57] == 1'b1) begin
        tmp_23_fu_140_p3 = 64'd6;
    end else if (p_Result_1_fu_130_p4[56] == 1'b1) begin
        tmp_23_fu_140_p3 = 64'd7;
    end else if (p_Result_1_fu_130_p4[55] == 1'b1) begin
        tmp_23_fu_140_p3 = 64'd8;
    end else if (p_Result_1_fu_130_p4[54] == 1'b1) begin
        tmp_23_fu_140_p3 = 64'd9;
    end else if (p_Result_1_fu_130_p4[53] == 1'b1) begin
        tmp_23_fu_140_p3 = 64'd10;
    end else if (p_Result_1_fu_130_p4[52] == 1'b1) begin
        tmp_23_fu_140_p3 = 64'd11;
    end else if (p_Result_1_fu_130_p4[51] == 1'b1) begin
        tmp_23_fu_140_p3 = 64'd12;
    end else if (p_Result_1_fu_130_p4[50] == 1'b1) begin
        tmp_23_fu_140_p3 = 64'd13;
    end else if (p_Result_1_fu_130_p4[49] == 1'b1) begin
        tmp_23_fu_140_p3 = 64'd14;
    end else if (p_Result_1_fu_130_p4[48] == 1'b1) begin
        tmp_23_fu_140_p3 = 64'd15;
    end else if (p_Result_1_fu_130_p4[47] == 1'b1) begin
        tmp_23_fu_140_p3 = 64'd16;
    end else if (p_Result_1_fu_130_p4[46] == 1'b1) begin
        tmp_23_fu_140_p3 = 64'd17;
    end else if (p_Result_1_fu_130_p4[45] == 1'b1) begin
        tmp_23_fu_140_p3 = 64'd18;
    end else if (p_Result_1_fu_130_p4[44] == 1'b1) begin
        tmp_23_fu_140_p3 = 64'd19;
    end else if (p_Result_1_fu_130_p4[43] == 1'b1) begin
        tmp_23_fu_140_p3 = 64'd20;
    end else if (p_Result_1_fu_130_p4[42] == 1'b1) begin
        tmp_23_fu_140_p3 = 64'd21;
    end else if (p_Result_1_fu_130_p4[41] == 1'b1) begin
        tmp_23_fu_140_p3 = 64'd22;
    end else if (p_Result_1_fu_130_p4[40] == 1'b1) begin
        tmp_23_fu_140_p3 = 64'd23;
    end else if (p_Result_1_fu_130_p4[39] == 1'b1) begin
        tmp_23_fu_140_p3 = 64'd24;
    end else if (p_Result_1_fu_130_p4[38] == 1'b1) begin
        tmp_23_fu_140_p3 = 64'd25;
    end else if (p_Result_1_fu_130_p4[37] == 1'b1) begin
        tmp_23_fu_140_p3 = 64'd26;
    end else if (p_Result_1_fu_130_p4[36] == 1'b1) begin
        tmp_23_fu_140_p3 = 64'd27;
    end else if (p_Result_1_fu_130_p4[35] == 1'b1) begin
        tmp_23_fu_140_p3 = 64'd28;
    end else if (p_Result_1_fu_130_p4[34] == 1'b1) begin
        tmp_23_fu_140_p3 = 64'd29;
    end else if (p_Result_1_fu_130_p4[33] == 1'b1) begin
        tmp_23_fu_140_p3 = 64'd30;
    end else if (p_Result_1_fu_130_p4[32] == 1'b1) begin
        tmp_23_fu_140_p3 = 64'd31;
    end else if (p_Result_1_fu_130_p4[31] == 1'b1) begin
        tmp_23_fu_140_p3 = 64'd32;
    end else if (p_Result_1_fu_130_p4[30] == 1'b1) begin
        tmp_23_fu_140_p3 = 64'd33;
    end else if (p_Result_1_fu_130_p4[29] == 1'b1) begin
        tmp_23_fu_140_p3 = 64'd34;
    end else if (p_Result_1_fu_130_p4[28] == 1'b1) begin
        tmp_23_fu_140_p3 = 64'd35;
    end else if (p_Result_1_fu_130_p4[27] == 1'b1) begin
        tmp_23_fu_140_p3 = 64'd36;
    end else if (p_Result_1_fu_130_p4[26] == 1'b1) begin
        tmp_23_fu_140_p3 = 64'd37;
    end else if (p_Result_1_fu_130_p4[25] == 1'b1) begin
        tmp_23_fu_140_p3 = 64'd38;
    end else if (p_Result_1_fu_130_p4[24] == 1'b1) begin
        tmp_23_fu_140_p3 = 64'd39;
    end else if (p_Result_1_fu_130_p4[23] == 1'b1) begin
        tmp_23_fu_140_p3 = 64'd40;
    end else if (p_Result_1_fu_130_p4[22] == 1'b1) begin
        tmp_23_fu_140_p3 = 64'd41;
    end else if (p_Result_1_fu_130_p4[21] == 1'b1) begin
        tmp_23_fu_140_p3 = 64'd42;
    end else if (p_Result_1_fu_130_p4[20] == 1'b1) begin
        tmp_23_fu_140_p3 = 64'd43;
    end else if (p_Result_1_fu_130_p4[19] == 1'b1) begin
        tmp_23_fu_140_p3 = 64'd44;
    end else if (p_Result_1_fu_130_p4[18] == 1'b1) begin
        tmp_23_fu_140_p3 = 64'd45;
    end else if (p_Result_1_fu_130_p4[17] == 1'b1) begin
        tmp_23_fu_140_p3 = 64'd46;
    end else if (p_Result_1_fu_130_p4[16] == 1'b1) begin
        tmp_23_fu_140_p3 = 64'd47;
    end else if (p_Result_1_fu_130_p4[15] == 1'b1) begin
        tmp_23_fu_140_p3 = 64'd48;
    end else if (p_Result_1_fu_130_p4[14] == 1'b1) begin
        tmp_23_fu_140_p3 = 64'd49;
    end else if (p_Result_1_fu_130_p4[13] == 1'b1) begin
        tmp_23_fu_140_p3 = 64'd50;
    end else if (p_Result_1_fu_130_p4[12] == 1'b1) begin
        tmp_23_fu_140_p3 = 64'd51;
    end else if (p_Result_1_fu_130_p4[11] == 1'b1) begin
        tmp_23_fu_140_p3 = 64'd52;
    end else if (p_Result_1_fu_130_p4[10] == 1'b1) begin
        tmp_23_fu_140_p3 = 64'd53;
    end else if (p_Result_1_fu_130_p4[9] == 1'b1) begin
        tmp_23_fu_140_p3 = 64'd54;
    end else if (p_Result_1_fu_130_p4[8] == 1'b1) begin
        tmp_23_fu_140_p3 = 64'd55;
    end else if (p_Result_1_fu_130_p4[7] == 1'b1) begin
        tmp_23_fu_140_p3 = 64'd56;
    end else if (p_Result_1_fu_130_p4[6] == 1'b1) begin
        tmp_23_fu_140_p3 = 64'd57;
    end else if (p_Result_1_fu_130_p4[5] == 1'b1) begin
        tmp_23_fu_140_p3 = 64'd58;
    end else if (p_Result_1_fu_130_p4[4] == 1'b1) begin
        tmp_23_fu_140_p3 = 64'd59;
    end else if (p_Result_1_fu_130_p4[3] == 1'b1) begin
        tmp_23_fu_140_p3 = 64'd60;
    end else if (p_Result_1_fu_130_p4[2] == 1'b1) begin
        tmp_23_fu_140_p3 = 64'd61;
    end else if (p_Result_1_fu_130_p4[1] == 1'b1) begin
        tmp_23_fu_140_p3 = 64'd62;
    end else if (p_Result_1_fu_130_p4[0] == 1'b1) begin
        tmp_23_fu_140_p3 = 64'd63;
    end else begin
        tmp_23_fu_140_p3 = 64'd64;
    end
end

assign tmp_24_fu_644_p2 = (tmp_91_reg_972 & rev5_fu_639_p2);

assign tmp_25_fu_654_p2 = (tmp_93_reg_984 & rev6_fu_649_p2);

assign tmp_26_fu_659_p10 = {{{{{{{{{tmp_15_fu_575_p2}, {tmp_16_fu_584_p2}}, {tmp_17_fu_594_p2}}, {tmp_18_fu_604_p2}}, {tmp_20_fu_614_p2}}, {tmp_21_fu_624_p2}}, {tmp_22_fu_634_p2}}, {tmp_24_fu_644_p2}}, {tmp_25_fu_654_p2}};

assign tmp_28_fu_118_p2 = ((p_Result_3_fu_100_p4 == 64'd0) ? 1'b1 : 1'b0);

assign tmp_2_fu_192_p2 = (tmp_71_fu_188_p1 + tmp_70_fu_184_p1);

assign tmp_31_fu_148_p2 = ((p_Result_1_fu_130_p4 == 64'd0) ? 1'b1 : 1'b0);

assign tmp_36_1_fu_306_p2 = (($signed(addconv_fu_280_p2) > $signed(9'd0)) ? 1'b1 : 1'b0);

assign tmp_39_1_fu_708_p2 = (tmp_90_reg_966 | p_not1_fu_703_p2);

assign tmp_39_2_fu_718_p2 = (tmp_88_reg_954 | p_not2_fu_713_p2);

assign tmp_39_3_fu_728_p2 = (tmp_86_reg_942 | p_not3_fu_723_p2);

assign tmp_39_4_fu_738_p2 = (tmp_84_reg_930 | p_not4_fu_733_p2);

assign tmp_39_5_fu_748_p2 = (tmp_82_reg_918 | p_not5_fu_743_p2);

assign tmp_39_6_fu_758_p2 = (tmp_80_reg_906 | p_not6_fu_753_p2);

assign tmp_39_7_fu_768_p2 = (tmp_78_reg_894 | p_not7_fu_763_p2);

assign tmp_39_8_fu_773_p2 = (tmp_15_fu_575_p2 ^ 1'd1);

assign tmp_39_9_fu_787_p2 = (tmp_94_fu_779_p3 ^ 1'd1);

assign tmp_39_fu_698_p2 = (tmp_92_reg_978 | p_not_fu_693_p2);

assign tmp_70_fu_184_p1 = tmp_19_fu_110_p3[7:0];

assign tmp_71_fu_188_p1 = tmp_8_fu_176_p3[7:0];

assign tmp_72_fu_242_p1 = tmp_23_fu_140_p3[7:0];

assign tmp_73_fu_246_p1 = tmp_11_fu_234_p3[7:0];

assign tmp_74_fu_272_p1 = leading_signs_V_2_fu_264_p3[4:0];

assign tmp_76_fu_298_p3 = CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read[tmp_16_cast_fu_286_p1];

assign tmp_77_fu_322_p3 = CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read[index_assign_1_1_cas_fu_318_p1];

assign tmp_79_fu_348_p3 = CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read[index_assign_1_2_cas_fu_344_p1];

assign tmp_7_fu_250_p2 = (tmp_73_fu_246_p1 + tmp_72_fu_242_p1);

assign tmp_81_fu_374_p3 = CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read[index_assign_1_3_cas_fu_370_p1];

assign tmp_83_fu_400_p3 = CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read[index_assign_1_4_cas_fu_396_p1];

assign tmp_85_fu_426_p3 = CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read[index_assign_1_5_cas_fu_422_p1];

assign tmp_87_fu_452_p3 = CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read[index_assign_1_6_cas_fu_448_p1];

assign tmp_89_fu_478_p3 = CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read[index_assign_1_7_cas_fu_474_p1];

always @ (p_Result_s_31_fu_164_p5) begin
    if (p_Result_s_31_fu_164_p5[63] == 1'b1) begin
        tmp_8_fu_176_p3 = 64'd0;
    end else if (p_Result_s_31_fu_164_p5[62] == 1'b1) begin
        tmp_8_fu_176_p3 = 64'd1;
    end else if (p_Result_s_31_fu_164_p5[61] == 1'b1) begin
        tmp_8_fu_176_p3 = 64'd2;
    end else if (p_Result_s_31_fu_164_p5[60] == 1'b1) begin
        tmp_8_fu_176_p3 = 64'd3;
    end else if (p_Result_s_31_fu_164_p5[59] == 1'b1) begin
        tmp_8_fu_176_p3 = 64'd4;
    end else if (p_Result_s_31_fu_164_p5[58] == 1'b1) begin
        tmp_8_fu_176_p3 = 64'd5;
    end else if (p_Result_s_31_fu_164_p5[57] == 1'b1) begin
        tmp_8_fu_176_p3 = 64'd6;
    end else if (p_Result_s_31_fu_164_p5[56] == 1'b1) begin
        tmp_8_fu_176_p3 = 64'd7;
    end else if (p_Result_s_31_fu_164_p5[55] == 1'b1) begin
        tmp_8_fu_176_p3 = 64'd8;
    end else if (p_Result_s_31_fu_164_p5[54] == 1'b1) begin
        tmp_8_fu_176_p3 = 64'd9;
    end else if (p_Result_s_31_fu_164_p5[53] == 1'b1) begin
        tmp_8_fu_176_p3 = 64'd10;
    end else if (p_Result_s_31_fu_164_p5[52] == 1'b1) begin
        tmp_8_fu_176_p3 = 64'd11;
    end else if (p_Result_s_31_fu_164_p5[51] == 1'b1) begin
        tmp_8_fu_176_p3 = 64'd12;
    end else if (p_Result_s_31_fu_164_p5[50] == 1'b1) begin
        tmp_8_fu_176_p3 = 64'd13;
    end else if (p_Result_s_31_fu_164_p5[49] == 1'b1) begin
        tmp_8_fu_176_p3 = 64'd14;
    end else if (p_Result_s_31_fu_164_p5[48] == 1'b1) begin
        tmp_8_fu_176_p3 = 64'd15;
    end else if (p_Result_s_31_fu_164_p5[47] == 1'b1) begin
        tmp_8_fu_176_p3 = 64'd16;
    end else if (p_Result_s_31_fu_164_p5[46] == 1'b1) begin
        tmp_8_fu_176_p3 = 64'd17;
    end else if (p_Result_s_31_fu_164_p5[45] == 1'b1) begin
        tmp_8_fu_176_p3 = 64'd18;
    end else if (p_Result_s_31_fu_164_p5[44] == 1'b1) begin
        tmp_8_fu_176_p3 = 64'd19;
    end else if (p_Result_s_31_fu_164_p5[43] == 1'b1) begin
        tmp_8_fu_176_p3 = 64'd20;
    end else if (p_Result_s_31_fu_164_p5[42] == 1'b1) begin
        tmp_8_fu_176_p3 = 64'd21;
    end else if (p_Result_s_31_fu_164_p5[41] == 1'b1) begin
        tmp_8_fu_176_p3 = 64'd22;
    end else if (p_Result_s_31_fu_164_p5[40] == 1'b1) begin
        tmp_8_fu_176_p3 = 64'd23;
    end else if (p_Result_s_31_fu_164_p5[39] == 1'b1) begin
        tmp_8_fu_176_p3 = 64'd24;
    end else if (p_Result_s_31_fu_164_p5[38] == 1'b1) begin
        tmp_8_fu_176_p3 = 64'd25;
    end else if (p_Result_s_31_fu_164_p5[37] == 1'b1) begin
        tmp_8_fu_176_p3 = 64'd26;
    end else if (p_Result_s_31_fu_164_p5[36] == 1'b1) begin
        tmp_8_fu_176_p3 = 64'd27;
    end else if (p_Result_s_31_fu_164_p5[35] == 1'b1) begin
        tmp_8_fu_176_p3 = 64'd28;
    end else if (p_Result_s_31_fu_164_p5[34] == 1'b1) begin
        tmp_8_fu_176_p3 = 64'd29;
    end else if (p_Result_s_31_fu_164_p5[33] == 1'b1) begin
        tmp_8_fu_176_p3 = 64'd30;
    end else if (p_Result_s_31_fu_164_p5[32] == 1'b1) begin
        tmp_8_fu_176_p3 = 64'd31;
    end else if (p_Result_s_31_fu_164_p5[31] == 1'b1) begin
        tmp_8_fu_176_p3 = 64'd32;
    end else if (p_Result_s_31_fu_164_p5[30] == 1'b1) begin
        tmp_8_fu_176_p3 = 64'd33;
    end else if (p_Result_s_31_fu_164_p5[29] == 1'b1) begin
        tmp_8_fu_176_p3 = 64'd34;
    end else if (p_Result_s_31_fu_164_p5[28] == 1'b1) begin
        tmp_8_fu_176_p3 = 64'd35;
    end else if (p_Result_s_31_fu_164_p5[27] == 1'b1) begin
        tmp_8_fu_176_p3 = 64'd36;
    end else if (p_Result_s_31_fu_164_p5[26] == 1'b1) begin
        tmp_8_fu_176_p3 = 64'd37;
    end else if (p_Result_s_31_fu_164_p5[25] == 1'b1) begin
        tmp_8_fu_176_p3 = 64'd38;
    end else if (p_Result_s_31_fu_164_p5[24] == 1'b1) begin
        tmp_8_fu_176_p3 = 64'd39;
    end else if (p_Result_s_31_fu_164_p5[23] == 1'b1) begin
        tmp_8_fu_176_p3 = 64'd40;
    end else if (p_Result_s_31_fu_164_p5[22] == 1'b1) begin
        tmp_8_fu_176_p3 = 64'd41;
    end else if (p_Result_s_31_fu_164_p5[21] == 1'b1) begin
        tmp_8_fu_176_p3 = 64'd42;
    end else if (p_Result_s_31_fu_164_p5[20] == 1'b1) begin
        tmp_8_fu_176_p3 = 64'd43;
    end else if (p_Result_s_31_fu_164_p5[19] == 1'b1) begin
        tmp_8_fu_176_p3 = 64'd44;
    end else if (p_Result_s_31_fu_164_p5[18] == 1'b1) begin
        tmp_8_fu_176_p3 = 64'd45;
    end else if (p_Result_s_31_fu_164_p5[17] == 1'b1) begin
        tmp_8_fu_176_p3 = 64'd46;
    end else if (p_Result_s_31_fu_164_p5[16] == 1'b1) begin
        tmp_8_fu_176_p3 = 64'd47;
    end else if (p_Result_s_31_fu_164_p5[15] == 1'b1) begin
        tmp_8_fu_176_p3 = 64'd48;
    end else if (p_Result_s_31_fu_164_p5[14] == 1'b1) begin
        tmp_8_fu_176_p3 = 64'd49;
    end else if (p_Result_s_31_fu_164_p5[13] == 1'b1) begin
        tmp_8_fu_176_p3 = 64'd50;
    end else if (p_Result_s_31_fu_164_p5[12] == 1'b1) begin
        tmp_8_fu_176_p3 = 64'd51;
    end else if (p_Result_s_31_fu_164_p5[11] == 1'b1) begin
        tmp_8_fu_176_p3 = 64'd52;
    end else if (p_Result_s_31_fu_164_p5[10] == 1'b1) begin
        tmp_8_fu_176_p3 = 64'd53;
    end else if (p_Result_s_31_fu_164_p5[9] == 1'b1) begin
        tmp_8_fu_176_p3 = 64'd54;
    end else if (p_Result_s_31_fu_164_p5[8] == 1'b1) begin
        tmp_8_fu_176_p3 = 64'd55;
    end else if (p_Result_s_31_fu_164_p5[7] == 1'b1) begin
        tmp_8_fu_176_p3 = 64'd56;
    end else if (p_Result_s_31_fu_164_p5[6] == 1'b1) begin
        tmp_8_fu_176_p3 = 64'd57;
    end else if (p_Result_s_31_fu_164_p5[5] == 1'b1) begin
        tmp_8_fu_176_p3 = 64'd58;
    end else if (p_Result_s_31_fu_164_p5[4] == 1'b1) begin
        tmp_8_fu_176_p3 = 64'd59;
    end else if (p_Result_s_31_fu_164_p5[3] == 1'b1) begin
        tmp_8_fu_176_p3 = 64'd60;
    end else if (p_Result_s_31_fu_164_p5[2] == 1'b1) begin
        tmp_8_fu_176_p3 = 64'd61;
    end else if (p_Result_s_31_fu_164_p5[1] == 1'b1) begin
        tmp_8_fu_176_p3 = 64'd62;
    end else if (p_Result_s_31_fu_164_p5[0] == 1'b1) begin
        tmp_8_fu_176_p3 = 64'd63;
    end else begin
        tmp_8_fu_176_p3 = 64'd64;
    end
end

assign tmp_91_fu_504_p3 = CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read[index_assign_1_8_cas_fu_500_p1];

assign tmp_93_fu_530_p3 = CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read[index_assign_1_9_cas_fu_526_p1];

assign tmp_94_fu_779_p3 = p_0274_1_fu_568_p3[32'd9];

assign tmp_fu_92_p3 = CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read[32'd79];

assign tmp_s_fu_545_p2 = (tmp_reg_858 ^ 1'd1);

endmodule //get_result
