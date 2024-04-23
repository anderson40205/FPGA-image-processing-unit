// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _HystThresholdComp_HH_
#define _HystThresholdComp_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "Sobel_1920u_1080ufYi.h"

namespace ap_rtl {

struct HystThresholdComp : public sc_module {
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
    sc_in< sc_lv<8> > fifo6_dout;
    sc_in< sc_logic > fifo6_empty_n;
    sc_out< sc_logic > fifo6_read;
    sc_out< sc_lv<8> > fifo7_din;
    sc_in< sc_logic > fifo7_full_n;
    sc_out< sc_logic > fifo7_write;


    // Module declarations
    HystThresholdComp(sc_module_name name);
    SC_HAS_PROCESS(HystThresholdComp);

    ~HystThresholdComp();

    sc_trace_file* mVcdFile;

    Sobel_1920u_1080ufYi* line_buf_U;
    sc_signal< sc_logic > real_start;
    sc_signal< sc_logic > start_once_reg;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<4> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > internal_ap_ready;
    sc_signal< sc_logic > fifo6_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<1> > icmp_ln432_reg_458;
    sc_signal< sc_logic > fifo7_blk_n;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< sc_lv<1> > icmp_ln432_reg_458_pp0_iter1_reg;
    sc_signal< sc_lv<11> > xi_0_i_reg_156;
    sc_signal< sc_lv<1> > icmp_ln431_fu_167_p2;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<11> > yi_fu_173_p2;
    sc_signal< sc_lv<11> > yi_reg_453;
    sc_signal< sc_lv<1> > icmp_ln432_fu_179_p2;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state5_pp0_stage0_iter2;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<11> > xi_fu_185_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<11> > line_buf_addr_reg_467;
    sc_signal< sc_lv<1> > icmp_ln460_fu_259_p2;
    sc_signal< sc_lv<1> > icmp_ln460_reg_473;
    sc_signal< sc_lv<1> > icmp_ln461_6_fu_325_p2;
    sc_signal< sc_lv<1> > icmp_ln461_6_reg_478;
    sc_signal< sc_lv<1> > icmp_ln461_7_fu_331_p2;
    sc_signal< sc_lv<1> > icmp_ln461_7_reg_483;
    sc_signal< sc_lv<1> > icmp_ln461_8_fu_337_p2;
    sc_signal< sc_lv<1> > icmp_ln461_8_reg_488;
    sc_signal< sc_lv<1> > or_ln460_4_fu_349_p2;
    sc_signal< sc_lv<1> > or_ln460_4_reg_493;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter1_state4;
    sc_signal< sc_lv<11> > line_buf_address0;
    sc_signal< sc_logic > line_buf_ce0;
    sc_signal< sc_lv<24> > line_buf_q0;
    sc_signal< sc_logic > line_buf_ce1;
    sc_signal< sc_logic > line_buf_we1;
    sc_signal< sc_lv<24> > line_buf_d1;
    sc_signal< sc_lv<11> > yi_0_i_reg_145;
    sc_signal< bool > ap_block_state1;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<64> > zext_ln441_fu_191_p1;
    sc_signal< sc_lv<8> > window_buf_0_1_fu_88;
    sc_signal< sc_lv<8> > window_buf_0_1_3_fu_92;
    sc_signal< sc_lv<8> > window_buf_0_2_fu_214_p4;
    sc_signal< sc_lv<8> > window_buf_1_1_fu_96;
    sc_signal< sc_lv<8> > window_buf_1_1_3_fu_100;
    sc_signal< sc_lv<8> > window_buf_1_2_fu_224_p4;
    sc_signal< sc_lv<8> > window_buf_2_1_fu_104;
    sc_signal< sc_lv<8> > window_buf_2_1_3_fu_108;
    sc_signal< bool > ap_block_pp0_stage0_01001;
    sc_signal< sc_lv<16> > tmp_fu_234_p4;
    sc_signal< sc_lv<1> > icmp_ln461_fu_253_p2;
    sc_signal< sc_lv<1> > icmp_ln461_1_fu_265_p2;
    sc_signal< sc_lv<1> > icmp_ln461_2_fu_271_p2;
    sc_signal< sc_lv<1> > icmp_ln461_3_fu_277_p2;
    sc_signal< sc_lv<1> > or_ln460_1_fu_289_p2;
    sc_signal< sc_lv<1> > or_ln460_fu_283_p2;
    sc_signal< sc_lv<1> > or_ln460_2_fu_295_p2;
    sc_signal< sc_lv<1> > icmp_ln461_5_fu_313_p2;
    sc_signal< sc_lv<1> > icmp_ln461_4_fu_307_p2;
    sc_signal< sc_lv<1> > and_ln460_1_fu_319_p2;
    sc_signal< sc_lv<1> > or_ln460_3_fu_343_p2;
    sc_signal< sc_lv<1> > and_ln460_fu_301_p2;
    sc_signal< sc_lv<1> > or_ln460_5_fu_385_p2;
    sc_signal< sc_lv<1> > or_ln460_6_fu_389_p2;
    sc_signal< sc_lv<1> > and_ln460_2_fu_394_p2;
    sc_signal< sc_lv<1> > or_ln460_7_fu_399_p2;
    sc_signal< sc_lv<4> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<4> ap_ST_fsm_state1;
    static const sc_lv<4> ap_ST_fsm_state2;
    static const sc_lv<4> ap_ST_fsm_pp0_stage0;
    static const sc_lv<4> ap_ST_fsm_state6;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<11> ap_const_lv11_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<11> ap_const_lv11_438;
    static const sc_lv<11> ap_const_lv11_1;
    static const sc_lv<11> ap_const_lv11_780;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<8> ap_const_lv8_FF;
    static const sc_lv<8> ap_const_lv8_0;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_and_ln460_1_fu_319_p2();
    void thread_and_ln460_2_fu_394_p2();
    void thread_and_ln460_fu_301_p2();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state6();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_01001();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_state1();
    void thread_ap_block_state3_pp0_stage0_iter0();
    void thread_ap_block_state4_pp0_stage0_iter1();
    void thread_ap_block_state5_pp0_stage0_iter2();
    void thread_ap_condition_pp0_exit_iter1_state4();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_ready();
    void thread_fifo6_blk_n();
    void thread_fifo6_read();
    void thread_fifo7_blk_n();
    void thread_fifo7_din();
    void thread_fifo7_write();
    void thread_icmp_ln431_fu_167_p2();
    void thread_icmp_ln432_fu_179_p2();
    void thread_icmp_ln460_fu_259_p2();
    void thread_icmp_ln461_1_fu_265_p2();
    void thread_icmp_ln461_2_fu_271_p2();
    void thread_icmp_ln461_3_fu_277_p2();
    void thread_icmp_ln461_4_fu_307_p2();
    void thread_icmp_ln461_5_fu_313_p2();
    void thread_icmp_ln461_6_fu_325_p2();
    void thread_icmp_ln461_7_fu_331_p2();
    void thread_icmp_ln461_8_fu_337_p2();
    void thread_icmp_ln461_fu_253_p2();
    void thread_internal_ap_ready();
    void thread_line_buf_address0();
    void thread_line_buf_ce0();
    void thread_line_buf_ce1();
    void thread_line_buf_d1();
    void thread_line_buf_we1();
    void thread_or_ln460_1_fu_289_p2();
    void thread_or_ln460_2_fu_295_p2();
    void thread_or_ln460_3_fu_343_p2();
    void thread_or_ln460_4_fu_349_p2();
    void thread_or_ln460_5_fu_385_p2();
    void thread_or_ln460_6_fu_389_p2();
    void thread_or_ln460_7_fu_399_p2();
    void thread_or_ln460_fu_283_p2();
    void thread_real_start();
    void thread_start_out();
    void thread_start_write();
    void thread_tmp_fu_234_p4();
    void thread_window_buf_0_2_fu_214_p4();
    void thread_window_buf_1_2_fu_224_p4();
    void thread_xi_fu_185_p2();
    void thread_yi_fu_173_p2();
    void thread_zext_ln441_fu_191_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
