-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2017.4
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity get_result is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    CompleteRegister_m_cr_V_read : IN STD_LOGIC_VECTOR (71 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (15 downto 0) );
end;


architecture behav of get_result is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (8 downto 0) := "000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (8 downto 0) := "000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (8 downto 0) := "000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (8 downto 0) := "000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (8 downto 0) := "000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (8 downto 0) := "000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (8 downto 0) := "001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (8 downto 0) := "010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (8 downto 0) := "100000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv10_0 : STD_LOGIC_VECTOR (9 downto 0) := "0000000000";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv16_0 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    constant ap_const_lv32_47 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001000111";
    constant ap_const_lv32_40 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001000000";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv72_FFFFFFFFFFFFFFFFFF : STD_LOGIC_VECTOR (71 downto 0) := "111111111111111111111111111111111111111111111111111111111111111111111111";
    constant ap_const_lv8_80 : STD_LOGIC_VECTOR (7 downto 0) := "10000000";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv5_10 : STD_LOGIC_VECTOR (4 downto 0) := "10000";
    constant ap_const_lv9_7E : STD_LOGIC_VECTOR (8 downto 0) := "001111110";
    constant ap_const_lv4_A : STD_LOGIC_VECTOR (3 downto 0) := "1010";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_lv4_9 : STD_LOGIC_VECTOR (3 downto 0) := "1001";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (8 downto 0) := "000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal CompleteRegister_m_c_fu_143_p1 : STD_LOGIC_VECTOR (127 downto 0);
    signal CompleteRegister_m_c_reg_434 : STD_LOGIC_VECTOR (127 downto 0);
    signal p_Repl2_4_fu_147_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Repl2_4_reg_439 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_11_fu_177_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_11_reg_444 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_14_fu_195_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_14_reg_449 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_15_fu_199_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_15_reg_454 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_reg_460 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_Result_s_7_fu_219_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal p_Result_s_7_reg_466 : STD_LOGIC_VECTOR (63 downto 0);
    signal leading_signs_V_1_fu_227_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal leading_signs_V_1_reg_471 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal tmp_4_fu_233_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_4_reg_477 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal tmp_3_fu_249_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_3_reg_481 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal tmp_8_fu_261_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_8_reg_486 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_9_fu_265_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_9_reg_491 : STD_LOGIC_VECTOR (7 downto 0);
    signal leading_signs_V_fu_273_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal leading_signs_V_reg_497 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal exponent_V_fu_289_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal exponent_V_reg_502 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal addconv_fu_299_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal addconv_reg_507 : STD_LOGIC_VECTOR (8 downto 0);
    signal i_fu_315_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal mantissa_V_fu_371_p4 : STD_LOGIC_VECTOR (9 downto 0);
    signal exitcond1_fu_309_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_1_fu_391_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_CS_fsm_state9 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state9 : signal is "none";
    signal p_Result_3_fu_415_p4 : STD_LOGIC_VECTOR (9 downto 0);
    signal exitcond_fu_385_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_s_reg_68 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal p_Val2_2_reg_77 : STD_LOGIC_VECTOR (9 downto 0);
    signal i_op_assign_reg_89 : STD_LOGIC_VECTOR (3 downto 0);
    signal p_Val2_1_reg_100 : STD_LOGIC_VECTOR (9 downto 0);
    signal bvh_d_index_2_reg_110 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_phi_mux_p_Repl2_s_phi_fu_124_p4 : STD_LOGIC_VECTOR (9 downto 0);
    signal p_Repl2_s_reg_121 : STD_LOGIC_VECTOR (9 downto 0);
    signal p_Result_4_fu_425_p4 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_phi_mux_agg_result_V_phi_fu_136_p4 : STD_LOGIC_VECTOR (15 downto 0);
    signal agg_result_V_reg_132 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_7_fu_155_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_Result_1_fu_165_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal p_Result_2_fu_183_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_2_fu_187_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_10_fu_169_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal flipped_V_fu_203_p2 : STD_LOGIC_VECTOR (71 downto 0);
    signal tmp_13_fu_223_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_Result_s_fu_238_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_s_fu_254_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_1_fu_241_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_5_fu_269_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_16_fu_279_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_6_fu_283_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal rhs_V_cast_fu_295_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal i_op_assign_cast3_fu_305_p1 : STD_LOGIC_VECTOR (8 downto 0);
    signal r_V_fu_321_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_17_fu_326_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal bvh_d_index_fu_340_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal index_assign_1_cast_fu_350_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_Repl2_1_fu_354_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal rev_fu_334_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_18_fu_361_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal index_assign_cast_fu_346_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_18_cast_fu_367_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal index_assign_2_cast1_fu_381_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_21_fu_397_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_12_fu_405_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Repl2_2_fu_411_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_return_preg : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (8 downto 0);


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_return_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_return_preg <= ap_const_lv16_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_state9) and ((exitcond_fu_385_p2 = ap_const_lv1_1) or (p_Repl2_4_reg_439 = ap_const_lv1_0)))) then 
                    ap_return_preg <= ap_phi_mux_agg_result_V_phi_fu_136_p4;
                end if; 
            end if;
        end if;
    end process;


    agg_result_V_reg_132_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_4_fu_233_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                agg_result_V_reg_132 <= ap_const_lv16_0;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state9) and (((tmp_4_reg_477 = ap_const_lv1_0) and (p_Repl2_4_reg_439 = ap_const_lv1_0)) or ((exitcond_fu_385_p2 = ap_const_lv1_1) and (p_Repl2_4_reg_439 = ap_const_lv1_1))))) then 
                agg_result_V_reg_132 <= p_Result_4_fu_425_p4;
            end if; 
        end if;
    end process;

    bvh_d_index_2_reg_110_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((p_Repl2_4_reg_439 = ap_const_lv1_1)) then
                if (((exitcond1_fu_309_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state8))) then 
                    bvh_d_index_2_reg_110 <= ap_const_lv4_0;
                elsif (((exitcond_fu_385_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state9))) then 
                    bvh_d_index_2_reg_110 <= i_1_fu_391_p2;
                end if;
            end if; 
        end if;
    end process;

    i_op_assign_reg_89_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond1_fu_309_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state8))) then 
                i_op_assign_reg_89 <= i_fu_315_p2;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
                i_op_assign_reg_89 <= ap_const_lv4_0;
            end if; 
        end if;
    end process;

    p_Repl2_s_reg_121_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_fu_385_p2 = ap_const_lv1_1) and (p_Repl2_4_reg_439 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state9))) then 
                p_Repl2_s_reg_121 <= p_Val2_1_reg_100;
            elsif (((exitcond1_fu_309_p2 = ap_const_lv1_1) and (p_Repl2_4_reg_439 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state8))) then 
                p_Repl2_s_reg_121 <= p_Val2_2_reg_77;
            end if; 
        end if;
    end process;

    p_Val2_1_reg_100_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((p_Repl2_4_reg_439 = ap_const_lv1_1)) then
                if (((exitcond1_fu_309_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state8))) then 
                    p_Val2_1_reg_100 <= p_Val2_2_reg_77;
                elsif (((exitcond_fu_385_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state9))) then 
                    p_Val2_1_reg_100 <= p_Result_3_fu_415_p4;
                end if;
            end if; 
        end if;
    end process;

    p_Val2_2_reg_77_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond1_fu_309_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state8))) then 
                p_Val2_2_reg_77 <= mantissa_V_fu_371_p4;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
                p_Val2_2_reg_77 <= ap_const_lv10_0;
            end if; 
        end if;
    end process;

    p_s_reg_68_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_4_fu_233_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                p_s_reg_68 <= leading_signs_V_1_reg_471;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
                p_s_reg_68 <= leading_signs_V_reg_497;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                CompleteRegister_m_c_reg_434 <= CompleteRegister_m_c_fu_143_p1;
                p_Repl2_4_reg_439 <= CompleteRegister_m_cr_V_read(71 downto 71);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state7)) then
                addconv_reg_507 <= addconv_fu_299_p2;
                exponent_V_reg_502 <= exponent_V_fu_289_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                leading_signs_V_1_reg_471 <= leading_signs_V_1_fu_227_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then
                leading_signs_V_reg_497 <= leading_signs_V_fu_273_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((p_Repl2_4_fu_147_p3 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                p_Result_s_7_reg_466 <= p_Result_s_7_fu_219_p1;
                tmp_reg_460 <= flipped_V_fu_203_p2(71 downto 64);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((p_Repl2_4_fu_147_p3 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                tmp_11_reg_444 <= tmp_11_fu_177_p2;
                tmp_14_reg_449 <= tmp_14_fu_195_p1;
                tmp_15_reg_454 <= tmp_15_fu_199_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                tmp_3_reg_481 <= tmp_3_fu_249_p2;
                tmp_8_reg_486 <= tmp_8_fu_261_p1;
                tmp_9_reg_491 <= tmp_9_fu_265_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                tmp_4_reg_477 <= tmp_4_fu_233_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, p_Repl2_4_fu_147_p3, p_Repl2_4_reg_439, tmp_4_fu_233_p2, ap_CS_fsm_state3, ap_CS_fsm_state8, exitcond1_fu_309_p2, ap_CS_fsm_state9, exitcond_fu_385_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((p_Repl2_4_fu_147_p3 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                elsif (((p_Repl2_4_fu_147_p3 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when ap_ST_fsm_state3 => 
                if (((tmp_4_fu_233_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state9;
                else
                    ap_NS_fsm <= ap_ST_fsm_state7;
                end if;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when ap_ST_fsm_state8 => 
                if (((exitcond1_fu_309_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state8))) then
                    ap_NS_fsm <= ap_ST_fsm_state9;
                else
                    ap_NS_fsm <= ap_ST_fsm_state8;
                end if;
            when ap_ST_fsm_state9 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state9) and ((exitcond_fu_385_p2 = ap_const_lv1_1) or (p_Repl2_4_reg_439 = ap_const_lv1_0)))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state9;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXX";
        end case;
    end process;
        CompleteRegister_m_c_fu_143_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(CompleteRegister_m_cr_V_read),128));

    addconv_fu_299_p2 <= std_logic_vector(unsigned(ap_const_lv9_7E) - unsigned(rhs_V_cast_fu_295_p1));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);
    ap_CS_fsm_state8 <= ap_CS_fsm(7);
    ap_CS_fsm_state9 <= ap_CS_fsm(8);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, p_Repl2_4_reg_439, ap_CS_fsm_state9, exitcond_fu_385_p2)
    begin
        if ((((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)) or ((ap_const_logic_1 = ap_CS_fsm_state9) and ((exitcond_fu_385_p2 = ap_const_lv1_1) or (p_Repl2_4_reg_439 = ap_const_lv1_0))))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_phi_mux_agg_result_V_phi_fu_136_p4_assign_proc : process(p_Repl2_4_reg_439, tmp_4_reg_477, ap_CS_fsm_state9, exitcond_fu_385_p2, p_Result_4_fu_425_p4, agg_result_V_reg_132)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state9) and (((tmp_4_reg_477 = ap_const_lv1_0) and (p_Repl2_4_reg_439 = ap_const_lv1_0)) or ((exitcond_fu_385_p2 = ap_const_lv1_1) and (p_Repl2_4_reg_439 = ap_const_lv1_1))))) then 
            ap_phi_mux_agg_result_V_phi_fu_136_p4 <= p_Result_4_fu_425_p4;
        else 
            ap_phi_mux_agg_result_V_phi_fu_136_p4 <= agg_result_V_reg_132;
        end if; 
    end process;


    ap_phi_mux_p_Repl2_s_phi_fu_124_p4_assign_proc : process(p_Repl2_4_reg_439, ap_CS_fsm_state9, exitcond_fu_385_p2, p_Val2_1_reg_100, p_Repl2_s_reg_121)
    begin
        if (((exitcond_fu_385_p2 = ap_const_lv1_1) and (p_Repl2_4_reg_439 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state9))) then 
            ap_phi_mux_p_Repl2_s_phi_fu_124_p4 <= p_Val2_1_reg_100;
        else 
            ap_phi_mux_p_Repl2_s_phi_fu_124_p4 <= p_Repl2_s_reg_121;
        end if; 
    end process;


    ap_ready_assign_proc : process(p_Repl2_4_reg_439, ap_CS_fsm_state9, exitcond_fu_385_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state9) and ((exitcond_fu_385_p2 = ap_const_lv1_1) or (p_Repl2_4_reg_439 = ap_const_lv1_0)))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_return_assign_proc : process(p_Repl2_4_reg_439, ap_CS_fsm_state9, exitcond_fu_385_p2, ap_phi_mux_agg_result_V_phi_fu_136_p4, ap_return_preg)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state9) and ((exitcond_fu_385_p2 = ap_const_lv1_1) or (p_Repl2_4_reg_439 = ap_const_lv1_0)))) then 
            ap_return <= ap_phi_mux_agg_result_V_phi_fu_136_p4;
        else 
            ap_return <= ap_return_preg;
        end if; 
    end process;

    bvh_d_index_fu_340_p2 <= std_logic_vector(signed(ap_const_lv4_9) - signed(i_op_assign_reg_89));
    exitcond1_fu_309_p2 <= "1" when (i_op_assign_reg_89 = ap_const_lv4_A) else "0";
    exitcond_fu_385_p2 <= "1" when (bvh_d_index_2_reg_110 = ap_const_lv4_A) else "0";
    exponent_V_fu_289_p2 <= (tmp_6_fu_283_p2 xor ap_const_lv5_10);
    flipped_V_fu_203_p2 <= (ap_const_lv72_FFFFFFFFFFFFFFFFFF xor CompleteRegister_m_cr_V_read);
    i_1_fu_391_p2 <= std_logic_vector(unsigned(bvh_d_index_2_reg_110) + unsigned(ap_const_lv4_1));
    i_fu_315_p2 <= std_logic_vector(unsigned(i_op_assign_reg_89) + unsigned(ap_const_lv4_1));
    i_op_assign_cast3_fu_305_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_op_assign_reg_89),9));
        index_assign_1_cast_fu_350_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(r_V_fu_321_p2),32));

    index_assign_2_cast1_fu_381_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(bvh_d_index_2_reg_110),32));
    index_assign_cast_fu_346_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(bvh_d_index_fu_340_p2),32));
    leading_signs_V_1_fu_227_p3 <= 
        tmp_13_fu_223_p2 when (tmp_11_reg_444(0) = '1') else 
        tmp_15_reg_454;
    leading_signs_V_fu_273_p3 <= 
        tmp_5_fu_269_p2 when (tmp_3_reg_481(0) = '1') else 
        tmp_9_reg_491;
    
    mantissa_V_fu_371_p4_proc : process(p_Val2_2_reg_77, index_assign_cast_fu_346_p1, tmp_18_cast_fu_367_p1)
    variable result: std_logic_vector(0 downto 0);
    begin
        mantissa_V_fu_371_p4 <= p_Val2_2_reg_77;
        if to_integer(unsigned(index_assign_cast_fu_346_p1)) >= p_Val2_2_reg_77'low and to_integer(unsigned(index_assign_cast_fu_346_p1)) <= p_Val2_2_reg_77'high then
            result(0) := '0';
            for i in tmp_18_cast_fu_367_p1'range loop
                result(0) := result(0) or tmp_18_cast_fu_367_p1(i);
            end loop;
            mantissa_V_fu_371_p4(to_integer(unsigned(index_assign_cast_fu_346_p1))) <= result(0);
        end if;
    end process;

    p_Repl2_1_fu_354_p3 <= CompleteRegister_m_c_reg_434(to_integer(unsigned(index_assign_1_cast_fu_350_p1)) downto to_integer(unsigned(index_assign_1_cast_fu_350_p1))) when (to_integer(unsigned(index_assign_1_cast_fu_350_p1))>= 0 and to_integer(unsigned(index_assign_1_cast_fu_350_p1))<=127) else "-";
    p_Repl2_2_fu_411_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_12_fu_405_p2),64));
    p_Repl2_4_fu_147_p3 <= CompleteRegister_m_cr_V_read(71 downto 71);
        p_Result_1_fu_165_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_7_fu_155_p4),64));

    p_Result_2_fu_183_p1 <= CompleteRegister_m_cr_V_read(64 - 1 downto 0);
    
    p_Result_3_fu_415_p4_proc : process(p_Val2_1_reg_100, index_assign_2_cast1_fu_381_p1, p_Repl2_2_fu_411_p1)
    variable result: std_logic_vector(0 downto 0);
    begin
        p_Result_3_fu_415_p4 <= p_Val2_1_reg_100;
        if to_integer(unsigned(index_assign_2_cast1_fu_381_p1)) >= p_Val2_1_reg_100'low and to_integer(unsigned(index_assign_2_cast1_fu_381_p1)) <= p_Val2_1_reg_100'high then
            result(0) := '0';
            for i in p_Repl2_2_fu_411_p1'range loop
                result(0) := result(0) or p_Repl2_2_fu_411_p1(i);
            end loop;
            p_Result_3_fu_415_p4(to_integer(unsigned(index_assign_2_cast1_fu_381_p1))) <= result(0);
        end if;
    end process;

    p_Result_4_fu_425_p4 <= ((p_Repl2_4_reg_439 & exponent_V_reg_502) & ap_phi_mux_p_Repl2_s_phi_fu_124_p4);
    p_Result_s_7_fu_219_p1 <= flipped_V_fu_203_p2(64 - 1 downto 0);
        p_Result_s_fu_238_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(tmp_reg_460),64));

    r_V_fu_321_p2 <= std_logic_vector(unsigned(addconv_reg_507) - unsigned(i_op_assign_cast3_fu_305_p1));
    rev_fu_334_p2 <= (tmp_17_fu_326_p3 xor ap_const_lv1_1);
    rhs_V_cast_fu_295_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_s_reg_68),9));
    
    tmp_10_fu_169_p3_proc : process(p_Result_1_fu_165_p1)
    begin
        tmp_10_fu_169_p3 <= std_logic_vector(to_unsigned(64, 64));
        for i in 64 - 1 downto 0 loop
            if p_Result_1_fu_165_p1(i) = '1' then
                tmp_10_fu_169_p3 <= std_logic_vector(to_unsigned(64-1-i,64));
                exit;
            end if;
        end loop;
    end process;

    tmp_11_fu_177_p2 <= "1" when (tmp_7_fu_155_p4 = ap_const_lv8_0) else "0";
    tmp_12_fu_405_p2 <= (tmp_21_fu_397_p3 xor ap_const_lv1_1);
    tmp_13_fu_223_p2 <= std_logic_vector(unsigned(tmp_14_reg_449) + unsigned(tmp_15_reg_454));
    tmp_14_fu_195_p1 <= tmp_2_fu_187_p3(8 - 1 downto 0);
    tmp_15_fu_199_p1 <= tmp_10_fu_169_p3(8 - 1 downto 0);
    tmp_16_fu_279_p1 <= p_s_reg_68(5 - 1 downto 0);
    tmp_17_fu_326_p3 <= r_V_fu_321_p2(8 downto 8);
    tmp_18_cast_fu_367_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_18_fu_361_p2),64));
    tmp_18_fu_361_p2 <= (rev_fu_334_p2 and p_Repl2_1_fu_354_p3);
    
    tmp_1_fu_241_p3_proc : process(p_Result_s_fu_238_p1)
    begin
        tmp_1_fu_241_p3 <= std_logic_vector(to_unsigned(64, 64));
        for i in 64 - 1 downto 0 loop
            if p_Result_s_fu_238_p1(i) = '1' then
                tmp_1_fu_241_p3 <= std_logic_vector(to_unsigned(64-1-i,64));
                exit;
            end if;
        end loop;
    end process;

    tmp_21_fu_397_p3 <= p_Val2_1_reg_100(to_integer(unsigned(index_assign_2_cast1_fu_381_p1)) downto to_integer(unsigned(index_assign_2_cast1_fu_381_p1))) when (to_integer(unsigned(index_assign_2_cast1_fu_381_p1))>= 0 and to_integer(unsigned(index_assign_2_cast1_fu_381_p1))<=9) else "-";
    
    tmp_2_fu_187_p3_proc : process(p_Result_2_fu_183_p1)
    begin
        tmp_2_fu_187_p3 <= std_logic_vector(to_unsigned(64, 64));
        for i in 64 - 1 downto 0 loop
            if p_Result_2_fu_183_p1(i) = '1' then
                tmp_2_fu_187_p3 <= std_logic_vector(to_unsigned(64-1-i,64));
                exit;
            end if;
        end loop;
    end process;

    tmp_3_fu_249_p2 <= "1" when (tmp_reg_460 = ap_const_lv8_0) else "0";
    tmp_4_fu_233_p2 <= "1" when (leading_signs_V_1_reg_471 = ap_const_lv8_80) else "0";
    tmp_5_fu_269_p2 <= std_logic_vector(unsigned(tmp_8_reg_486) + unsigned(tmp_9_reg_491));
    tmp_6_fu_283_p2 <= std_logic_vector(unsigned(ap_const_lv5_0) - unsigned(tmp_16_fu_279_p1));
    tmp_7_fu_155_p4 <= CompleteRegister_m_cr_V_read(71 downto 64);
    tmp_8_fu_261_p1 <= tmp_s_fu_254_p3(8 - 1 downto 0);
    tmp_9_fu_265_p1 <= tmp_1_fu_241_p3(8 - 1 downto 0);
    
    tmp_s_fu_254_p3_proc : process(p_Result_s_7_reg_466)
    begin
        tmp_s_fu_254_p3 <= std_logic_vector(to_unsigned(64, 64));
        for i in 64 - 1 downto 0 loop
            if p_Result_s_7_reg_466(i) = '1' then
                tmp_s_fu_254_p3 <= std_logic_vector(to_unsigned(64-1-i,64));
                exit;
            end if;
        end loop;
    end process;

end behav;
