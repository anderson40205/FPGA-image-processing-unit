-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2019.1
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity HystThresholdComp is
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
    fifo6_dout : IN STD_LOGIC_VECTOR (7 downto 0);
    fifo6_empty_n : IN STD_LOGIC;
    fifo6_read : OUT STD_LOGIC;
    fifo7_din : OUT STD_LOGIC_VECTOR (7 downto 0);
    fifo7_full_n : IN STD_LOGIC;
    fifo7_write : OUT STD_LOGIC );
end;


architecture behav of HystThresholdComp is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (3 downto 0) := "0010";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (3 downto 0) := "0100";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv11_0 : STD_LOGIC_VECTOR (10 downto 0) := "00000000000";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv11_438 : STD_LOGIC_VECTOR (10 downto 0) := "10000111000";
    constant ap_const_lv11_1 : STD_LOGIC_VECTOR (10 downto 0) := "00000000001";
    constant ap_const_lv11_780 : STD_LOGIC_VECTOR (10 downto 0) := "11110000000";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001111";
    constant ap_const_lv32_10 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010000";
    constant ap_const_lv32_17 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010111";
    constant ap_const_lv8_FF : STD_LOGIC_VECTOR (7 downto 0) := "11111111";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";

    signal real_start : STD_LOGIC;
    signal start_once_reg : STD_LOGIC := '0';
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal internal_ap_ready : STD_LOGIC;
    signal fifo6_blk_n : STD_LOGIC;
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal icmp_ln432_reg_458 : STD_LOGIC_VECTOR (0 downto 0);
    signal fifo7_blk_n : STD_LOGIC;
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal icmp_ln432_reg_458_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal xi_0_i_reg_156 : STD_LOGIC_VECTOR (10 downto 0);
    signal icmp_ln431_fu_167_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal yi_fu_173_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal yi_reg_453 : STD_LOGIC_VECTOR (10 downto 0);
    signal icmp_ln432_fu_179_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state3_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state5_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal xi_fu_185_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal line_buf_addr_reg_467 : STD_LOGIC_VECTOR (10 downto 0);
    signal icmp_ln460_fu_259_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln460_reg_473 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln461_6_fu_325_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln461_6_reg_478 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln461_7_fu_331_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln461_7_reg_483 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln461_8_fu_337_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln461_8_reg_488 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln460_4_fu_349_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln460_4_reg_493 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_condition_pp0_exit_iter1_state4 : STD_LOGIC;
    signal line_buf_address0 : STD_LOGIC_VECTOR (10 downto 0);
    signal line_buf_ce0 : STD_LOGIC;
    signal line_buf_q0 : STD_LOGIC_VECTOR (23 downto 0);
    signal line_buf_ce1 : STD_LOGIC;
    signal line_buf_we1 : STD_LOGIC;
    signal line_buf_d1 : STD_LOGIC_VECTOR (23 downto 0);
    signal yi_0_i_reg_145 : STD_LOGIC_VECTOR (10 downto 0);
    signal ap_block_state1 : BOOLEAN;
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal zext_ln441_fu_191_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal window_buf_0_1_fu_88 : STD_LOGIC_VECTOR (7 downto 0);
    signal window_buf_0_1_3_fu_92 : STD_LOGIC_VECTOR (7 downto 0);
    signal window_buf_0_2_fu_214_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal window_buf_1_1_fu_96 : STD_LOGIC_VECTOR (7 downto 0);
    signal window_buf_1_1_3_fu_100 : STD_LOGIC_VECTOR (7 downto 0);
    signal window_buf_1_2_fu_224_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal window_buf_2_1_fu_104 : STD_LOGIC_VECTOR (7 downto 0);
    signal window_buf_2_1_3_fu_108 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal tmp_fu_234_p4 : STD_LOGIC_VECTOR (15 downto 0);
    signal icmp_ln461_fu_253_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln461_1_fu_265_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln461_2_fu_271_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln461_3_fu_277_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln460_1_fu_289_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln460_fu_283_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln460_2_fu_295_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln461_5_fu_313_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln461_4_fu_307_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln460_1_fu_319_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln460_3_fu_343_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln460_fu_301_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln460_5_fu_385_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln460_6_fu_389_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln460_2_fu_394_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln460_7_fu_399_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;

    component Sobel_1920u_1080ufYi IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (10 downto 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR (23 downto 0);
        address1 : IN STD_LOGIC_VECTOR (10 downto 0);
        ce1 : IN STD_LOGIC;
        we1 : IN STD_LOGIC;
        d1 : IN STD_LOGIC_VECTOR (23 downto 0) );
    end component;



