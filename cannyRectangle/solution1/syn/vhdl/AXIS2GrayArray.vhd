-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2019.1
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity AXIS2GrayArray is
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
    axis_in_TDATA : IN STD_LOGIC_VECTOR (23 downto 0);
    axis_in_TVALID : IN STD_LOGIC;
    axis_in_TREADY : OUT STD_LOGIC;
    fifo1_din : OUT STD_LOGIC_VECTOR (7 downto 0);
    fifo1_full_n : IN STD_LOGIC;
    fifo1_write : OUT STD_LOGIC );
end;


architecture behav of AXIS2GrayArray is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (3 downto 0) := "0010";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (3 downto 0) := "0100";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv11_0 : STD_LOGIC_VECTOR (10 downto 0) := "00000000000";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv11_438 : STD_LOGIC_VECTOR (10 downto 0) := "10000111000";
    constant ap_const_lv11_1 : STD_LOGIC_VECTOR (10 downto 0) := "00000000001";
    constant ap_const_lv11_780 : STD_LOGIC_VECTOR (10 downto 0) := "11110000000";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001111";
    constant ap_const_lv32_10 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010000";
    constant ap_const_lv32_17 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010111";
    constant ap_const_lv32_18 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011000";
    constant ap_const_lv8_FF : STD_LOGIC_VECTOR (7 downto 0) := "11111111";
    constant ap_const_lv23_24DD : STD_LOGIC_VECTOR (22 downto 0) := "00000000010010011011101";
    constant ap_const_lv25_9645 : STD_LOGIC_VECTOR (24 downto 0) := "0000000001001011001000101";
    constant ap_const_lv23_4C8B : STD_LOGIC_VECTOR (22 downto 0) := "00000000100110010001011";

    signal real_start : STD_LOGIC;
    signal start_once_reg : STD_LOGIC := '0';
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal internal_ap_ready : STD_LOGIC;
    signal axis_src_data_V_0_data_out : STD_LOGIC_VECTOR (23 downto 0);
    signal axis_src_data_V_0_vld_in : STD_LOGIC;
    signal axis_src_data_V_0_vld_out : STD_LOGIC;
    signal axis_src_data_V_0_ack_in : STD_LOGIC;
    signal axis_src_data_V_0_ack_out : STD_LOGIC;
    signal axis_src_data_V_0_payload_A : STD_LOGIC_VECTOR (23 downto 0);
    signal axis_src_data_V_0_payload_B : STD_LOGIC_VECTOR (23 downto 0);
    signal axis_src_data_V_0_sel_rd : STD_LOGIC := '0';
    signal axis_src_data_V_0_sel_wr : STD_LOGIC := '0';
    signal axis_src_data_V_0_sel : STD_LOGIC;
    signal axis_src_data_V_0_load_A : STD_LOGIC;
    signal axis_src_data_V_0_load_B : STD_LOGIC;
    signal axis_src_data_V_0_state : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal axis_src_data_V_0_state_cmp_full : STD_LOGIC;
    signal axis_in_TDATA_blk_n : STD_LOGIC;
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal icmp_ln87_fu_129_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal fifo1_blk_n : STD_LOGIC;
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal icmp_ln87_reg_235 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln87_reg_235_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal xi_0_reg_106 : STD_LOGIC_VECTOR (10 downto 0);
    signal icmp_ln86_fu_117_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal yi_fu_123_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal yi_reg_230 : STD_LOGIC_VECTOR (10 downto 0);
    signal ap_block_state3_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state5_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal xi_fu_135_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal mul_ln544_fu_202_p2 : STD_LOGIC_VECTOR (22 downto 0);
    signal mul_ln544_reg_244 : STD_LOGIC_VECTOR (22 downto 0);
    signal trunc_ln_reg_249 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_8_reg_254 : STD_LOGIC_VECTOR (7 downto 0);
    signal phitmp318_fu_194_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal phitmp318_reg_259 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_condition_pp0_exit_iter0_state3 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal yi_0_reg_95 : STD_LOGIC_VECTOR (10 downto 0);
    signal ap_block_state1 : BOOLEAN;
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal ret_V_fu_141_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_fu_218_p3 : STD_LOGIC_VECTOR (22 downto 0);
    signal grp_fu_208_p3 : STD_LOGIC_VECTOR (24 downto 0);
    signal tmp_10_fu_178_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_9_fu_185_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal mul_ln544_fu_202_p0 : STD_LOGIC_VECTOR (14 downto 0);
    signal mul_ln544_fu_202_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_fu_208_p0 : STD_LOGIC_VECTOR (16 downto 0);
    signal grp_fu_208_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_fu_208_p2 : STD_LOGIC_VECTOR (22 downto 0);
    signal grp_fu_218_p0 : STD_LOGIC_VECTOR (15 downto 0);
    signal grp_fu_218_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
    signal grp_fu_208_p10 : STD_LOGIC_VECTOR (24 downto 0);
    signal grp_fu_208_p20 : STD_LOGIC_VECTOR (24 downto 0);
    signal grp_fu_218_p10 : STD_LOGIC_VECTOR (22 downto 0);
    signal mul_ln544_fu_202_p10 : STD_LOGIC_VECTOR (22 downto 0);

    component canny_edge_rectanbkb IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (14 downto 0);
        din1 : IN STD_LOGIC_VECTOR (7 downto 0);
        dout : OUT STD_LOGIC_VECTOR (22 downto 0) );
    end component;


    component canny_edge_rectancud IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (16 downto 0);
        din1 : IN STD_LOGIC_VECTOR (7 downto 0);
        din2 : IN STD_LOGIC_VECTOR (22 downto 0);
        dout : OUT STD_LOGIC_VECTOR (24 downto 0) );
    end component;


    component canny_edge_rectandEe IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (15 downto 0);
        din1 : IN STD_LOGIC_VECTOR (7 downto 0);
        din2 : IN STD_LOGIC_VECTOR (22 downto 0);
        dout : OUT STD_LOGIC_VECTOR (22 downto 0) );
    end component;



