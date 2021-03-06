-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2017.4
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity unpacker is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    start_full_n : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    start_out : OUT STD_LOGIC;
    start_write : OUT STD_LOGIC;
    sdata_in_TDATA : IN STD_LOGIC_VECTOR (15 downto 0);
    sdata_in_TVALID : IN STD_LOGIC;
    sdata_in_TREADY : OUT STD_LOGIC;
    sdata_in_TKEEP : IN STD_LOGIC_VECTOR (1 downto 0);
    sdata_in_TSTRB : IN STD_LOGIC_VECTOR (1 downto 0);
    sdata_in_TUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    sdata_in_TLAST : IN STD_LOGIC_VECTOR (0 downto 0);
    sdata_in_TID : IN STD_LOGIC_VECTOR (0 downto 0);
    sdata_in_TDEST : IN STD_LOGIC_VECTOR (0 downto 0);
    stream_out_V_V_din : OUT STD_LOGIC_VECTOR (15 downto 0);
    stream_out_V_V_full_n : IN STD_LOGIC;
    stream_out_V_V_write : OUT STD_LOGIC );
end;


architecture behav of unpacker is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv10_0 : STD_LOGIC_VECTOR (9 downto 0) := "0000000000";
    constant ap_const_lv10_310 : STD_LOGIC_VECTOR (9 downto 0) := "1100010000";
    constant ap_const_lv10_1 : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";

    signal real_start : STD_LOGIC;
    signal start_once_reg : STD_LOGIC := '0';
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (2 downto 0) := "001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal internal_ap_ready : STD_LOGIC;
    signal stream_in_V_data_V_0_data_out : STD_LOGIC_VECTOR (15 downto 0);
    signal stream_in_V_data_V_0_vld_in : STD_LOGIC;
    signal stream_in_V_data_V_0_vld_out : STD_LOGIC;
    signal stream_in_V_data_V_0_ack_in : STD_LOGIC;
    signal stream_in_V_data_V_0_ack_out : STD_LOGIC;
    signal stream_in_V_data_V_0_payload_A : STD_LOGIC_VECTOR (15 downto 0);
    signal stream_in_V_data_V_0_payload_B : STD_LOGIC_VECTOR (15 downto 0);
    signal stream_in_V_data_V_0_sel_rd : STD_LOGIC := '0';
    signal stream_in_V_data_V_0_sel_wr : STD_LOGIC := '0';
    signal stream_in_V_data_V_0_sel : STD_LOGIC;
    signal stream_in_V_data_V_0_load_A : STD_LOGIC;
    signal stream_in_V_data_V_0_load_B : STD_LOGIC;
    signal stream_in_V_data_V_0_state : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal stream_in_V_data_V_0_state_cmp_full : STD_LOGIC;
    signal stream_in_V_dest_V_0_vld_in : STD_LOGIC;
    signal stream_in_V_dest_V_0_ack_out : STD_LOGIC;
    signal stream_in_V_dest_V_0_state : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal sdata_in_TDATA_blk_n : STD_LOGIC;
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal exitcond_reg_125 : STD_LOGIC_VECTOR (0 downto 0);
    signal stream_out_V_V_blk_n : STD_LOGIC;
    signal i_reg_97 : STD_LOGIC_VECTOR (9 downto 0);
    signal exitcond_fu_108_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state2_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal i_1_fu_114_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal ap_block_state1 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_condition_pp0_exit_iter0_state2 : STD_LOGIC;
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;


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


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter0_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
            else
                if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_condition_pp0_exit_iter0_state2) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
                elsif ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_condition_pp0_exit_iter0_state2))) then 
                    ap_enable_reg_pp0_iter1 <= (ap_const_logic_1 xor ap_condition_pp0_exit_iter0_state2);
                elsif ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                elsif ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    start_once_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                start_once_reg <= ap_const_logic_0;
            else
                if (((internal_ap_ready = ap_const_logic_0) and (real_start = ap_const_logic_1))) then 
                    start_once_reg <= ap_const_logic_1;
                elsif ((internal_ap_ready = ap_const_logic_1)) then 
                    start_once_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    stream_in_V_data_V_0_sel_rd_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                stream_in_V_data_V_0_sel_rd <= ap_const_logic_0;
            else
                if (((stream_in_V_data_V_0_ack_out = ap_const_logic_1) and (stream_in_V_data_V_0_vld_out = ap_const_logic_1))) then 
                                        stream_in_V_data_V_0_sel_rd <= not(stream_in_V_data_V_0_sel_rd);
                end if; 
            end if;
        end if;
    end process;


    stream_in_V_data_V_0_sel_wr_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                stream_in_V_data_V_0_sel_wr <= ap_const_logic_0;
            else
                if (((stream_in_V_data_V_0_ack_in = ap_const_logic_1) and (stream_in_V_data_V_0_vld_in = ap_const_logic_1))) then 
                                        stream_in_V_data_V_0_sel_wr <= not(stream_in_V_data_V_0_sel_wr);
                end if; 
            end if;
        end if;
    end process;


    stream_in_V_data_V_0_state_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                stream_in_V_data_V_0_state <= ap_const_lv2_0;
            else
                if ((((stream_in_V_data_V_0_state = ap_const_lv2_2) and (stream_in_V_data_V_0_vld_in = ap_const_logic_0)) or ((stream_in_V_data_V_0_state = ap_const_lv2_3) and (stream_in_V_data_V_0_vld_in = ap_const_logic_0) and (stream_in_V_data_V_0_ack_out = ap_const_logic_1)))) then 
                    stream_in_V_data_V_0_state <= ap_const_lv2_2;
                elsif ((((stream_in_V_data_V_0_state = ap_const_lv2_1) and (stream_in_V_data_V_0_ack_out = ap_const_logic_0)) or ((stream_in_V_data_V_0_state = ap_const_lv2_3) and (stream_in_V_data_V_0_ack_out = ap_const_logic_0) and (stream_in_V_data_V_0_vld_in = ap_const_logic_1)))) then 
                    stream_in_V_data_V_0_state <= ap_const_lv2_1;
                elsif (((not(((stream_in_V_data_V_0_vld_in = ap_const_logic_0) and (stream_in_V_data_V_0_ack_out = ap_const_logic_1))) and not(((stream_in_V_data_V_0_ack_out = ap_const_logic_0) and (stream_in_V_data_V_0_vld_in = ap_const_logic_1))) and (stream_in_V_data_V_0_state = ap_const_lv2_3)) or ((stream_in_V_data_V_0_state = ap_const_lv2_1) and (stream_in_V_data_V_0_ack_out = ap_const_logic_1)) or ((stream_in_V_data_V_0_state = ap_const_lv2_2) and (stream_in_V_data_V_0_vld_in = ap_const_logic_1)))) then 
                    stream_in_V_data_V_0_state <= ap_const_lv2_3;
                else 
                    stream_in_V_data_V_0_state <= ap_const_lv2_2;
                end if; 
            end if;
        end if;
    end process;


    stream_in_V_dest_V_0_state_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                stream_in_V_dest_V_0_state <= ap_const_lv2_0;
            else
                if ((((stream_in_V_dest_V_0_state = ap_const_lv2_2) and (stream_in_V_dest_V_0_vld_in = ap_const_logic_0)) or ((stream_in_V_dest_V_0_state = ap_const_lv2_3) and (stream_in_V_dest_V_0_vld_in = ap_const_logic_0) and (stream_in_V_dest_V_0_ack_out = ap_const_logic_1)))) then 
                    stream_in_V_dest_V_0_state <= ap_const_lv2_2;
                elsif ((((stream_in_V_dest_V_0_state = ap_const_lv2_1) and (stream_in_V_dest_V_0_ack_out = ap_const_logic_0)) or ((stream_in_V_dest_V_0_state = ap_const_lv2_3) and (stream_in_V_dest_V_0_ack_out = ap_const_logic_0) and (stream_in_V_dest_V_0_vld_in = ap_const_logic_1)))) then 
                    stream_in_V_dest_V_0_state <= ap_const_lv2_1;
                elsif (((not(((stream_in_V_dest_V_0_vld_in = ap_const_logic_0) and (stream_in_V_dest_V_0_ack_out = ap_const_logic_1))) and not(((stream_in_V_dest_V_0_ack_out = ap_const_logic_0) and (stream_in_V_dest_V_0_vld_in = ap_const_logic_1))) and (stream_in_V_dest_V_0_state = ap_const_lv2_3)) or ((stream_in_V_dest_V_0_state = ap_const_lv2_1) and (stream_in_V_dest_V_0_ack_out = ap_const_logic_1)) or ((stream_in_V_dest_V_0_state = ap_const_lv2_2) and (stream_in_V_dest_V_0_vld_in = ap_const_logic_1)))) then 
                    stream_in_V_dest_V_0_state <= ap_const_lv2_3;
                else 
                    stream_in_V_dest_V_0_state <= ap_const_lv2_2;
                end if; 
            end if;
        end if;
    end process;


    i_reg_97_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                i_reg_97 <= ap_const_lv10_0;
            elsif (((exitcond_fu_108_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                i_reg_97 <= i_1_fu_114_p2;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                exitcond_reg_125 <= exitcond_fu_108_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((stream_in_V_data_V_0_load_A = ap_const_logic_1)) then
                stream_in_V_data_V_0_payload_A <= sdata_in_TDATA;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((stream_in_V_data_V_0_load_B = ap_const_logic_1)) then
                stream_in_V_data_V_0_payload_B <= sdata_in_TDATA;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (real_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, exitcond_fu_108_p2, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_pp0_stage0 => 
                if (not(((exitcond_fu_108_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1)))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif (((exitcond_fu_108_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXX";
        end case;
    end process;
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(1);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state4 <= ap_CS_fsm(2);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(stream_in_V_data_V_0_vld_out, stream_out_V_V_full_n, ap_enable_reg_pp0_iter1, exitcond_reg_125)
    begin
                ap_block_pp0_stage0_01001 <= ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (((exitcond_reg_125 = ap_const_lv1_0) and (stream_out_V_V_full_n = ap_const_logic_0)) or ((exitcond_reg_125 = ap_const_lv1_0) and (stream_in_V_data_V_0_vld_out = ap_const_logic_0))));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(stream_in_V_data_V_0_vld_out, stream_out_V_V_full_n, ap_enable_reg_pp0_iter1, exitcond_reg_125)
    begin
                ap_block_pp0_stage0_11001 <= ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (((exitcond_reg_125 = ap_const_lv1_0) and (stream_out_V_V_full_n = ap_const_logic_0)) or ((exitcond_reg_125 = ap_const_lv1_0) and (stream_in_V_data_V_0_vld_out = ap_const_logic_0))));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(stream_in_V_data_V_0_vld_out, stream_out_V_V_full_n, ap_enable_reg_pp0_iter1, exitcond_reg_125)
    begin
                ap_block_pp0_stage0_subdone <= ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (((exitcond_reg_125 = ap_const_lv1_0) and (stream_out_V_V_full_n = ap_const_logic_0)) or ((exitcond_reg_125 = ap_const_lv1_0) and (stream_in_V_data_V_0_vld_out = ap_const_logic_0))));
    end process;


    ap_block_state1_assign_proc : process(real_start, ap_done_reg)
    begin
                ap_block_state1 <= ((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;

        ap_block_state2_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state3_pp0_stage0_iter1_assign_proc : process(stream_in_V_data_V_0_vld_out, stream_out_V_V_full_n, exitcond_reg_125)
    begin
                ap_block_state3_pp0_stage0_iter1 <= (((exitcond_reg_125 = ap_const_lv1_0) and (stream_out_V_V_full_n = ap_const_logic_0)) or ((exitcond_reg_125 = ap_const_lv1_0) and (stream_in_V_data_V_0_vld_out = ap_const_logic_0)));
    end process;


    ap_condition_pp0_exit_iter0_state2_assign_proc : process(exitcond_fu_108_p2)
    begin
        if ((exitcond_fu_108_p2 = ap_const_lv1_1)) then 
            ap_condition_pp0_exit_iter0_state2 <= ap_const_logic_1;
        else 
            ap_condition_pp0_exit_iter0_state2 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_done_reg, ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_idle_assign_proc : process(real_start, ap_CS_fsm_state1)
    begin
        if (((real_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter0)
    begin
        if (((ap_enable_reg_pp0_iter0 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_ready <= internal_ap_ready;
    exitcond_fu_108_p2 <= "1" when (i_reg_97 = ap_const_lv10_310) else "0";
    i_1_fu_114_p2 <= std_logic_vector(unsigned(i_reg_97) + unsigned(ap_const_lv10_1));

    internal_ap_ready_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            internal_ap_ready <= ap_const_logic_1;
        else 
            internal_ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    real_start_assign_proc : process(ap_start, start_full_n, start_once_reg)
    begin
        if (((start_once_reg = ap_const_logic_0) and (start_full_n = ap_const_logic_0))) then 
            real_start <= ap_const_logic_0;
        else 
            real_start <= ap_start;
        end if; 
    end process;


    sdata_in_TDATA_blk_n_assign_proc : process(stream_in_V_data_V_0_state, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, exitcond_reg_125)
    begin
        if (((exitcond_reg_125 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            sdata_in_TDATA_blk_n <= stream_in_V_data_V_0_state(0);
        else 
            sdata_in_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    sdata_in_TREADY <= stream_in_V_dest_V_0_state(1);
    start_out <= real_start;

    start_write_assign_proc : process(real_start, start_once_reg)
    begin
        if (((start_once_reg = ap_const_logic_0) and (real_start = ap_const_logic_1))) then 
            start_write <= ap_const_logic_1;
        else 
            start_write <= ap_const_logic_0;
        end if; 
    end process;

    stream_in_V_data_V_0_ack_in <= stream_in_V_data_V_0_state(1);

    stream_in_V_data_V_0_ack_out_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, exitcond_reg_125, ap_block_pp0_stage0_11001)
    begin
        if (((exitcond_reg_125 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            stream_in_V_data_V_0_ack_out <= ap_const_logic_1;
        else 
            stream_in_V_data_V_0_ack_out <= ap_const_logic_0;
        end if; 
    end process;


    stream_in_V_data_V_0_data_out_assign_proc : process(stream_in_V_data_V_0_payload_A, stream_in_V_data_V_0_payload_B, stream_in_V_data_V_0_sel)
    begin
        if ((stream_in_V_data_V_0_sel = ap_const_logic_1)) then 
            stream_in_V_data_V_0_data_out <= stream_in_V_data_V_0_payload_B;
        else 
            stream_in_V_data_V_0_data_out <= stream_in_V_data_V_0_payload_A;
        end if; 
    end process;

    stream_in_V_data_V_0_load_A <= (stream_in_V_data_V_0_state_cmp_full and not(stream_in_V_data_V_0_sel_wr));
    stream_in_V_data_V_0_load_B <= (stream_in_V_data_V_0_state_cmp_full and stream_in_V_data_V_0_sel_wr);
    stream_in_V_data_V_0_sel <= stream_in_V_data_V_0_sel_rd;
    stream_in_V_data_V_0_state_cmp_full <= '0' when (stream_in_V_data_V_0_state = ap_const_lv2_1) else '1';
    stream_in_V_data_V_0_vld_in <= sdata_in_TVALID;
    stream_in_V_data_V_0_vld_out <= stream_in_V_data_V_0_state(0);

    stream_in_V_dest_V_0_ack_out_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, exitcond_reg_125, ap_block_pp0_stage0_11001)
    begin
        if (((exitcond_reg_125 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            stream_in_V_dest_V_0_ack_out <= ap_const_logic_1;
        else 
            stream_in_V_dest_V_0_ack_out <= ap_const_logic_0;
        end if; 
    end process;

    stream_in_V_dest_V_0_vld_in <= sdata_in_TVALID;

    stream_out_V_V_blk_n_assign_proc : process(stream_out_V_V_full_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, exitcond_reg_125)
    begin
        if (((exitcond_reg_125 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            stream_out_V_V_blk_n <= stream_out_V_V_full_n;
        else 
            stream_out_V_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    stream_out_V_V_din <= stream_in_V_data_V_0_data_out;

    stream_out_V_V_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, exitcond_reg_125, ap_block_pp0_stage0_11001)
    begin
        if (((exitcond_reg_125 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            stream_out_V_V_write <= ap_const_logic_1;
        else 
            stream_out_V_V_write <= ap_const_logic_0;
        end if; 
    end process;

end behav;
