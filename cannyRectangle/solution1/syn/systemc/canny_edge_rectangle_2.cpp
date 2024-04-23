// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "canny_edge_rectangle_2.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic canny_edge_rectangle_2::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic canny_edge_rectangle_2::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<1> canny_edge_rectangle_2::ap_ST_fsm_state1 = "1";
const sc_lv<32> canny_edge_rectangle_2::ap_const_lv32_0 = "00000000000000000000000000000000";
const bool canny_edge_rectangle_2::ap_const_boolean_1 = true;

canny_edge_rectangle_2::canny_edge_rectangle_2(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_block_state1);
    sensitive << ( real_start );
    sensitive << ( ap_done_reg );
    sensitive << ( bh_empty_n );
    sensitive << ( bl_empty_n );
    sensitive << ( bh_out_full_n );
    sensitive << ( bh_out1_full_n );
    sensitive << ( bl_out_full_n );
    sensitive << ( bl_out2_full_n );

    SC_METHOD(thread_ap_done);
    sensitive << ( real_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( bh_empty_n );
    sensitive << ( bl_empty_n );
    sensitive << ( bh_out_full_n );
    sensitive << ( bh_out1_full_n );
    sensitive << ( bl_out_full_n );
    sensitive << ( bl_out2_full_n );

    SC_METHOD(thread_ap_idle);
    sensitive << ( real_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( internal_ap_ready );

    SC_METHOD(thread_bh_blk_n);
    sensitive << ( real_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( bh_empty_n );

    SC_METHOD(thread_bh_out1_blk_n);
    sensitive << ( real_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( bh_out1_full_n );

    SC_METHOD(thread_bh_out1_din);
    sensitive << ( real_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( bh_dout );
    sensitive << ( bh_empty_n );
    sensitive << ( bl_empty_n );
    sensitive << ( bh_out_full_n );
    sensitive << ( bh_out1_full_n );
    sensitive << ( bl_out_full_n );
    sensitive << ( bl_out2_full_n );

    SC_METHOD(thread_bh_out1_write);
    sensitive << ( real_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( bh_empty_n );
    sensitive << ( bl_empty_n );
    sensitive << ( bh_out_full_n );
    sensitive << ( bh_out1_full_n );
    sensitive << ( bl_out_full_n );
    sensitive << ( bl_out2_full_n );

    SC_METHOD(thread_bh_out_blk_n);
    sensitive << ( real_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( bh_out_full_n );

    SC_METHOD(thread_bh_out_din);
    sensitive << ( real_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( bh_dout );
    sensitive << ( bh_empty_n );
    sensitive << ( bl_empty_n );
    sensitive << ( bh_out_full_n );
    sensitive << ( bh_out1_full_n );
    sensitive << ( bl_out_full_n );
    sensitive << ( bl_out2_full_n );

    SC_METHOD(thread_bh_out_write);
    sensitive << ( real_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( bh_empty_n );
    sensitive << ( bl_empty_n );
    sensitive << ( bh_out_full_n );
    sensitive << ( bh_out1_full_n );
    sensitive << ( bl_out_full_n );
    sensitive << ( bl_out2_full_n );

    SC_METHOD(thread_bh_read);
    sensitive << ( real_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( bh_empty_n );
    sensitive << ( bl_empty_n );
    sensitive << ( bh_out_full_n );
    sensitive << ( bh_out1_full_n );
    sensitive << ( bl_out_full_n );
    sensitive << ( bl_out2_full_n );

    SC_METHOD(thread_bl_blk_n);
    sensitive << ( real_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( bl_empty_n );

    SC_METHOD(thread_bl_out2_blk_n);
    sensitive << ( real_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( bl_out2_full_n );

    SC_METHOD(thread_bl_out2_din);
    sensitive << ( real_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( bh_empty_n );
    sensitive << ( bl_dout );
    sensitive << ( bl_empty_n );
    sensitive << ( bh_out_full_n );
    sensitive << ( bh_out1_full_n );
    sensitive << ( bl_out_full_n );
    sensitive << ( bl_out2_full_n );

    SC_METHOD(thread_bl_out2_write);
    sensitive << ( real_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( bh_empty_n );
    sensitive << ( bl_empty_n );
    sensitive << ( bh_out_full_n );
    sensitive << ( bh_out1_full_n );
    sensitive << ( bl_out_full_n );
    sensitive << ( bl_out2_full_n );

    SC_METHOD(thread_bl_out_blk_n);
    sensitive << ( real_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( bl_out_full_n );

    SC_METHOD(thread_bl_out_din);
    sensitive << ( real_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( bh_empty_n );
    sensitive << ( bl_dout );
    sensitive << ( bl_empty_n );
    sensitive << ( bh_out_full_n );
    sensitive << ( bh_out1_full_n );
    sensitive << ( bl_out_full_n );
    sensitive << ( bl_out2_full_n );

    SC_METHOD(thread_bl_out_write);
    sensitive << ( real_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( bh_empty_n );
    sensitive << ( bl_empty_n );
    sensitive << ( bh_out_full_n );
    sensitive << ( bh_out1_full_n );
    sensitive << ( bl_out_full_n );
    sensitive << ( bl_out2_full_n );

    SC_METHOD(thread_bl_read);
    sensitive << ( real_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( bh_empty_n );
    sensitive << ( bl_empty_n );
    sensitive << ( bh_out_full_n );
    sensitive << ( bh_out1_full_n );
    sensitive << ( bl_out_full_n );
    sensitive << ( bl_out2_full_n );

    SC_METHOD(thread_internal_ap_ready);
    sensitive << ( real_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( bh_empty_n );
    sensitive << ( bl_empty_n );
    sensitive << ( bh_out_full_n );
    sensitive << ( bh_out1_full_n );
    sensitive << ( bl_out_full_n );
    sensitive << ( bl_out2_full_n );

    SC_METHOD(thread_real_start);
    sensitive << ( ap_start );
    sensitive << ( start_full_n );
    sensitive << ( start_once_reg );

    SC_METHOD(thread_start_out);
    sensitive << ( real_start );

    SC_METHOD(thread_start_write);
    sensitive << ( real_start );
    sensitive << ( start_once_reg );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( real_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( bh_empty_n );
    sensitive << ( bl_empty_n );
    sensitive << ( bh_out_full_n );
    sensitive << ( bh_out1_full_n );
    sensitive << ( bl_out_full_n );
    sensitive << ( bl_out2_full_n );

    start_once_reg = SC_LOGIC_0;
    ap_done_reg = SC_LOGIC_0;
    ap_CS_fsm = "1";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "canny_edge_rectangle_2_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, start_full_n, "(port)start_full_n");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_continue, "(port)ap_continue");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, start_out, "(port)start_out");
    sc_trace(mVcdFile, start_write, "(port)start_write");
    sc_trace(mVcdFile, bh_dout, "(port)bh_dout");
    sc_trace(mVcdFile, bh_empty_n, "(port)bh_empty_n");
    sc_trace(mVcdFile, bh_read, "(port)bh_read");
    sc_trace(mVcdFile, bl_dout, "(port)bl_dout");
    sc_trace(mVcdFile, bl_empty_n, "(port)bl_empty_n");
    sc_trace(mVcdFile, bl_read, "(port)bl_read");
    sc_trace(mVcdFile, bh_out_din, "(port)bh_out_din");
    sc_trace(mVcdFile, bh_out_full_n, "(port)bh_out_full_n");
    sc_trace(mVcdFile, bh_out_write, "(port)bh_out_write");
    sc_trace(mVcdFile, bh_out1_din, "(port)bh_out1_din");
    sc_trace(mVcdFile, bh_out1_full_n, "(port)bh_out1_full_n");
    sc_trace(mVcdFile, bh_out1_write, "(port)bh_out1_write");
    sc_trace(mVcdFile, bl_out_din, "(port)bl_out_din");
    sc_trace(mVcdFile, bl_out_full_n, "(port)bl_out_full_n");
    sc_trace(mVcdFile, bl_out_write, "(port)bl_out_write");
    sc_trace(mVcdFile, bl_out2_din, "(port)bl_out2_din");
    sc_trace(mVcdFile, bl_out2_full_n, "(port)bl_out2_full_n");
    sc_trace(mVcdFile, bl_out2_write, "(port)bl_out2_write");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, real_start, "real_start");
    sc_trace(mVcdFile, start_once_reg, "start_once_reg");
    sc_trace(mVcdFile, ap_done_reg, "ap_done_reg");
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, internal_ap_ready, "internal_ap_ready");
    sc_trace(mVcdFile, bh_blk_n, "bh_blk_n");
    sc_trace(mVcdFile, bl_blk_n, "bl_blk_n");
    sc_trace(mVcdFile, bh_out_blk_n, "bh_out_blk_n");
    sc_trace(mVcdFile, bh_out1_blk_n, "bh_out1_blk_n");
    sc_trace(mVcdFile, bl_out_blk_n, "bl_out_blk_n");
    sc_trace(mVcdFile, bl_out2_blk_n, "bl_out2_blk_n");
    sc_trace(mVcdFile, ap_block_state1, "ap_block_state1");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

canny_edge_rectangle_2::~canny_edge_rectangle_2() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void canny_edge_rectangle_2::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_done_reg = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_continue.read())) {
            ap_done_reg = ap_const_logic_0;
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                    !(esl_seteq<1,1,1>(ap_const_logic_0, real_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, bh_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, bl_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, bh_out_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, bh_out1_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, bl_out_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, bl_out2_full_n.read())))) {
            ap_done_reg = ap_const_logic_1;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        start_once_reg = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, real_start.read()) && 
             esl_seteq<1,1,1>(ap_const_logic_0, internal_ap_ready.read()))) {
            start_once_reg = ap_const_logic_1;
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, internal_ap_ready.read())) {
            start_once_reg = ap_const_logic_0;
        }
    }
}

void canny_edge_rectangle_2::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void canny_edge_rectangle_2::thread_ap_block_state1() {
    ap_block_state1 = (esl_seteq<1,1,1>(ap_const_logic_0, real_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, bh_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, bl_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, bh_out_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, bh_out1_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, bl_out_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, bl_out2_full_n.read()));
}

void canny_edge_rectangle_2::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, real_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, bh_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, bl_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, bh_out_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, bh_out1_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, bl_out_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, bl_out2_full_n.read())))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_done_reg.read();
    }
}

void canny_edge_rectangle_2::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, real_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void canny_edge_rectangle_2::thread_ap_ready() {
    ap_ready = internal_ap_ready.read();
}

void canny_edge_rectangle_2::thread_bh_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, real_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
        bh_blk_n = bh_empty_n.read();
    } else {
        bh_blk_n = ap_const_logic_1;
    }
}

void canny_edge_rectangle_2::thread_bh_out1_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, real_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
        bh_out1_blk_n = bh_out1_full_n.read();
    } else {
        bh_out1_blk_n = ap_const_logic_1;
    }
}

void canny_edge_rectangle_2::thread_bh_out1_din() {
    bh_out1_din = bh_dout.read();
}

void canny_edge_rectangle_2::thread_bh_out1_write() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, real_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, bh_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, bl_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, bh_out_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, bh_out1_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, bl_out_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, bl_out2_full_n.read())))) {
        bh_out1_write = ap_const_logic_1;
    } else {
        bh_out1_write = ap_const_logic_0;
    }
}

