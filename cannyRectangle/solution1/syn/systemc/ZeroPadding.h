// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _ZeroPadding_HH_
#define _ZeroPadding_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct ZeroPadding : public sc_module {
    // Port declarations 13
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<8> > fifo4_dout;
    sc_in< sc_logic > fifo4_empty_n;
    sc_out< sc_logic > fifo4_read;
    sc_out< sc_lv<8> > fifo5_din;
    sc_in< sc_logic > fifo5_full_n;
    sc_out< sc_logic > fifo5_write;


    // Module declarations
    ZeroPadding(sc_module_name name);
    SC_HAS_PROCESS(ZeroPadding);

    ~ZeroPadding();

    sc_trace_file* mVcdFile;

    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<4> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > fifo4_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<1> > icmp_ln478_reg_197;
    sc_signal< sc_logic > fifo5_blk_n;
    sc_signal< sc_lv<11> > xi_0_i_reg_100;
    sc_signal< sc_lv<1> > icmp_ln477_fu_111_p2;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<11> > yi_fu_117_p2;
    sc_signal< sc_lv<11> > yi_reg_187;
    sc_signal< sc_lv<1> > and_ln484_1_fu_135_p2;
    sc_signal< sc_lv<1> > and_ln484_1_reg_192;
    sc_signal< sc_lv<1> > icmp_ln478_fu_141_p2;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter1;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<11> > xi_fu_147_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<1> > icmp_ln484_2_fu_153_p2;
    sc_signal< sc_lv<1> > icmp_ln484_2_reg_206;
    sc_signal< sc_lv<1> > icmp_ln484_3_fu_159_p2;
    sc_signal< sc_lv<1> > icmp_ln484_3_reg_211;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state3;
    sc_signal< sc_lv<11> > yi_0_i_reg_89;
    sc_signal< bool > ap_block_state1;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< bool > ap_block_pp0_stage0_01001;
    sc_signal< sc_lv<1> > icmp_ln484_fu_123_p2;
    sc_signal< sc_lv<1> > icmp_ln484_1_fu_129_p2;
    sc_signal< sc_lv<1> > and_ln484_fu_165_p2;
    sc_signal< sc_lv<1> > and_ln484_2_fu_169_p2;
    sc_signal< sc_lv<4> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<4> ap_ST_fsm_state1;
    static const sc_lv<4> ap_ST_fsm_state2;
    static const sc_lv<4> ap_ST_fsm_pp0_stage0;
    static const sc_lv<4> ap_ST_fsm_state5;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<11> ap_const_lv11_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<11> ap_const_lv11_438;
    static const sc_lv<11> ap_const_lv11_1;
    static const sc_lv<11> ap_const_lv11_5;
    static const sc_lv<11> ap_const_lv11_433;
    static const sc_lv<11> ap_const_lv11_780;
    static const sc_lv<11> ap_const_lv11_77B;
    static const sc_lv<8> ap_const_lv8_0;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_and_ln484_1_fu_135_p2();
    void thread_and_ln484_2_fu_169_p2();
    void thread_and_ln484_fu_165_p2();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state5();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_01001();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_state1();
    void thread_ap_block_state3_pp0_stage0_iter0();
    void thread_ap_block_state4_pp0_stage0_iter1();
    void thread_ap_condition_pp0_exit_iter0_state3();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_ready();
    void thread_fifo4_blk_n();
    void thread_fifo4_read();
    void thread_fifo5_blk_n();
    void thread_fifo5_din();
    void thread_fifo5_write();
    void thread_icmp_ln477_fu_111_p2();
    void thread_icmp_ln478_fu_141_p2();
    void thread_icmp_ln484_1_fu_129_p2();
    void thread_icmp_ln484_2_fu_153_p2();
    void thread_icmp_ln484_3_fu_159_p2();
    void thread_icmp_ln484_fu_123_p2();
    void thread_xi_fu_147_p2();
    void thread_yi_fu_117_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
