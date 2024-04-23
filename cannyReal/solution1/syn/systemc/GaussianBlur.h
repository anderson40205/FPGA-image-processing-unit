// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _GaussianBlur_HH_
#define _GaussianBlur_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "GaussianBlur_lineeOg.h"

namespace ap_rtl {

struct GaussianBlur : public sc_module {
    // Port declarations 16
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_in< sc_logic > start_full_n;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_logic > start_out;
    sc_out< sc_logic > start_write;
    sc_in< sc_lv<8> > fifo1_dout;
    sc_in< sc_logic > fifo1_empty_n;
    sc_out< sc_logic > fifo1_read;
    sc_out< sc_lv<8> > fifo2_din;
    sc_in< sc_logic > fifo2_full_n;
    sc_out< sc_logic > fifo2_write;


    // Module declarations
    GaussianBlur(sc_module_name name);
    SC_HAS_PROCESS(GaussianBlur);

    ~GaussianBlur();

    sc_trace_file* mVcdFile;

    GaussianBlur_lineeOg* line_buf_U;
    sc_signal< sc_logic > real_start;
    sc_signal< sc_logic > start_once_reg;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<4> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > internal_ap_ready;
    sc_signal< sc_logic > fifo1_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<1> > icmp_ln151_reg_1292;
    sc_signal< sc_logic > fifo2_blk_n;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter3;
    sc_signal< sc_lv<1> > icmp_ln151_reg_1292_pp0_iter2_reg;
    sc_signal< sc_lv<10> > xi_0_i_reg_234;
    sc_signal< sc_lv<1> > icmp_ln150_fu_245_p2;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<10> > yi_fu_251_p2;
    sc_signal< sc_lv<10> > yi_reg_1287;
    sc_signal< sc_lv<1> > icmp_ln151_fu_257_p2;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state5_pp0_stage0_iter2;
    sc_signal< bool > ap_block_state6_pp0_stage0_iter3;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<1> > icmp_ln151_reg_1292_pp0_iter1_reg;
    sc_signal< sc_lv<10> > xi_fu_263_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<9> > line_buf_addr_reg_1301;
    sc_signal< sc_lv<8> > window_buf_1_1_6_reg_1307;
    sc_signal< sc_lv<8> > window_buf_1_2_1_reg_1312;
    sc_signal< sc_lv<8> > window_buf_2_1_6_reg_1318;
    sc_signal< sc_lv<8> > window_buf_2_2_1_reg_1325;
    sc_signal< sc_lv<8> > window_buf_2_3_1_reg_1331;
    sc_signal< sc_lv<8> > window_buf_3_2_1_reg_1337;
    sc_signal< sc_lv<14> > add_ln182_4_fu_504_p2;
    sc_signal< sc_lv<14> > add_ln182_4_reg_1343;
    sc_signal< sc_lv<13> > add_ln182_11_fu_682_p2;
    sc_signal< sc_lv<13> > add_ln182_11_reg_1348;
    sc_signal< sc_lv<14> > add_ln182_18_fu_718_p2;
    sc_signal< sc_lv<14> > add_ln182_18_reg_1353;
    sc_signal< sc_lv<12> > add_ln182_22_fu_754_p2;
    sc_signal< sc_lv<12> > add_ln182_22_reg_1358;
    sc_signal< sc_lv<16> > add_ln182_9_fu_1092_p2;
    sc_signal< sc_lv<16> > add_ln182_9_reg_1363;
    sc_signal< sc_lv<16> > add_ln182_13_fu_1117_p2;
    sc_signal< sc_lv<16> > add_ln182_13_reg_1368;
    sc_signal< sc_lv<15> > add_ln182_23_fu_1129_p2;
    sc_signal< sc_lv<15> > add_ln182_23_reg_1373;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter1_state4;
    sc_signal< sc_lv<9> > line_buf_address0;
    sc_signal< sc_logic > line_buf_ce0;
    sc_signal< sc_lv<40> > line_buf_q0;
    sc_signal< sc_logic > line_buf_ce1;
    sc_signal< sc_logic > line_buf_we1;
    sc_signal< sc_lv<40> > line_buf_d1;
    sc_signal< sc_lv<10> > yi_0_i_reg_223;
    sc_signal< bool > ap_block_state1;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<64> > zext_ln160_fu_269_p1;
    sc_signal< sc_lv<8> > window_buf_0_1_fu_110;
    sc_signal< sc_lv<8> > window_buf_0_1_5_fu_114;
    sc_signal< sc_lv<8> > window_buf_0_2_fu_118;
    sc_signal< sc_lv<8> > window_buf_0_3_fu_122;
    sc_signal< sc_lv<8> > window_buf_0_4_fu_331_p4;
    sc_signal< sc_lv<8> > window_buf_1_1_fu_126;
    sc_signal< sc_lv<8> > window_buf_1_1_5_fu_130;
    sc_signal< sc_lv<8> > window_buf_1_2_fu_134;
    sc_signal< sc_lv<8> > window_buf_1_3_fu_138;
    sc_signal< sc_lv<8> > window_buf_1_4_fu_341_p4;
    sc_signal< sc_lv<8> > window_buf_2_1_fu_142;
    sc_signal< sc_lv<8> > window_buf_2_1_5_fu_146;
    sc_signal< sc_lv<8> > window_buf_2_2_fu_150;
    sc_signal< sc_lv<8> > window_buf_2_3_fu_154;
    sc_signal< sc_lv<8> > window_buf_2_4_fu_351_p4;
    sc_signal< sc_lv<8> > window_buf_3_1_fu_158;
    sc_signal< sc_lv<8> > window_buf_3_1_1_fu_162;
    sc_signal< sc_lv<8> > window_buf_3_2_fu_166;
    sc_signal< sc_lv<8> > window_buf_3_3_fu_170;
    sc_signal< sc_lv<8> > window_buf_3_4_fu_361_p4;
    sc_signal< sc_lv<8> > window_buf_4_1_fu_174;
    sc_signal< sc_lv<8> > window_buf_4_1_1_fu_178;
    sc_signal< sc_lv<8> > window_buf_4_2_fu_182;
    sc_signal< sc_lv<8> > window_buf_4_3_fu_186;
    sc_signal< bool > ap_block_pp0_stage0_01001;
    sc_signal< sc_lv<32> > tmp_fu_371_p4;
    sc_signal< sc_lv<10> > shl_ln_fu_394_p3;
    sc_signal< sc_lv<11> > zext_ln182_fu_390_p1;
    sc_signal< sc_lv<11> > zext_ln182_1_fu_402_p1;
    sc_signal< sc_lv<11> > add_ln182_fu_406_p2;
    sc_signal< sc_lv<11> > shl_ln182_1_fu_416_p3;
    sc_signal< sc_lv<9> > shl_ln182_2_fu_428_p3;
    sc_signal< sc_lv<12> > zext_ln182_3_fu_424_p1;
    sc_signal< sc_lv<12> > zext_ln182_4_fu_436_p1;
    sc_signal< sc_lv<12> > sub_ln182_fu_440_p2;
    sc_signal< sc_lv<13> > zext_ln182_2_fu_412_p1;
    sc_signal< sc_lv<13> > sext_ln182_fu_446_p1;
    sc_signal< sc_lv<13> > add_ln182_1_fu_450_p2;
    sc_signal< sc_lv<10> > shl_ln182_3_fu_460_p3;
    sc_signal< sc_lv<10> > shl_ln182_4_fu_476_p3;
    sc_signal< sc_lv<14> > zext_ln182_5_fu_468_p1;
    sc_signal< sc_lv<14> > sext_ln182_1_fu_456_p1;
    sc_signal< sc_lv<11> > zext_ln182_6_fu_472_p1;
    sc_signal< sc_lv<11> > zext_ln182_7_fu_484_p1;
    sc_signal< sc_lv<11> > add_ln182_3_fu_494_p2;
    sc_signal< sc_lv<14> > add_ln182_2_fu_488_p2;
    sc_signal< sc_lv<14> > zext_ln182_8_fu_500_p1;
    sc_signal< sc_lv<12> > shl_ln182_8_fu_510_p3;
    sc_signal< sc_lv<10> > shl_ln182_9_fu_522_p3;
    sc_signal< sc_lv<11> > shl_ln182_17_fu_534_p3;
    sc_signal< sc_lv<9> > shl_ln182_18_fu_546_p3;
    sc_signal< sc_lv<12> > zext_ln182_23_fu_542_p1;
    sc_signal< sc_lv<12> > zext_ln182_24_fu_554_p1;
    sc_signal< sc_lv<12> > sub_ln182_5_fu_558_p2;
    sc_signal< sc_lv<10> > shl_ln182_19_fu_568_p3;
    sc_signal< sc_lv<12> > shl_ln182_20_fu_580_p3;
    sc_signal< sc_lv<12> > shl_ln182_23_fu_592_p3;
    sc_signal< sc_lv<10> > shl_ln182_24_fu_604_p3;
    sc_signal< sc_lv<10> > shl_ln182_25_fu_620_p3;
    sc_signal< sc_lv<11> > shl_ln182_26_fu_632_p3;
    sc_signal< sc_lv<9> > shl_ln182_27_fu_644_p3;
    sc_signal< sc_lv<12> > zext_ln182_33_fu_640_p1;
    sc_signal< sc_lv<12> > zext_ln182_34_fu_652_p1;
    sc_signal< sc_lv<12> > sub_ln182_7_fu_656_p2;
    sc_signal< sc_lv<10> > shl_ln182_28_fu_666_p3;
    sc_signal< sc_lv<13> > sext_ln182_10_fu_662_p1;
    sc_signal< sc_lv<13> > sext_ln182_8_fu_564_p1;
    sc_signal< sc_lv<13> > zext_ln182_26_fu_588_p1;
    sc_signal< sc_lv<13> > zext_ln182_12_fu_518_p1;
    sc_signal< sc_lv<13> > add_ln182_15_fu_688_p2;
    sc_signal< sc_lv<11> > zext_ln182_25_fu_576_p1;
    sc_signal< sc_lv<11> > zext_ln182_13_fu_530_p1;
    sc_signal< sc_lv<11> > add_ln182_16_fu_698_p2;
    sc_signal< sc_lv<13> > zext_ln182_29_fu_600_p1;
    sc_signal< sc_lv<13> > zext_ln182_38_fu_704_p1;
    sc_signal< sc_lv<13> > add_ln182_17_fu_708_p2;
    sc_signal< sc_lv<14> > zext_ln182_37_fu_694_p1;
    sc_signal< sc_lv<14> > zext_ln182_39_fu_714_p1;
    sc_signal< sc_lv<11> > zext_ln182_32_fu_628_p1;
    sc_signal< sc_lv<11> > zext_ln182_30_fu_612_p1;
    sc_signal< sc_lv<11> > add_ln182_19_fu_724_p2;
    sc_signal< sc_lv<9> > zext_ln182_36_fu_678_p1;
    sc_signal< sc_lv<9> > zext_ln182_31_fu_616_p1;
    sc_signal< sc_lv<9> > add_ln182_20_fu_734_p2;
    sc_signal< sc_lv<11> > zext_ln182_35_fu_674_p1;
    sc_signal< sc_lv<11> > zext_ln182_42_fu_740_p1;
    sc_signal< sc_lv<11> > add_ln182_21_fu_744_p2;
    sc_signal< sc_lv<12> > zext_ln182_41_fu_730_p1;
    sc_signal< sc_lv<12> > zext_ln182_43_fu_750_p1;
    sc_signal< sc_lv<12> > shl_ln182_5_fu_861_p3;
    sc_signal< sc_lv<15> > zext_ln182_9_fu_868_p1;
    sc_signal< sc_lv<15> > sext_ln182_2_fu_858_p1;
    sc_signal< sc_lv<15> > add_ln182_5_fu_872_p2;
    sc_signal< sc_lv<13> > shl_ln182_6_fu_882_p3;
    sc_signal< sc_lv<11> > shl_ln182_7_fu_893_p3;
    sc_signal< sc_lv<14> > zext_ln182_10_fu_889_p1;
    sc_signal< sc_lv<14> > zext_ln182_11_fu_900_p1;
    sc_signal< sc_lv<14> > sub_ln182_1_fu_904_p2;
    sc_signal< sc_lv<11> > shl_ln182_s_fu_914_p3;
    sc_signal< sc_lv<9> > shl_ln182_10_fu_926_p3;
    sc_signal< sc_lv<12> > zext_ln182_14_fu_922_p1;
    sc_signal< sc_lv<12> > zext_ln182_15_fu_934_p1;
    sc_signal< sc_lv<12> > sub_ln182_2_fu_938_p2;
    sc_signal< sc_lv<13> > shl_ln182_11_fu_948_p3;
    sc_signal< sc_lv<11> > shl_ln182_12_fu_959_p3;
    sc_signal< sc_lv<14> > zext_ln182_16_fu_955_p1;
    sc_signal< sc_lv<14> > zext_ln182_17_fu_966_p1;
    sc_signal< sc_lv<14> > sub_ln182_3_fu_970_p2;
    sc_signal< sc_lv<13> > shl_ln182_13_fu_980_p3;
    sc_signal< sc_lv<10> > shl_ln182_14_fu_991_p3;
    sc_signal< sc_lv<14> > zext_ln182_19_fu_998_p1;
    sc_signal< sc_lv<14> > zext_ln182_18_fu_987_p1;
    sc_signal< sc_lv<14> > add_ln182_6_fu_1002_p2;
    sc_signal< sc_lv<13> > shl_ln182_15_fu_1012_p3;
    sc_signal< sc_lv<11> > shl_ln182_16_fu_1023_p3;
    sc_signal< sc_lv<14> > zext_ln182_21_fu_1019_p1;
    sc_signal< sc_lv<14> > zext_ln182_22_fu_1030_p1;
    sc_signal< sc_lv<14> > sub_ln182_4_fu_1034_p2;
    sc_signal< sc_lv<13> > shl_ln182_21_fu_1044_p3;
    sc_signal< sc_lv<11> > shl_ln182_22_fu_1055_p3;
    sc_signal< sc_lv<14> > zext_ln182_27_fu_1051_p1;
    sc_signal< sc_lv<14> > zext_ln182_28_fu_1062_p1;
    sc_signal< sc_lv<14> > sub_ln182_6_fu_1066_p2;
    sc_signal< sc_lv<16> > sext_ln182_4_fu_910_p1;
    sc_signal< sc_lv<16> > sext_ln182_3_fu_878_p1;
    sc_signal< sc_lv<15> > sext_ln182_7_fu_1040_p1;
    sc_signal< sc_lv<15> > sext_ln182_6_fu_976_p1;
    sc_signal< sc_lv<15> > add_ln182_8_fu_1082_p2;
    sc_signal< sc_lv<16> > add_ln182_7_fu_1076_p2;
    sc_signal< sc_lv<16> > sext_ln182_11_fu_1088_p1;
    sc_signal< sc_lv<16> > zext_ln182_20_fu_1008_p1;
    sc_signal< sc_lv<16> > sext_ln182_9_fu_1072_p1;
    sc_signal< sc_lv<14> > sext_ln182_5_fu_944_p1;
    sc_signal< sc_lv<14> > sext_ln182_12_fu_1104_p1;
    sc_signal< sc_lv<14> > add_ln182_12_fu_1107_p2;
    sc_signal< sc_lv<16> > add_ln182_10_fu_1098_p2;
    sc_signal< sc_lv<16> > sext_ln182_13_fu_1113_p1;
    sc_signal< sc_lv<15> > zext_ln182_40_fu_1123_p1;
    sc_signal< sc_lv<15> > zext_ln182_44_fu_1126_p1;
    sc_signal< sc_lv<16> > add_ln182_14_fu_1139_p2;
    sc_signal< sc_lv<16> > zext_ln182_45_fu_1143_p1;
    sc_signal< sc_lv<16> > add_ln182_24_fu_1146_p2;
    sc_signal< sc_lv<4> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<4> ap_ST_fsm_state1;
    static const sc_lv<4> ap_ST_fsm_state2;
    static const sc_lv<4> ap_ST_fsm_pp0_stage0;
    static const sc_lv<4> ap_ST_fsm_state7;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<10> ap_const_lv10_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<10> ap_const_lv10_200;
    static const sc_lv<10> ap_const_lv10_1;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<32> ap_const_lv32_18;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<32> ap_const_lv32_20;
    static const sc_lv<32> ap_const_lv32_27;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<5> ap_const_lv5_0;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_add_ln182_10_fu_1098_p2();
    void thread_add_ln182_11_fu_682_p2();
    void thread_add_ln182_12_fu_1107_p2();
    void thread_add_ln182_13_fu_1117_p2();
    void thread_add_ln182_14_fu_1139_p2();
    void thread_add_ln182_15_fu_688_p2();
    void thread_add_ln182_16_fu_698_p2();
    void thread_add_ln182_17_fu_708_p2();
    void thread_add_ln182_18_fu_718_p2();
    void thread_add_ln182_19_fu_724_p2();
    void thread_add_ln182_1_fu_450_p2();
    void thread_add_ln182_20_fu_734_p2();
    void thread_add_ln182_21_fu_744_p2();
    void thread_add_ln182_22_fu_754_p2();
    void thread_add_ln182_23_fu_1129_p2();
    void thread_add_ln182_24_fu_1146_p2();
    void thread_add_ln182_2_fu_488_p2();
    void thread_add_ln182_3_fu_494_p2();
    void thread_add_ln182_4_fu_504_p2();
    void thread_add_ln182_5_fu_872_p2();
    void thread_add_ln182_6_fu_1002_p2();
    void thread_add_ln182_7_fu_1076_p2();
    void thread_add_ln182_8_fu_1082_p2();
    void thread_add_ln182_9_fu_1092_p2();
    void thread_add_ln182_fu_406_p2();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state7();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_01001();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_state1();
    void thread_ap_block_state3_pp0_stage0_iter0();
    void thread_ap_block_state4_pp0_stage0_iter1();
    void thread_ap_block_state5_pp0_stage0_iter2();
    void thread_ap_block_state6_pp0_stage0_iter3();
    void thread_ap_condition_pp0_exit_iter1_state4();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_ready();
    void thread_fifo1_blk_n();
    void thread_fifo1_read();
    void thread_fifo2_blk_n();
    void thread_fifo2_din();
    void thread_fifo2_write();
    void thread_icmp_ln150_fu_245_p2();
    void thread_icmp_ln151_fu_257_p2();
    void thread_internal_ap_ready();
    void thread_line_buf_address0();
    void thread_line_buf_ce0();
    void thread_line_buf_ce1();
    void thread_line_buf_d1();
    void thread_line_buf_we1();
    void thread_real_start();
    void thread_sext_ln182_10_fu_662_p1();
    void thread_sext_ln182_11_fu_1088_p1();
    void thread_sext_ln182_12_fu_1104_p1();
    void thread_sext_ln182_13_fu_1113_p1();
    void thread_sext_ln182_1_fu_456_p1();
    void thread_sext_ln182_2_fu_858_p1();
    void thread_sext_ln182_3_fu_878_p1();
    void thread_sext_ln182_4_fu_910_p1();
    void thread_sext_ln182_5_fu_944_p1();
    void thread_sext_ln182_6_fu_976_p1();
    void thread_sext_ln182_7_fu_1040_p1();
    void thread_sext_ln182_8_fu_564_p1();
    void thread_sext_ln182_9_fu_1072_p1();
    void thread_sext_ln182_fu_446_p1();
    void thread_shl_ln182_10_fu_926_p3();
    void thread_shl_ln182_11_fu_948_p3();
    void thread_shl_ln182_12_fu_959_p3();
    void thread_shl_ln182_13_fu_980_p3();
    void thread_shl_ln182_14_fu_991_p3();
    void thread_shl_ln182_15_fu_1012_p3();
    void thread_shl_ln182_16_fu_1023_p3();
    void thread_shl_ln182_17_fu_534_p3();
    void thread_shl_ln182_18_fu_546_p3();
    void thread_shl_ln182_19_fu_568_p3();
    void thread_shl_ln182_1_fu_416_p3();
    void thread_shl_ln182_20_fu_580_p3();
    void thread_shl_ln182_21_fu_1044_p3();
    void thread_shl_ln182_22_fu_1055_p3();
    void thread_shl_ln182_23_fu_592_p3();
    void thread_shl_ln182_24_fu_604_p3();
    void thread_shl_ln182_25_fu_620_p3();
    void thread_shl_ln182_26_fu_632_p3();
    void thread_shl_ln182_27_fu_644_p3();
    void thread_shl_ln182_28_fu_666_p3();
    void thread_shl_ln182_2_fu_428_p3();
    void thread_shl_ln182_3_fu_460_p3();
    void thread_shl_ln182_4_fu_476_p3();
    void thread_shl_ln182_5_fu_861_p3();
    void thread_shl_ln182_6_fu_882_p3();
    void thread_shl_ln182_7_fu_893_p3();
    void thread_shl_ln182_8_fu_510_p3();
    void thread_shl_ln182_9_fu_522_p3();
    void thread_shl_ln182_s_fu_914_p3();
    void thread_shl_ln_fu_394_p3();
    void thread_start_out();
    void thread_start_write();
    void thread_sub_ln182_1_fu_904_p2();
    void thread_sub_ln182_2_fu_938_p2();
    void thread_sub_ln182_3_fu_970_p2();
    void thread_sub_ln182_4_fu_1034_p2();
    void thread_sub_ln182_5_fu_558_p2();
    void thread_sub_ln182_6_fu_1066_p2();
    void thread_sub_ln182_7_fu_656_p2();
    void thread_sub_ln182_fu_440_p2();
    void thread_tmp_fu_371_p4();
    void thread_window_buf_0_4_fu_331_p4();
    void thread_window_buf_1_4_fu_341_p4();
    void thread_window_buf_2_4_fu_351_p4();
    void thread_window_buf_3_4_fu_361_p4();
    void thread_xi_fu_263_p2();
    void thread_yi_fu_251_p2();
    void thread_zext_ln160_fu_269_p1();
    void thread_zext_ln182_10_fu_889_p1();
    void thread_zext_ln182_11_fu_900_p1();
    void thread_zext_ln182_12_fu_518_p1();
    void thread_zext_ln182_13_fu_530_p1();
    void thread_zext_ln182_14_fu_922_p1();
    void thread_zext_ln182_15_fu_934_p1();
    void thread_zext_ln182_16_fu_955_p1();
    void thread_zext_ln182_17_fu_966_p1();
    void thread_zext_ln182_18_fu_987_p1();
    void thread_zext_ln182_19_fu_998_p1();
    void thread_zext_ln182_1_fu_402_p1();
    void thread_zext_ln182_20_fu_1008_p1();
    void thread_zext_ln182_21_fu_1019_p1();
    void thread_zext_ln182_22_fu_1030_p1();
    void thread_zext_ln182_23_fu_542_p1();
    void thread_zext_ln182_24_fu_554_p1();
    void thread_zext_ln182_25_fu_576_p1();
    void thread_zext_ln182_26_fu_588_p1();
    void thread_zext_ln182_27_fu_1051_p1();
    void thread_zext_ln182_28_fu_1062_p1();
    void thread_zext_ln182_29_fu_600_p1();
    void thread_zext_ln182_2_fu_412_p1();
    void thread_zext_ln182_30_fu_612_p1();
    void thread_zext_ln182_31_fu_616_p1();
    void thread_zext_ln182_32_fu_628_p1();
    void thread_zext_ln182_33_fu_640_p1();
    void thread_zext_ln182_34_fu_652_p1();
    void thread_zext_ln182_35_fu_674_p1();
    void thread_zext_ln182_36_fu_678_p1();
    void thread_zext_ln182_37_fu_694_p1();
    void thread_zext_ln182_38_fu_704_p1();
    void thread_zext_ln182_39_fu_714_p1();
    void thread_zext_ln182_3_fu_424_p1();
    void thread_zext_ln182_40_fu_1123_p1();
    void thread_zext_ln182_41_fu_730_p1();
    void thread_zext_ln182_42_fu_740_p1();
    void thread_zext_ln182_43_fu_750_p1();
    void thread_zext_ln182_44_fu_1126_p1();
    void thread_zext_ln182_45_fu_1143_p1();
    void thread_zext_ln182_4_fu_436_p1();
    void thread_zext_ln182_5_fu_468_p1();
    void thread_zext_ln182_6_fu_472_p1();
    void thread_zext_ln182_7_fu_484_p1();
    void thread_zext_ln182_8_fu_500_p1();
    void thread_zext_ln182_9_fu_868_p1();
    void thread_zext_ln182_fu_390_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