void canny_edge_rectangle_2::thread_bh_out_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, real_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
        bh_out_blk_n = bh_out_full_n.read();
    } else {
        bh_out_blk_n = ap_const_logic_1;
    }
}

void canny_edge_rectangle_2::thread_bh_out_din() {
    bh_out_din = bh_dout.read();
}

void canny_edge_rectangle_2::thread_bh_out_write() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, real_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, bh_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, bl_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, bh_out_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, bh_out1_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, bl_out_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, bl_out2_full_n.read())))) {
        bh_out_write = ap_const_logic_1;
    } else {
        bh_out_write = ap_const_logic_0;
    }
}

void canny_edge_rectangle_2::thread_bh_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, real_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, bh_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, bl_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, bh_out_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, bh_out1_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, bl_out_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, bl_out2_full_n.read())))) {
        bh_read = ap_const_logic_1;
    } else {
        bh_read = ap_const_logic_0;
    }
}

void canny_edge_rectangle_2::thread_bl_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, real_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
        bl_blk_n = bl_empty_n.read();
    } else {
        bl_blk_n = ap_const_logic_1;
    }
}

void canny_edge_rectangle_2::thread_bl_out2_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, real_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
        bl_out2_blk_n = bl_out2_full_n.read();
    } else {
        bl_out2_blk_n = ap_const_logic_1;
    }
}