begin
    line_buf_U : component Sobel_1920u_1080ufYi
    generic map (
        DataWidth => 24,
        AddressRange => 1920,
        AddressWidth => 11)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => line_buf_address0,
        ce0 => line_buf_ce0,
        q0 => line_buf_q0,
        address1 => line_buf_addr_reg_467,
        ce1 => line_buf_ce1,
        we1 => line_buf_we1,
        d1 => line_buf_d1);





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
                elsif (((icmp_ln431_fu_167_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
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
                if (((icmp_ln432_fu_179_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
                elsif (((icmp_ln431_fu_167_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
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
                    ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                elsif ((((icmp_ln431_fu_167_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2)) or ((ap_const_logic_1 = ap_condition_pp0_exit_iter1_state4) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone)))) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
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
                if (((ap_const_logic_1 = ap_condition_pp0_exit_iter1_state4) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter0;
                elsif ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                elsif (((icmp_ln431_fu_167_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                    ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
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


    xi_0_i_reg_156_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln431_fu_167_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                xi_0_i_reg_156 <= ap_const_lv11_0;
            elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln432_fu_179_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                xi_0_i_reg_156 <= xi_fu_185_p2;
            end if; 
        end if;
    end process;

    yi_0_i_reg_145_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
                yi_0_i_reg_145 <= yi_reg_453;
            elsif ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                yi_0_i_reg_145 <= ap_const_lv11_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                icmp_ln432_reg_458 <= icmp_ln432_fu_179_p2;
                icmp_ln432_reg_458_pp0_iter1_reg <= icmp_ln432_reg_458;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln432_reg_458 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                icmp_ln460_reg_473 <= icmp_ln460_fu_259_p2;
                icmp_ln461_6_reg_478 <= icmp_ln461_6_fu_325_p2;
                icmp_ln461_7_reg_483 <= icmp_ln461_7_fu_331_p2;
                icmp_ln461_8_reg_488 <= icmp_ln461_8_fu_337_p2;
                or_ln460_4_reg_493 <= or_ln460_4_fu_349_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln432_fu_179_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                line_buf_addr_reg_467 <= zext_ln441_fu_191_p1(11 - 1 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln432_reg_458 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                window_buf_0_1_3_fu_92 <= line_buf_q0(15 downto 8);
                window_buf_0_1_fu_88 <= window_buf_0_1_3_fu_92;
                window_buf_1_1_3_fu_100 <= line_buf_q0(23 downto 16);
                window_buf_1_1_fu_96 <= window_buf_1_1_3_fu_100;
                window_buf_2_1_3_fu_108 <= fifo6_dout;
                window_buf_2_1_fu_104 <= window_buf_2_1_3_fu_108;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                yi_reg_453 <= yi_fu_173_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (real_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln431_fu_167_p2, ap_CS_fsm_state2, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((icmp_ln431_fu_167_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_pp0_stage0 => 
                if (not(((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0)))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then
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
    and_ln460_1_fu_319_p2 <= (icmp_ln461_5_fu_313_p2 and icmp_ln460_fu_259_p2);
    and_ln460_2_fu_394_p2 <= (or_ln460_6_fu_389_p2 and icmp_ln460_reg_473);
    and_ln460_fu_301_p2 <= (or_ln460_2_fu_295_p2 and icmp_ln460_fu_259_p2);
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(2);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state6 <= ap_CS_fsm(3);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(fifo6_empty_n, fifo7_full_n, ap_enable_reg_pp0_iter1, icmp_ln432_reg_458, ap_enable_reg_pp0_iter2, icmp_ln432_reg_458_pp0_iter1_reg)
    begin
                ap_block_pp0_stage0_01001 <= (((icmp_ln432_reg_458_pp0_iter1_reg = ap_const_lv1_0) and (fifo7_full_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1)) or ((icmp_ln432_reg_458 = ap_const_lv1_0) and (fifo6_empty_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(fifo6_empty_n, fifo7_full_n, ap_enable_reg_pp0_iter1, icmp_ln432_reg_458, ap_enable_reg_pp0_iter2, icmp_ln432_reg_458_pp0_iter1_reg)
    begin
                ap_block_pp0_stage0_11001 <= (((icmp_ln432_reg_458_pp0_iter1_reg = ap_const_lv1_0) and (fifo7_full_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1)) or ((icmp_ln432_reg_458 = ap_const_lv1_0) and (fifo6_empty_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(fifo6_empty_n, fifo7_full_n, ap_enable_reg_pp0_iter1, icmp_ln432_reg_458, ap_enable_reg_pp0_iter2, icmp_ln432_reg_458_pp0_iter1_reg)
    begin
                ap_block_pp0_stage0_subdone <= (((icmp_ln432_reg_458_pp0_iter1_reg = ap_const_lv1_0) and (fifo7_full_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1)) or ((icmp_ln432_reg_458 = ap_const_lv1_0) and (fifo6_empty_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)));
    end process;


    ap_block_state1_assign_proc : process(real_start, ap_done_reg)
    begin
                ap_block_state1 <= ((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;

        ap_block_state3_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state4_pp0_stage0_iter1_assign_proc : process(fifo6_empty_n, icmp_ln432_reg_458)
    begin
                ap_block_state4_pp0_stage0_iter1 <= ((icmp_ln432_reg_458 = ap_const_lv1_0) and (fifo6_empty_n = ap_const_logic_0));
    end process;


    ap_block_state5_pp0_stage0_iter2_assign_proc : process(fifo7_full_n, icmp_ln432_reg_458_pp0_iter1_reg)
    begin
                ap_block_state5_pp0_stage0_iter2 <= ((icmp_ln432_reg_458_pp0_iter1_reg = ap_const_lv1_0) and (fifo7_full_n = ap_const_logic_0));
    end process;


    ap_condition_pp0_exit_iter1_state4_assign_proc : process(ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter0)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_condition_pp0_exit_iter1_state4 <= ap_const_logic_1;
        else 
            ap_condition_pp0_exit_iter1_state4 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_done_reg, icmp_ln431_fu_167_p2, ap_CS_fsm_state2)
    begin
        if (((icmp_ln431_fu_167_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
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


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter0)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_ready <= internal_ap_ready;

    fifo6_blk_n_assign_proc : process(fifo6_empty_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, icmp_ln432_reg_458)
    begin
        if (((icmp_ln432_reg_458 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            fifo6_blk_n <= fifo6_empty_n;
        else 
            fifo6_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    fifo6_read_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln432_reg_458, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln432_reg_458 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            fifo6_read <= ap_const_logic_1;
        else 
            fifo6_read <= ap_const_logic_0;
        end if; 
    end process;


    fifo7_blk_n_assign_proc : process(fifo7_full_n, ap_block_pp0_stage0, ap_enable_reg_pp0_iter2, icmp_ln432_reg_458_pp0_iter1_reg)
    begin
        if (((icmp_ln432_reg_458_pp0_iter1_reg = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            fifo7_blk_n <= fifo7_full_n;
        else 
            fifo7_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    fifo7_din <= 
        ap_const_lv8_FF when (or_ln460_7_fu_399_p2(0) = '1') else 
        ap_const_lv8_0;

    fifo7_write_assign_proc : process(ap_enable_reg_pp0_iter2, icmp_ln432_reg_458_pp0_iter1_reg, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln432_reg_458_pp0_iter1_reg = ap_const_lv1_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            fifo7_write <= ap_const_logic_1;
        else 
            fifo7_write <= ap_const_logic_0;
        end if; 
    end process;

    icmp_ln431_fu_167_p2 <= "1" when (yi_0_i_reg_145 = ap_const_lv11_438) else "0";
    icmp_ln432_fu_179_p2 <= "1" when (xi_0_i_reg_156 = ap_const_lv11_780) else "0";
    icmp_ln460_fu_259_p2 <= "0" when (window_buf_1_1_3_fu_100 = ap_const_lv8_0) else "1";
    icmp_ln461_1_fu_265_p2 <= "1" when (window_buf_0_1_3_fu_92 = ap_const_lv8_FF) else "0";
    icmp_ln461_2_fu_271_p2 <= "1" when (window_buf_0_2_fu_214_p4 = ap_const_lv8_FF) else "0";
    icmp_ln461_3_fu_277_p2 <= "1" when (window_buf_1_1_fu_96 = ap_const_lv8_FF) else "0";
    icmp_ln461_4_fu_307_p2 <= "1" when (window_buf_1_1_3_fu_100 = ap_const_lv8_FF) else "0";
    icmp_ln461_5_fu_313_p2 <= "1" when (window_buf_1_2_fu_224_p4 = ap_const_lv8_FF) else "0";
    icmp_ln461_6_fu_325_p2 <= "1" when (window_buf_2_1_fu_104 = ap_const_lv8_FF) else "0";
    icmp_ln461_7_fu_331_p2 <= "1" when (window_buf_2_1_3_fu_108 = ap_const_lv8_FF) else "0";
    icmp_ln461_8_fu_337_p2 <= "1" when (fifo6_dout = ap_const_lv8_FF) else "0";
    icmp_ln461_fu_253_p2 <= "1" when (window_buf_0_1_fu_88 = ap_const_lv8_FF) else "0";

    internal_ap_ready_assign_proc : process(icmp_ln431_fu_167_p2, ap_CS_fsm_state2)
    begin
        if (((icmp_ln431_fu_167_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            internal_ap_ready <= ap_const_logic_1;
        else 
            internal_ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    line_buf_address0 <= zext_ln441_fu_191_p1(11 - 1 downto 0);

    line_buf_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
            line_buf_ce0 <= ap_const_logic_1;
        else 
            line_buf_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    line_buf_ce1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            line_buf_ce1 <= ap_const_logic_1;
        else 
            line_buf_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    line_buf_d1 <= (fifo6_dout & tmp_fu_234_p4);

    line_buf_we1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln432_reg_458, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln432_reg_458 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            line_buf_we1 <= ap_const_logic_1;
        else 
            line_buf_we1 <= ap_const_logic_0;
        end if; 
    end process;

    or_ln460_1_fu_289_p2 <= (icmp_ln461_3_fu_277_p2 or icmp_ln461_2_fu_271_p2);
    or_ln460_2_fu_295_p2 <= (or_ln460_fu_283_p2 or or_ln460_1_fu_289_p2);
    or_ln460_3_fu_343_p2 <= (icmp_ln461_4_fu_307_p2 or and_ln460_1_fu_319_p2);
    or_ln460_4_fu_349_p2 <= (or_ln460_3_fu_343_p2 or and_ln460_fu_301_p2);
    or_ln460_5_fu_385_p2 <= (icmp_ln461_8_reg_488 or icmp_ln461_7_reg_483);
    or_ln460_6_fu_389_p2 <= (or_ln460_5_fu_385_p2 or icmp_ln461_6_reg_478);
    or_ln460_7_fu_399_p2 <= (or_ln460_4_reg_493 or and_ln460_2_fu_394_p2);
    or_ln460_fu_283_p2 <= (icmp_ln461_fu_253_p2 or icmp_ln461_1_fu_265_p2);

    real_start_assign_proc : process(ap_start, start_full_n, start_once_reg)
    begin
        if (((start_once_reg = ap_const_logic_0) and (start_full_n = ap_const_logic_0))) then 
            real_start <= ap_const_logic_0;
        else 
            real_start <= ap_start;
        end if; 
    end process;

    start_out <= real_start;

    start_write_assign_proc : process(real_start, start_once_reg)
    begin
        if (((start_once_reg = ap_const_logic_0) and (real_start = ap_const_logic_1))) then 
            start_write <= ap_const_logic_1;
        else 
            start_write <= ap_const_logic_0;
        end if; 
    end process;

    tmp_fu_234_p4 <= line_buf_q0(23 downto 8);
    window_buf_0_2_fu_214_p4 <= line_buf_q0(15 downto 8);
    window_buf_1_2_fu_224_p4 <= line_buf_q0(23 downto 16);
    xi_fu_185_p2 <= std_logic_vector(unsigned(xi_0_i_reg_156) + unsigned(ap_const_lv11_1));
    yi_fu_173_p2 <= std_logic_vector(unsigned(yi_0_i_reg_145) + unsigned(ap_const_lv11_1));
    zext_ln441_fu_191_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(xi_0_i_reg_156),64));
end behav;
