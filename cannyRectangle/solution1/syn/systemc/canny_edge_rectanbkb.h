// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __canny_edge_rectanbkb__HH__
#define __canny_edge_rectanbkb__HH__
#include "ACMP_smul_uu.h"
#include <systemc>

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int dout_WIDTH>
SC_MODULE(canny_edge_rectanbkb) {
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    ACMP_smul_uu<ID, 1, din0_WIDTH, din1_WIDTH, dout_WIDTH> ACMP_smul_uu_U;

    SC_CTOR(canny_edge_rectanbkb):  ACMP_smul_uu_U ("ACMP_smul_uu_U") {
        ACMP_smul_uu_U.din0(din0);
        ACMP_smul_uu_U.din1(din1);
        ACMP_smul_uu_U.dout(dout);

    }

};

#endif //