void canny_edge_rectangle_2::thread_bl_out2_din() {
    bl_out2_din = bl_dout.read();
}

void canny_edge_rectangle_2::thread_bl_out2_write() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, real_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, bh_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, bl_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, bh_out_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, bh_out1_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, bl_out_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, bl_out2_full_n.read())))) {
        bl_out2_write = ap_const_logic_1;
    } else {
        bl_out2_write = ap_const_logic_0;
    }
}

void canny_edge_rectangle_2::thread_bl_out_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, real_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
        bl_out_blk_n = bl_out_full_n.read();
    } else {
        bl_out_blk_n = ap_const_logic_1;
    }
}

void canny_edge_rectangle_2::thread_bl_out_din() {
    bl_out_din = bl_dout.read();
}

void canny_edge_rectangle_2::thread_bl_out_write() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, real_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, bh_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, bl_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, bh_out_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, bh_out1_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, bl_out_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, bl_out2_full_n.read())))) {
        bl_out_write = ap_const_logic_1;
    } else {
        bl_out_write = ap_const_logic_0;
    }
}

void canny_edge_rectangle_2::thread_bl_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, real_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, bh_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, bl_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, bh_out_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, bh_out1_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, bl_out_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, bl_out2_full_n.read())))) {
        bl_read = ap_const_logic_1;
    } else {
        bl_read = ap_const_logic_0;
    }
}

void canny_edge_rectangle_2::thread_internal_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, real_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1) || esl_seteq<1,1,1>(ap_const_logic_0, bh_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, bl_empty_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, bh_out_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, bh_out1_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, bl_out_full_n.read()) || esl_seteq<1,1,1>(ap_const_logic_0, bl_out2_full_n.read())))) {
        internal_ap_ready = ap_const_logic_1;
    } else {
        internal_ap_ready = ap_const_logic_0;
    }
}

void canny_edge_rectangle_2::thread_real_start() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, start_full_n.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, start_once_reg.read()))) {
        real_start = ap_const_logic_0;
    } else {
        real_start = ap_start.read();
    }
}

void canny_edge_rectangle_2::thread_start_out() {
    start_out = real_start.read();
}

void canny_edge_rectangle_2::thread_start_write() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, start_once_reg.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, real_start.read()))) {
        start_write = ap_const_logic_1;
    } else {
        start_write = ap_const_logic_0;
    }
}

void canny_edge_rectangle_2::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            ap_NS_fsm = ap_ST_fsm_state1;
break;
        default : 
            ap_NS_fsm = "X";
            break;
    }
}

}
