// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// AXILiteS
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read)
//        bit 7  - auto_restart (Read/Write)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x10 : Data signal of hist_hthr
//        bit 7~0 - hist_hthr[7:0] (Read)
//        others  - reserved
// 0x14 : Control signal of hist_hthr
//        bit 0  - hist_hthr_ap_vld (Read/COR)
//        others - reserved
// 0x18 : Data signal of hist_lthr
//        bit 7~0 - hist_lthr[7:0] (Read)
//        others  - reserved
// 0x1c : Control signal of hist_lthr
//        bit 0  - hist_lthr_ap_vld (Read/COR)
//        others - reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XCANNY_EDGE_RECTANGLE_AXILITES_ADDR_AP_CTRL        0x00
#define XCANNY_EDGE_RECTANGLE_AXILITES_ADDR_GIE            0x04
#define XCANNY_EDGE_RECTANGLE_AXILITES_ADDR_IER            0x08
#define XCANNY_EDGE_RECTANGLE_AXILITES_ADDR_ISR            0x0c
#define XCANNY_EDGE_RECTANGLE_AXILITES_ADDR_HIST_HTHR_DATA 0x10
#define XCANNY_EDGE_RECTANGLE_AXILITES_BITS_HIST_HTHR_DATA 8
#define XCANNY_EDGE_RECTANGLE_AXILITES_ADDR_HIST_HTHR_CTRL 0x14
#define XCANNY_EDGE_RECTANGLE_AXILITES_ADDR_HIST_LTHR_DATA 0x18
#define XCANNY_EDGE_RECTANGLE_AXILITES_BITS_HIST_LTHR_DATA 8
#define XCANNY_EDGE_RECTANGLE_AXILITES_ADDR_HIST_LTHR_CTRL 0x1c