begin
    canny_edge_rectanbkb_U15 : component canny_edge_rectanbkb
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 15,
        din1_WIDTH => 8,
        dout_WIDTH => 23)
    port map (
        din0 => mul_ln544_fu_202_p0,
        din1 => mul_ln544_fu_202_p1,
        dout => mul_ln544_fu_202_p2);

    canny_edge_rectancud_U16 : component canny_edge_rectancud
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 17,
        din1_WIDTH => 8,
        din2_WIDTH => 23,
        dout_WIDTH => 25)
    port map (
        din0 => grp_fu_208_p0,
        din1 => grp_fu_208_p1,
        din2 => grp_fu_208_p2,
        dout => grp_fu_208_p3);

    canny_edge_rectandEe_U17 : component canny_edge_rectandEe
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 16,
        din1_WIDTH => 8,
        din2_WIDTH => 23,
        dout_WIDTH => 23)
    port map (
        din0 => grp_fu_218_p0,
        din1 => grp_fu_218_p1,
        din2 => mul_ln544_reg_244,
        dout => grp_fu_218_p3);





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
                elsif (((icmp_ln86_fu_117_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
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
                if (((ap_const_logic_1 = ap_condition_pp0_exit_iter0_state3) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
                elsif (((icmp_ln86_fu_117_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
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
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then
                    if ((ap_const_logic_1 = ap_condition_pp0_exit_iter0_state3)) then 
                        ap_enable_reg_pp0_iter1 <= (ap_const_logic_1 xor ap_condition_pp0_exit_iter0_state3);
                    elsif ((ap_const_boolean_1 = ap_const_boolean_1)) then 
                        ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                    end if;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                elsif (((icmp_ln86_fu_117_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                    ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    axis_src_data_V_0_sel_rd_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                axis_src_data_V_0_sel_rd <= ap_const_logic_0;
            else
                if (((axis_src_data_V_0_ack_out = ap_const_logic_1) and (axis_src_data_V_0_vld_out = ap_const_logic_1))) then 
                                        axis_src_data_V_0_sel_rd <= not(axis_src_data_V_0_sel_rd);
                end if; 
            end if;
        end if;
    end process;


    axis_src_data_V_0_sel_wr_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                axis_src_data_V_0_sel_wr <= ap_const_logic_0;
            else
                if (((axis_src_data_V_0_ack_in = ap_const_logic_1) and (axis_src_data_V_0_vld_in = ap_const_logic_1))) then 
                                        axis_src_data_V_0_sel_wr <= not(axis_src_data_V_0_sel_wr);
                end if; 
            end if;
        end if;
    end process;


    axis_src_data_V_0_state_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                axis_src_data_V_0_state <= ap_const_lv2_0;
            else
                if ((((axis_src_data_V_0_state = ap_const_lv2_2) and (axis_src_data_V_0_vld_in = ap_const_logic_0)) or ((axis_src_data_V_0_state = ap_const_lv2_3) and (axis_src_data_V_0_vld_in = ap_const_logic_0) and (axis_src_data_V_0_ack_out = ap_const_logic_1)))) then 
                    axis_src_data_V_0_state <= ap_const_lv2_2;
                elsif ((((axis_src_data_V_0_state = ap_const_lv2_1) and (axis_src_data_V_0_ack_out = ap_const_logic_0)) or ((axis_src_data_V_0_state = ap_const_lv2_3) and (axis_src_data_V_0_ack_out = ap_const_logic_0) and (axis_src_data_V_0_vld_in = ap_const_logic_1)))) then 
                    axis_src_data_V_0_state <= ap_const_lv2_1;
                elsif (((not(((axis_src_data_V_0_vld_in = ap_const_logic_0) and (axis_src_data_V_0_ack_out = ap_const_logic_1))) and not(((axis_src_data_V_0_ack_out = ap_const_logic_0) and (axis_src_data_V_0_vld_in = ap_const_logic_1))) and (axis_src_data_V_0_state = ap_const_lv2_3)) or ((axis_src_data_V_0_state = ap_const_lv2_1) and (axis_src_data_V_0_ack_out = ap_const_logic_1)) or ((axis_src_data_V_0_state = ap_const_lv2_2) and (axis_src_data_V_0_vld_in = ap_const_logic_1)))) then 
                    axis_src_data_V_0_state <= ap_const_lv2_3;
                else 
                    axis_src_data_V_0_state <= ap_const_lv2_2;
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


    xi_0_reg_106_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln86_fu_117_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                xi_0_reg_106 <= ap_const_lv11_0;
            elsif (((icmp_ln87_fu_129_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
                xi_0_reg_106 <= xi_fu_135_p2;
            end if; 
        end if;
    end process;

    yi_0_reg_95_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
                yi_0_reg_95 <= yi_reg_230;
            elsif ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                yi_0_reg_95 <= ap_const_lv11_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((axis_src_data_V_0_load_A = ap_const_logic_1)) then
                axis_src_data_V_0_payload_A <= axis_in_TDATA;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((axis_src_data_V_0_load_B = ap_const_logic_1)) then
                axis_src_data_V_0_payload_B <= axis_in_TDATA;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                icmp_ln87_reg_235 <= icmp_ln87_fu_129_p2;
                icmp_ln87_reg_235_pp0_iter1_reg <= icmp_ln87_reg_235;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln87_fu_129_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                mul_ln544_reg_244 <= mul_ln544_fu_202_p2;
                tmp_8_reg_254 <= axis_src_data_V_0_data_out(23 downto 16);
                trunc_ln_reg_249 <= axis_src_data_V_0_data_out(15 downto 8);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln87_reg_235 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                phitmp318_reg_259 <= phitmp318_fu_194_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                yi_reg_230 <= yi_fu_123_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (real_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, ap_enable_reg_pp0_iter0, icmp_ln87_fu_129_p2, ap_enable_reg_pp0_iter2, icmp_ln86_fu_117_p2, ap_CS_fsm_state2, ap_block_pp0_stage0_subdone, ap_enable_reg_pp0_iter1)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((icmp_ln86_fu_117_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_pp0_stage0 => 
                if ((not(((icmp_ln87_fu_129_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) and not(((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif ((((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) or ((icmp_ln87_fu_129_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone)))) then
                    ap_NS_fsm <= ap_ST_fsm_state6;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state2;
            when others =>  
                ap_NS_fsm <= "XXXX";
        end case;
    end process;
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(2);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state6 <= ap_CS_fsm(3);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(axis_src_data_V_0_vld_out, fifo1_full_n, ap_enable_reg_pp0_iter0, icmp_ln87_fu_129_p2, ap_enable_reg_pp0_iter2, icmp_ln87_reg_235_pp0_iter1_reg)
    begin
                ap_block_pp0_stage0_01001 <= (((icmp_ln87_reg_235_pp0_iter1_reg = ap_const_lv1_0) and (fifo1_full_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1)) or ((icmp_ln87_fu_129_p2 = ap_const_lv1_0) and (axis_src_data_V_0_vld_out = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1)));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(axis_src_data_V_0_vld_out, fifo1_full_n, ap_enable_reg_pp0_iter0, icmp_ln87_fu_129_p2, ap_enable_reg_pp0_iter2, icmp_ln87_reg_235_pp0_iter1_reg)
    begin
                ap_block_pp0_stage0_11001 <= (((icmp_ln87_reg_235_pp0_iter1_reg = ap_const_lv1_0) and (fifo1_full_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1)) or ((icmp_ln87_fu_129_p2 = ap_const_lv1_0) and (axis_src_data_V_0_vld_out = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1)));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(axis_src_data_V_0_vld_out, fifo1_full_n, ap_enable_reg_pp0_iter0, icmp_ln87_fu_129_p2, ap_enable_reg_pp0_iter2, icmp_ln87_reg_235_pp0_iter1_reg)
    begin
                ap_block_pp0_stage0_subdone <= (((icmp_ln87_reg_235_pp0_iter1_reg = ap_const_lv1_0) and (fifo1_full_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1)) or ((icmp_ln87_fu_129_p2 = ap_const_lv1_0) and (axis_src_data_V_0_vld_out = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1)));
    end process;


    ap_block_state1_assign_proc : process(real_start, ap_done_reg)
    begin
                ap_block_state1 <= ((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;


    ap_block_state3_pp0_stage0_iter0_assign_proc : process(axis_src_data_V_0_vld_out, icmp_ln87_fu_129_p2)
    begin
                ap_block_state3_pp0_stage0_iter0 <= ((icmp_ln87_fu_129_p2 = ap_const_lv1_0) and (axis_src_data_V_0_vld_out = ap_const_logic_0));
    end process;

        ap_block_state4_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state5_pp0_stage0_iter2_assign_proc : process(fifo1_full_n, icmp_ln87_reg_235_pp0_iter1_reg)
    begin
                ap_block_state5_pp0_stage0_iter2 <= ((icmp_ln87_reg_235_pp0_iter1_reg = ap_const_lv1_0) and (fifo1_full_n = ap_const_logic_0));
    end process;


    ap_condition_pp0_exit_iter0_state3_assign_proc : process(icmp_ln87_fu_129_p2)
    begin
        if ((icmp_ln87_fu_129_p2 = ap_const_lv1_1)) then 
            ap_condition_pp0_exit_iter0_state3 <= ap_const_logic_1;
        else 
            ap_condition_pp0_exit_iter0_state3 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_done_reg, icmp_ln86_fu_117_p2, ap_CS_fsm_state2)
    begin
        if (((icmp_ln86_fu_117_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
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


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_ready <= internal_ap_ready;

    axis_in_TDATA_blk_n_assign_proc : process(axis_src_data_V_0_state, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0, icmp_ln87_fu_129_p2)
    begin
        if (((icmp_ln87_fu_129_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            axis_in_TDATA_blk_n <= axis_src_data_V_0_state(0);
        else 
            axis_in_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    axis_in_TREADY <= axis_src_data_V_0_state(1);
    axis_src_data_V_0_ack_in <= axis_src_data_V_0_state(1);

    axis_src_data_V_0_ack_out_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, icmp_ln87_fu_129_p2, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln87_fu_129_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            axis_src_data_V_0_ack_out <= ap_const_logic_1;
        else 
            axis_src_data_V_0_ack_out <= ap_const_logic_0;
        end if; 
    end process;


    axis_src_data_V_0_data_out_assign_proc : process(axis_src_data_V_0_payload_A, axis_src_data_V_0_payload_B, axis_src_data_V_0_sel)
    begin
        if ((axis_src_data_V_0_sel = ap_const_logic_1)) then 
            axis_src_data_V_0_data_out <= axis_src_data_V_0_payload_B;
        else 
            axis_src_data_V_0_data_out <= axis_src_data_V_0_payload_A;
        end if; 
    end process;

    axis_src_data_V_0_load_A <= (not(axis_src_data_V_0_sel_wr) and axis_src_data_V_0_state_cmp_full);
    axis_src_data_V_0_load_B <= (axis_src_data_V_0_state_cmp_full and axis_src_data_V_0_sel_wr);
    axis_src_data_V_0_sel <= axis_src_data_V_0_sel_rd;
    axis_src_data_V_0_state_cmp_full <= '0' when (axis_src_data_V_0_state = ap_const_lv2_1) else '1';
    axis_src_data_V_0_vld_in <= axis_in_TVALID;
    axis_src_data_V_0_vld_out <= axis_src_data_V_0_state(0);

    fifo1_blk_n_assign_proc : process(fifo1_full_n, ap_block_pp0_stage0, ap_enable_reg_pp0_iter2, icmp_ln87_reg_235_pp0_iter1_reg)
    begin
        if (((icmp_ln87_reg_235_pp0_iter1_reg = ap_const_lv1_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            fifo1_blk_n <= fifo1_full_n;
        else 
            fifo1_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    fifo1_din <= phitmp318_reg_259;

    fifo1_write_assign_proc : process(ap_enable_reg_pp0_iter2, icmp_ln87_reg_235_pp0_iter1_reg, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln87_reg_235_pp0_iter1_reg = ap_const_lv1_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            fifo1_write <= ap_const_logic_1;
        else 
            fifo1_write <= ap_const_logic_0;
        end if; 
    end process;

    grp_fu_208_p0 <= ap_const_lv25_9645(17 - 1 downto 0);
    grp_fu_208_p1 <= grp_fu_208_p10(8 - 1 downto 0);
    grp_fu_208_p10 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(trunc_ln_reg_249),25));
    grp_fu_208_p2 <= grp_fu_208_p20(23 - 1 downto 0);
    grp_fu_208_p20 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(grp_fu_218_p3),25));
    grp_fu_218_p0 <= ap_const_lv23_4C8B(16 - 1 downto 0);
    grp_fu_218_p1 <= grp_fu_218_p10(8 - 1 downto 0);
    grp_fu_218_p10 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_8_reg_254),23));
    icmp_ln86_fu_117_p2 <= "1" when (yi_0_reg_95 = ap_const_lv11_438) else "0";
    icmp_ln87_fu_129_p2 <= "1" when (xi_0_reg_106 = ap_const_lv11_780) else "0";

    internal_ap_ready_assign_proc : process(icmp_ln86_fu_117_p2, ap_CS_fsm_state2)
    begin
        if (((icmp_ln86_fu_117_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            internal_ap_ready <= ap_const_logic_1;
        else 
            internal_ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    mul_ln544_fu_202_p0 <= ap_const_lv23_24DD(15 - 1 downto 0);
    mul_ln544_fu_202_p1 <= mul_ln544_fu_202_p10(8 - 1 downto 0);
    mul_ln544_fu_202_p10 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ret_V_fu_141_p1),23));
    phitmp318_fu_194_p3 <= 
        ap_const_lv8_FF when (tmp_10_fu_178_p3(0) = '1') else 
        tmp_9_fu_185_p4;

    real_start_assign_proc : process(ap_start, start_full_n, start_once_reg)
    begin
        if (((start_once_reg = ap_const_logic_0) and (start_full_n = ap_const_logic_0))) then 
            real_start <= ap_const_logic_0;
        else 
            real_start <= ap_start;
        end if; 
    end process;

    ret_V_fu_141_p1 <= axis_src_data_V_0_data_out(8 - 1 downto 0);
    start_out <= real_start;

    start_write_assign_proc : process(real_start, start_once_reg)
    begin
        if (((start_once_reg = ap_const_logic_0) and (real_start = ap_const_logic_1))) then 
            start_write <= ap_const_logic_1;
        else 
            start_write <= ap_const_logic_0;
        end if; 
    end process;

    tmp_10_fu_178_p3 <= grp_fu_208_p3(24 downto 24);
    tmp_9_fu_185_p4 <= grp_fu_208_p3(23 downto 16);
    xi_fu_135_p2 <= std_logic_vector(unsigned(xi_0_reg_106) + unsigned(ap_const_lv11_1));
    yi_fu_123_p2 <= std_logic_vector(unsigned(yi_0_reg_95) + unsigned(ap_const_lv11_1));
end behav;
