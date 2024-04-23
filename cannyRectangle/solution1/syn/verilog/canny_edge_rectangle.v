// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="canny_edge_rectangle,hls_ip_2019_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020-clg400-1,HLS_INPUT_CLOCK=11.000000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=10.648000,HLS_SYN_LAT=2103846,HLS_SYN_TPT=2103842,HLS_SYN_MEM=15,HLS_SYN_DSP=5,HLS_SYN_FF=4273,HLS_SYN_LUT=6011,HLS_VERSION=2019_1}" *)

module canny_edge_rectangle (
        s_axi_AXILiteS_AWVALID,
        s_axi_AXILiteS_AWREADY,
        s_axi_AXILiteS_AWADDR,
        s_axi_AXILiteS_WVALID,
        s_axi_AXILiteS_WREADY,
        s_axi_AXILiteS_WDATA,
        s_axi_AXILiteS_WSTRB,
        s_axi_AXILiteS_ARVALID,
        s_axi_AXILiteS_ARREADY,
        s_axi_AXILiteS_ARADDR,
        s_axi_AXILiteS_RVALID,
        s_axi_AXILiteS_RREADY,
        s_axi_AXILiteS_RDATA,
        s_axi_AXILiteS_RRESP,
        s_axi_AXILiteS_BVALID,
        s_axi_AXILiteS_BREADY,
        s_axi_AXILiteS_BRESP,
        ap_clk,
        ap_rst_n,
        interrupt,
        axis_in_TDATA,
        axis_in_TLAST,
        axis_out_TDATA,
        axis_out_TLAST,
        bh,
        bl,
        axis_in_TVALID,
        axis_in_TREADY,
        axis_out_TVALID,
        axis_out_TREADY
);

parameter    C_S_AXI_AXILITES_DATA_WIDTH = 32;
parameter    C_S_AXI_AXILITES_ADDR_WIDTH = 5;
parameter    C_S_AXI_DATA_WIDTH = 32;
parameter    C_S_AXI_ADDR_WIDTH = 32;

parameter C_S_AXI_AXILITES_WSTRB_WIDTH = (32 / 8);
parameter C_S_AXI_WSTRB_WIDTH = (32 / 8);

input   s_axi_AXILiteS_AWVALID;
output   s_axi_AXILiteS_AWREADY;
input  [C_S_AXI_AXILITES_ADDR_WIDTH - 1:0] s_axi_AXILiteS_AWADDR;
input   s_axi_AXILiteS_WVALID;
output   s_axi_AXILiteS_WREADY;
input  [C_S_AXI_AXILITES_DATA_WIDTH - 1:0] s_axi_AXILiteS_WDATA;
input  [C_S_AXI_AXILITES_WSTRB_WIDTH - 1:0] s_axi_AXILiteS_WSTRB;
input   s_axi_AXILiteS_ARVALID;
output   s_axi_AXILiteS_ARREADY;
input  [C_S_AXI_AXILITES_ADDR_WIDTH - 1:0] s_axi_AXILiteS_ARADDR;
output   s_axi_AXILiteS_RVALID;
input   s_axi_AXILiteS_RREADY;
output  [C_S_AXI_AXILITES_DATA_WIDTH - 1:0] s_axi_AXILiteS_RDATA;
output  [1:0] s_axi_AXILiteS_RRESP;
output   s_axi_AXILiteS_BVALID;
input   s_axi_AXILiteS_BREADY;
output  [1:0] s_axi_AXILiteS_BRESP;
input   ap_clk;
input   ap_rst_n;
output   interrupt;
input  [23:0] axis_in_TDATA;
input  [0:0] axis_in_TLAST;
output  [23:0] axis_out_TDATA;
output  [0:0] axis_out_TLAST;
input  [7:0] bh;
input  [7:0] bl;
input   axis_in_TVALID;
output   axis_in_TREADY;
output   axis_out_TVALID;
input   axis_out_TREADY;

 reg    ap_rst_n_inv;
wire    ap_start;
wire    ap_ready;
wire    ap_done;
wire    ap_idle;
wire    canny_edge_rectangle_1_2_U0_ap_start;
wire    canny_edge_rectangle_1_2_U0_ap_done;
wire    canny_edge_rectangle_1_2_U0_ap_continue;
wire    canny_edge_rectangle_1_2_U0_ap_idle;
wire    canny_edge_rectangle_1_2_U0_ap_ready;
wire    canny_edge_rectangle_1_2_U0_start_out;
wire    canny_edge_rectangle_1_2_U0_start_write;
wire   [7:0] canny_edge_rectangle_1_2_U0_bh_out_din;
wire    canny_edge_rectangle_1_2_U0_bh_out_write;
wire   [7:0] canny_edge_rectangle_1_2_U0_bl_out_din;
wire    canny_edge_rectangle_1_2_U0_bl_out_write;
wire    canny_edge_rectangle_2_U0_ap_start;
wire    canny_edge_rectangle_2_U0_start_full_n;
wire    canny_edge_rectangle_2_U0_ap_done;
wire    canny_edge_rectangle_2_U0_ap_continue;
wire    canny_edge_rectangle_2_U0_ap_idle;
wire    canny_edge_rectangle_2_U0_ap_ready;
wire    canny_edge_rectangle_2_U0_start_out;
wire    canny_edge_rectangle_2_U0_start_write;
wire    canny_edge_rectangle_2_U0_bh_read;
wire    canny_edge_rectangle_2_U0_bl_read;
wire   [7:0] canny_edge_rectangle_2_U0_bh_out_din;
wire    canny_edge_rectangle_2_U0_bh_out_write;
wire   [7:0] canny_edge_rectangle_2_U0_bh_out1_din;
wire    canny_edge_rectangle_2_U0_bh_out1_write;
wire   [7:0] canny_edge_rectangle_2_U0_bl_out_din;
wire    canny_edge_rectangle_2_U0_bl_out_write;
wire   [7:0] canny_edge_rectangle_2_U0_bl_out2_din;
wire    canny_edge_rectangle_2_U0_bl_out2_write;
wire    Block_proc_U0_ap_start;
wire    Block_proc_U0_ap_done;
wire    Block_proc_U0_ap_continue;
wire    Block_proc_U0_ap_idle;
wire    Block_proc_U0_ap_ready;
wire    Block_proc_U0_bh_read;
wire   [7:0] Block_proc_U0_hist_hthr;
wire    Block_proc_U0_hist_hthr_ap_vld;
wire    Block_proc_U0_bl_read;
wire   [7:0] Block_proc_U0_hist_lthr;
wire    Block_proc_U0_hist_lthr_ap_vld;
wire    ap_sync_continue;
wire    AXIS2GrayArray_U0_ap_start;
wire    AXIS2GrayArray_U0_ap_done;
wire    AXIS2GrayArray_U0_ap_continue;
wire    AXIS2GrayArray_U0_ap_idle;
wire    AXIS2GrayArray_U0_ap_ready;
wire    AXIS2GrayArray_U0_start_out;
wire    AXIS2GrayArray_U0_start_write;
wire    AXIS2GrayArray_U0_axis_in_TREADY;
wire   [7:0] AXIS2GrayArray_U0_fifo1_din;
wire    AXIS2GrayArray_U0_fifo1_write;
wire    GaussianBlur_U0_ap_start;
wire    GaussianBlur_U0_ap_done;
wire    GaussianBlur_U0_ap_continue;
wire    GaussianBlur_U0_ap_idle;
wire    GaussianBlur_U0_ap_ready;
wire    GaussianBlur_U0_start_out;
wire    GaussianBlur_U0_start_write;
wire    GaussianBlur_U0_fifo1_read;
wire   [7:0] GaussianBlur_U0_fifo2_din;
wire    GaussianBlur_U0_fifo2_write;
wire    Sobel_1920u_1080u_U0_ap_start;
wire    Sobel_1920u_1080u_U0_ap_done;
wire    Sobel_1920u_1080u_U0_ap_continue;
wire    Sobel_1920u_1080u_U0_ap_idle;
wire    Sobel_1920u_1080u_U0_ap_ready;
wire    Sobel_1920u_1080u_U0_start_out;
wire    Sobel_1920u_1080u_U0_start_write;
wire    Sobel_1920u_1080u_U0_fifo2_read;
wire   [7:0] Sobel_1920u_1080u_U0_fifo3_value_din;
wire    Sobel_1920u_1080u_U0_fifo3_value_write;
wire   [1:0] Sobel_1920u_1080u_U0_fifo3_grad_din;
wire    Sobel_1920u_1080u_U0_fifo3_grad_write;
wire    NonMaxSuppression_U0_ap_start;
wire    NonMaxSuppression_U0_ap_done;
wire    NonMaxSuppression_U0_ap_continue;
wire    NonMaxSuppression_U0_ap_idle;
wire    NonMaxSuppression_U0_ap_ready;
wire    NonMaxSuppression_U0_start_out;
wire    NonMaxSuppression_U0_start_write;
wire    NonMaxSuppression_U0_fifo3_value_read;
wire    NonMaxSuppression_U0_fifo3_grad_read;
wire   [7:0] NonMaxSuppression_U0_fifo4_din;
wire    NonMaxSuppression_U0_fifo4_write;
wire    ZeroPadding_U0_ap_start;
wire    ZeroPadding_U0_ap_done;
wire    ZeroPadding_U0_ap_continue;
wire    ZeroPadding_U0_ap_idle;
wire    ZeroPadding_U0_ap_ready;
wire    ZeroPadding_U0_fifo4_read;
wire   [7:0] ZeroPadding_U0_fifo5_din;
wire    ZeroPadding_U0_fifo5_write;
wire    HystThreshold_U0_ap_start;
wire    HystThreshold_U0_ap_done;
wire    HystThreshold_U0_ap_continue;
wire    HystThreshold_U0_ap_idle;
wire    HystThreshold_U0_ap_ready;
wire    HystThreshold_U0_start_out;
wire    HystThreshold_U0_start_write;
wire    HystThreshold_U0_hthr_read;
wire    HystThreshold_U0_lthr_read;
wire    HystThreshold_U0_fifo5_read;
wire   [7:0] HystThreshold_U0_fifo6_din;
wire    HystThreshold_U0_fifo6_write;
wire    HystThresholdComp_U0_ap_start;
wire    HystThresholdComp_U0_ap_done;
wire    HystThresholdComp_U0_ap_continue;
wire    HystThresholdComp_U0_ap_idle;
wire    HystThresholdComp_U0_ap_ready;
wire    HystThresholdComp_U0_start_out;
wire    HystThresholdComp_U0_start_write;
wire    HystThresholdComp_U0_fifo6_read;
wire   [7:0] HystThresholdComp_U0_fifo7_din;
wire    HystThresholdComp_U0_fifo7_write;
wire    GrayArray2AXIS_U0_ap_start;
wire    GrayArray2AXIS_U0_ap_done;
wire    GrayArray2AXIS_U0_ap_continue;
wire    GrayArray2AXIS_U0_ap_idle;
wire    GrayArray2AXIS_U0_ap_ready;
wire   [23:0] GrayArray2AXIS_U0_axis_out_TDATA;
wire    GrayArray2AXIS_U0_axis_out_TVALID;
wire   [0:0] GrayArray2AXIS_U0_axis_out_TLAST;
wire    GrayArray2AXIS_U0_fifo7_read;
wire    bh_c2_full_n;
wire   [7:0] bh_c2_dout;
wire    bh_c2_empty_n;
wire    bl_c3_full_n;
wire   [7:0] bl_c3_dout;
wire    bl_c3_empty_n;
wire    bh_c_full_n;
wire   [7:0] bh_c_dout;
wire    bh_c_empty_n;
wire    bh_c1_full_n;
wire   [7:0] bh_c1_dout;
wire    bh_c1_empty_n;
wire    bl_c_full_n;
wire   [7:0] bl_c_dout;
wire    bl_c_empty_n;
wire    bl_c2_full_n;
wire   [7:0] bl_c2_dout;
wire    bl_c2_empty_n;
wire    fifo1_full_n;
wire   [7:0] fifo1_dout;
wire    fifo1_empty_n;
wire    fifo2_full_n;
wire   [7:0] fifo2_dout;
wire    fifo2_empty_n;
wire    fifo3_value_full_n;
wire   [7:0] fifo3_value_dout;
wire    fifo3_value_empty_n;
wire    fifo3_grad_full_n;
wire   [1:0] fifo3_grad_dout;
wire    fifo3_grad_empty_n;
wire    fifo4_full_n;
wire   [7:0] fifo4_dout;
wire    fifo4_empty_n;
wire    fifo5_full_n;
wire   [7:0] fifo5_dout;
wire    fifo5_empty_n;
wire    fifo6_full_n;
wire   [7:0] fifo6_dout;
wire    fifo6_empty_n;
wire    fifo7_full_n;
wire   [7:0] fifo7_dout;
wire    fifo7_empty_n;
wire    ap_sync_done;
wire    ap_sync_ready;
reg    ap_sync_reg_canny_edge_rectangle_1_2_U0_ap_ready;
wire    ap_sync_canny_edge_rectangle_1_2_U0_ap_ready;
reg   [1:0] canny_edge_rectangle_1_2_U0_ap_ready_count;
reg    ap_sync_reg_AXIS2GrayArray_U0_ap_ready;
wire    ap_sync_AXIS2GrayArray_U0_ap_ready;
reg   [1:0] AXIS2GrayArray_U0_ap_ready_count;
wire   [0:0] start_for_canny_edge_rectangle_2_U0_din;
wire    start_for_canny_edge_rectangle_2_U0_full_n;
wire   [0:0] start_for_canny_edge_rectangle_2_U0_dout;
wire    start_for_canny_edge_rectangle_2_U0_empty_n;
wire   [0:0] start_for_Block_proc_U0_din;
wire    start_for_Block_proc_U0_full_n;
wire   [0:0] start_for_Block_proc_U0_dout;
wire    start_for_Block_proc_U0_empty_n;
wire   [0:0] start_for_HystThreshold_U0_din;
wire    start_for_HystThreshold_U0_full_n;
wire   [0:0] start_for_HystThreshold_U0_dout;
wire    start_for_HystThreshold_U0_empty_n;
wire    Block_proc_U0_start_full_n;
wire    Block_proc_U0_start_write;
wire   [0:0] start_for_GaussianBlur_U0_din;
wire    start_for_GaussianBlur_U0_full_n;
wire   [0:0] start_for_GaussianBlur_U0_dout;
wire    start_for_GaussianBlur_U0_empty_n;
wire   [0:0] start_for_Sobel_1920u_1080u_U0_din;
wire    start_for_Sobel_1920u_1080u_U0_full_n;
wire   [0:0] start_for_Sobel_1920u_1080u_U0_dout;
wire    start_for_Sobel_1920u_1080u_U0_empty_n;
wire   [0:0] start_for_NonMaxSuppression_U0_din;
wire    start_for_NonMaxSuppression_U0_full_n;
wire   [0:0] start_for_NonMaxSuppression_U0_dout;
wire    start_for_NonMaxSuppression_U0_empty_n;
wire   [0:0] start_for_ZeroPadding_U0_din;
wire    start_for_ZeroPadding_U0_full_n;
wire   [0:0] start_for_ZeroPadding_U0_dout;
wire    start_for_ZeroPadding_U0_empty_n;
wire    ZeroPadding_U0_start_full_n;
wire    ZeroPadding_U0_start_write;
wire   [0:0] start_for_HystThresholdComp_U0_din;
wire    start_for_HystThresholdComp_U0_full_n;
wire   [0:0] start_for_HystThresholdComp_U0_dout;
wire    start_for_HystThresholdComp_U0_empty_n;
wire   [0:0] start_for_GrayArray2AXIS_U0_din;
wire    start_for_GrayArray2AXIS_U0_full_n;
wire   [0:0] start_for_GrayArray2AXIS_U0_dout;
wire    start_for_GrayArray2AXIS_U0_empty_n;
wire    GrayArray2AXIS_U0_start_full_n;
wire    GrayArray2AXIS_U0_start_write;

// power-on initialization
initial begin
#0 ap_sync_reg_canny_edge_rectangle_1_2_U0_ap_ready = 1'b0;
#0 canny_edge_rectangle_1_2_U0_ap_ready_count = 2'd0;
#0 ap_sync_reg_AXIS2GrayArray_U0_ap_ready = 1'b0;
#0 AXIS2GrayArray_U0_ap_ready_count = 2'd0;
end

canny_edge_rectangle_AXILiteS_s_axi #(
    .C_S_AXI_ADDR_WIDTH( C_S_AXI_AXILITES_ADDR_WIDTH ),
    .C_S_AXI_DATA_WIDTH( C_S_AXI_AXILITES_DATA_WIDTH ))
canny_edge_rectangle_AXILiteS_s_axi_U(
    .AWVALID(s_axi_AXILiteS_AWVALID),
    .AWREADY(s_axi_AXILiteS_AWREADY),
    .AWADDR(s_axi_AXILiteS_AWADDR),
    .WVALID(s_axi_AXILiteS_WVALID),
    .WREADY(s_axi_AXILiteS_WREADY),
    .WDATA(s_axi_AXILiteS_WDATA),
    .WSTRB(s_axi_AXILiteS_WSTRB),
    .ARVALID(s_axi_AXILiteS_ARVALID),
    .ARREADY(s_axi_AXILiteS_ARREADY),
    .ARADDR(s_axi_AXILiteS_ARADDR),
    .RVALID(s_axi_AXILiteS_RVALID),
    .RREADY(s_axi_AXILiteS_RREADY),
    .RDATA(s_axi_AXILiteS_RDATA),
    .RRESP(s_axi_AXILiteS_RRESP),
    .BVALID(s_axi_AXILiteS_BVALID),
    .BREADY(s_axi_AXILiteS_BREADY),
    .BRESP(s_axi_AXILiteS_BRESP),
    .ACLK(ap_clk),
    .ARESET(ap_rst_n_inv),
    .ACLK_EN(1'b1),
    .ap_start(ap_start),
    .interrupt(interrupt),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .hist_hthr(Block_proc_U0_hist_hthr),
    .hist_hthr_ap_vld(Block_proc_U0_hist_hthr_ap_vld),
    .hist_lthr(Block_proc_U0_hist_lthr),
    .hist_lthr_ap_vld(Block_proc_U0_hist_lthr_ap_vld)
);

canny_edge_rectangle_1_2 canny_edge_rectangle_1_2_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(canny_edge_rectangle_1_2_U0_ap_start),
    .start_full_n(start_for_canny_edge_rectangle_2_U0_full_n),
    .ap_done(canny_edge_rectangle_1_2_U0_ap_done),
    .ap_continue(canny_edge_rectangle_1_2_U0_ap_continue),
    .ap_idle(canny_edge_rectangle_1_2_U0_ap_idle),
    .ap_ready(canny_edge_rectangle_1_2_U0_ap_ready),
    .start_out(canny_edge_rectangle_1_2_U0_start_out),
    .start_write(canny_edge_rectangle_1_2_U0_start_write),
    .bh(bh),
    .bl(bl),
    .bh_out_din(canny_edge_rectangle_1_2_U0_bh_out_din),
    .bh_out_full_n(bh_c2_full_n),
    .bh_out_write(canny_edge_rectangle_1_2_U0_bh_out_write),
    .bl_out_din(canny_edge_rectangle_1_2_U0_bl_out_din),
    .bl_out_full_n(bl_c3_full_n),
    .bl_out_write(canny_edge_rectangle_1_2_U0_bl_out_write)
);

canny_edge_rectangle_2 canny_edge_rectangle_2_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(canny_edge_rectangle_2_U0_ap_start),
    .start_full_n(canny_edge_rectangle_2_U0_start_full_n),
    .ap_done(canny_edge_rectangle_2_U0_ap_done),
    .ap_continue(canny_edge_rectangle_2_U0_ap_continue),
    .ap_idle(canny_edge_rectangle_2_U0_ap_idle),
    .ap_ready(canny_edge_rectangle_2_U0_ap_ready),
    .start_out(canny_edge_rectangle_2_U0_start_out),
    .start_write(canny_edge_rectangle_2_U0_start_write),
    .bh_dout(bh_c2_dout),
    .bh_empty_n(bh_c2_empty_n),
    .bh_read(canny_edge_rectangle_2_U0_bh_read),
    .bl_dout(bl_c3_dout),
    .bl_empty_n(bl_c3_empty_n),
    .bl_read(canny_edge_rectangle_2_U0_bl_read),
    .bh_out_din(canny_edge_rectangle_2_U0_bh_out_din),
    .bh_out_full_n(bh_c_full_n),
    .bh_out_write(canny_edge_rectangle_2_U0_bh_out_write),
    .bh_out1_din(canny_edge_rectangle_2_U0_bh_out1_din),
    .bh_out1_full_n(bh_c1_full_n),
    .bh_out1_write(canny_edge_rectangle_2_U0_bh_out1_write),
    .bl_out_din(canny_edge_rectangle_2_U0_bl_out_din),
    .bl_out_full_n(bl_c_full_n),
    .bl_out_write(canny_edge_rectangle_2_U0_bl_out_write),
    .bl_out2_din(canny_edge_rectangle_2_U0_bl_out2_din),
    .bl_out2_full_n(bl_c2_full_n),
    .bl_out2_write(canny_edge_rectangle_2_U0_bl_out2_write)
);

Block_proc Block_proc_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(Block_proc_U0_ap_start),
    .ap_done(Block_proc_U0_ap_done),
    .ap_continue(Block_proc_U0_ap_continue),
    .ap_idle(Block_proc_U0_ap_idle),
    .ap_ready(Block_proc_U0_ap_ready),
    .bh_dout(bh_c_dout),
    .bh_empty_n(bh_c_empty_n),
    .bh_read(Block_proc_U0_bh_read),
    .hist_hthr(Block_proc_U0_hist_hthr),
    .hist_hthr_ap_vld(Block_proc_U0_hist_hthr_ap_vld),
    .bl_dout(bl_c_dout),
    .bl_empty_n(bl_c_empty_n),
    .bl_read(Block_proc_U0_bl_read),
    .hist_lthr(Block_proc_U0_hist_lthr),
    .hist_lthr_ap_vld(Block_proc_U0_hist_lthr_ap_vld)
);

AXIS2GrayArray AXIS2GrayArray_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(AXIS2GrayArray_U0_ap_start),
    .start_full_n(start_for_GaussianBlur_U0_full_n),
    .ap_done(AXIS2GrayArray_U0_ap_done),
    .ap_continue(AXIS2GrayArray_U0_ap_continue),
    .ap_idle(AXIS2GrayArray_U0_ap_idle),
    .ap_ready(AXIS2GrayArray_U0_ap_ready),
    .start_out(AXIS2GrayArray_U0_start_out),
    .start_write(AXIS2GrayArray_U0_start_write),
    .axis_in_TDATA(axis_in_TDATA),
    .axis_in_TVALID(axis_in_TVALID),
    .axis_in_TREADY(AXIS2GrayArray_U0_axis_in_TREADY),
    .fifo1_din(AXIS2GrayArray_U0_fifo1_din),
    .fifo1_full_n(fifo1_full_n),
    .fifo1_write(AXIS2GrayArray_U0_fifo1_write)
);

GaussianBlur GaussianBlur_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(GaussianBlur_U0_ap_start),
    .start_full_n(start_for_Sobel_1920u_1080u_U0_full_n),
    .ap_done(GaussianBlur_U0_ap_done),
    .ap_continue(GaussianBlur_U0_ap_continue),
    .ap_idle(GaussianBlur_U0_ap_idle),
    .ap_ready(GaussianBlur_U0_ap_ready),
    .start_out(GaussianBlur_U0_start_out),
    .start_write(GaussianBlur_U0_start_write),
    .fifo1_dout(fifo1_dout),
    .fifo1_empty_n(fifo1_empty_n),
    .fifo1_read(GaussianBlur_U0_fifo1_read),
    .fifo2_din(GaussianBlur_U0_fifo2_din),
    .fifo2_full_n(fifo2_full_n),
    .fifo2_write(GaussianBlur_U0_fifo2_write)
);

Sobel_1920u_1080u_s Sobel_1920u_1080u_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(Sobel_1920u_1080u_U0_ap_start),
    .start_full_n(start_for_NonMaxSuppression_U0_full_n),
    .ap_done(Sobel_1920u_1080u_U0_ap_done),
    .ap_continue(Sobel_1920u_1080u_U0_ap_continue),
    .ap_idle(Sobel_1920u_1080u_U0_ap_idle),
    .ap_ready(Sobel_1920u_1080u_U0_ap_ready),
    .start_out(Sobel_1920u_1080u_U0_start_out),
    .start_write(Sobel_1920u_1080u_U0_start_write),
    .fifo2_dout(fifo2_dout),
    .fifo2_empty_n(fifo2_empty_n),
    .fifo2_read(Sobel_1920u_1080u_U0_fifo2_read),
    .fifo3_value_din(Sobel_1920u_1080u_U0_fifo3_value_din),
    .fifo3_value_full_n(fifo3_value_full_n),
    .fifo3_value_write(Sobel_1920u_1080u_U0_fifo3_value_write),
    .fifo3_grad_din(Sobel_1920u_1080u_U0_fifo3_grad_din),
    .fifo3_grad_full_n(fifo3_grad_full_n),
    .fifo3_grad_write(Sobel_1920u_1080u_U0_fifo3_grad_write)
);

NonMaxSuppression NonMaxSuppression_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(NonMaxSuppression_U0_ap_start),
    .start_full_n(start_for_ZeroPadding_U0_full_n),
    .ap_done(NonMaxSuppression_U0_ap_done),
    .ap_continue(NonMaxSuppression_U0_ap_continue),
    .ap_idle(NonMaxSuppression_U0_ap_idle),
    .ap_ready(NonMaxSuppression_U0_ap_ready),
    .start_out(NonMaxSuppression_U0_start_out),
    .start_write(NonMaxSuppression_U0_start_write),
    .fifo3_value_dout(fifo3_value_dout),
    .fifo3_value_empty_n(fifo3_value_empty_n),
    .fifo3_value_read(NonMaxSuppression_U0_fifo3_value_read),
    .fifo3_grad_dout(fifo3_grad_dout),
    .fifo3_grad_empty_n(fifo3_grad_empty_n),
    .fifo3_grad_read(NonMaxSuppression_U0_fifo3_grad_read),
    .fifo4_din(NonMaxSuppression_U0_fifo4_din),
    .fifo4_full_n(fifo4_full_n),
    .fifo4_write(NonMaxSuppression_U0_fifo4_write)
);

ZeroPadding ZeroPadding_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(ZeroPadding_U0_ap_start),
    .ap_done(ZeroPadding_U0_ap_done),
    .ap_continue(ZeroPadding_U0_ap_continue),
    .ap_idle(ZeroPadding_U0_ap_idle),
    .ap_ready(ZeroPadding_U0_ap_ready),
    .fifo4_dout(fifo4_dout),
    .fifo4_empty_n(fifo4_empty_n),
    .fifo4_read(ZeroPadding_U0_fifo4_read),
    .fifo5_din(ZeroPadding_U0_fifo5_din),
    .fifo5_full_n(fifo5_full_n),
    .fifo5_write(ZeroPadding_U0_fifo5_write)
);

HystThreshold HystThreshold_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(HystThreshold_U0_ap_start),
    .start_full_n(start_for_HystThresholdComp_U0_full_n),
    .ap_done(HystThreshold_U0_ap_done),
    .ap_continue(HystThreshold_U0_ap_continue),
    .ap_idle(HystThreshold_U0_ap_idle),
    .ap_ready(HystThreshold_U0_ap_ready),
    .start_out(HystThreshold_U0_start_out),
    .start_write(HystThreshold_U0_start_write),
    .hthr_dout(bh_c1_dout),
    .hthr_empty_n(bh_c1_empty_n),
    .hthr_read(HystThreshold_U0_hthr_read),
    .lthr_dout(bl_c2_dout),
    .lthr_empty_n(bl_c2_empty_n),
    .lthr_read(HystThreshold_U0_lthr_read),
    .fifo5_dout(fifo5_dout),
    .fifo5_empty_n(fifo5_empty_n),
    .fifo5_read(HystThreshold_U0_fifo5_read),
    .fifo6_din(HystThreshold_U0_fifo6_din),
    .fifo6_full_n(fifo6_full_n),
    .fifo6_write(HystThreshold_U0_fifo6_write)
);

HystThresholdComp HystThresholdComp_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(HystThresholdComp_U0_ap_start),
    .start_full_n(start_for_GrayArray2AXIS_U0_full_n),
    .ap_done(HystThresholdComp_U0_ap_done),
    .ap_continue(HystThresholdComp_U0_ap_continue),
    .ap_idle(HystThresholdComp_U0_ap_idle),
    .ap_ready(HystThresholdComp_U0_ap_ready),
    .start_out(HystThresholdComp_U0_start_out),
    .start_write(HystThresholdComp_U0_start_write),
    .fifo6_dout(fifo6_dout),
    .fifo6_empty_n(fifo6_empty_n),
    .fifo6_read(HystThresholdComp_U0_fifo6_read),
    .fifo7_din(HystThresholdComp_U0_fifo7_din),
    .fifo7_full_n(fifo7_full_n),
    .fifo7_write(HystThresholdComp_U0_fifo7_write)
);

GrayArray2AXIS GrayArray2AXIS_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(GrayArray2AXIS_U0_ap_start),
    .ap_done(GrayArray2AXIS_U0_ap_done),
    .ap_continue(GrayArray2AXIS_U0_ap_continue),
    .ap_idle(GrayArray2AXIS_U0_ap_idle),
    .ap_ready(GrayArray2AXIS_U0_ap_ready),
    .axis_out_TDATA(GrayArray2AXIS_U0_axis_out_TDATA),
    .axis_out_TVALID(GrayArray2AXIS_U0_axis_out_TVALID),
    .axis_out_TREADY(axis_out_TREADY),
    .axis_out_TLAST(GrayArray2AXIS_U0_axis_out_TLAST),
    .fifo7_dout(fifo7_dout),
    .fifo7_empty_n(fifo7_empty_n),
    .fifo7_read(GrayArray2AXIS_U0_fifo7_read)
);

fifo_w8_d2_A bh_c2_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(canny_edge_rectangle_1_2_U0_bh_out_din),
    .if_full_n(bh_c2_full_n),
    .if_write(canny_edge_rectangle_1_2_U0_bh_out_write),
    .if_dout(bh_c2_dout),
    .if_empty_n(bh_c2_empty_n),
    .if_read(canny_edge_rectangle_2_U0_bh_read)
);

fifo_w8_d2_A bl_c3_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(canny_edge_rectangle_1_2_U0_bl_out_din),
    .if_full_n(bl_c3_full_n),
    .if_write(canny_edge_rectangle_1_2_U0_bl_out_write),
    .if_dout(bl_c3_dout),
    .if_empty_n(bl_c3_empty_n),
    .if_read(canny_edge_rectangle_2_U0_bl_read)
);

fifo_w8_d2_A bh_c_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(canny_edge_rectangle_2_U0_bh_out_din),
    .if_full_n(bh_c_full_n),
    .if_write(canny_edge_rectangle_2_U0_bh_out_write),
    .if_dout(bh_c_dout),
    .if_empty_n(bh_c_empty_n),
    .if_read(Block_proc_U0_bh_read)
);

fifo_w8_d7_A bh_c1_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(canny_edge_rectangle_2_U0_bh_out1_din),
    .if_full_n(bh_c1_full_n),
    .if_write(canny_edge_rectangle_2_U0_bh_out1_write),
    .if_dout(bh_c1_dout),
    .if_empty_n(bh_c1_empty_n),
    .if_read(HystThreshold_U0_hthr_read)
);

fifo_w8_d2_A bl_c_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(canny_edge_rectangle_2_U0_bl_out_din),
    .if_full_n(bl_c_full_n),
    .if_write(canny_edge_rectangle_2_U0_bl_out_write),
    .if_dout(bl_c_dout),
    .if_empty_n(bl_c_empty_n),
    .if_read(Block_proc_U0_bl_read)
);

fifo_w8_d7_A bl_c2_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(canny_edge_rectangle_2_U0_bl_out2_din),
    .if_full_n(bl_c2_full_n),
    .if_write(canny_edge_rectangle_2_U0_bl_out2_write),
    .if_dout(bl_c2_dout),
    .if_empty_n(bl_c2_empty_n),
    .if_read(HystThreshold_U0_lthr_read)
);

fifo_w8_d1_A fifo1_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(AXIS2GrayArray_U0_fifo1_din),
    .if_full_n(fifo1_full_n),
    .if_write(AXIS2GrayArray_U0_fifo1_write),
    .if_dout(fifo1_dout),
    .if_empty_n(fifo1_empty_n),
    .if_read(GaussianBlur_U0_fifo1_read)
);

fifo_w8_d1_A fifo2_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(GaussianBlur_U0_fifo2_din),
    .if_full_n(fifo2_full_n),
    .if_write(GaussianBlur_U0_fifo2_write),
    .if_dout(fifo2_dout),
    .if_empty_n(fifo2_empty_n),
    .if_read(Sobel_1920u_1080u_U0_fifo2_read)
);

fifo_w8_d1_A fifo3_value_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Sobel_1920u_1080u_U0_fifo3_value_din),
    .if_full_n(fifo3_value_full_n),
    .if_write(Sobel_1920u_1080u_U0_fifo3_value_write),
    .if_dout(fifo3_value_dout),
    .if_empty_n(fifo3_value_empty_n),
    .if_read(NonMaxSuppression_U0_fifo3_value_read)
);

fifo_w2_d1_A fifo3_grad_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Sobel_1920u_1080u_U0_fifo3_grad_din),
    .if_full_n(fifo3_grad_full_n),
    .if_write(Sobel_1920u_1080u_U0_fifo3_grad_write),
    .if_dout(fifo3_grad_dout),
    .if_empty_n(fifo3_grad_empty_n),
    .if_read(NonMaxSuppression_U0_fifo3_grad_read)
);

fifo_w8_d1_A fifo4_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(NonMaxSuppression_U0_fifo4_din),
    .if_full_n(fifo4_full_n),
    .if_write(NonMaxSuppression_U0_fifo4_write),
    .if_dout(fifo4_dout),
    .if_empty_n(fifo4_empty_n),
    .if_read(ZeroPadding_U0_fifo4_read)
);

fifo_w8_d1_A fifo5_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(ZeroPadding_U0_fifo5_din),
    .if_full_n(fifo5_full_n),
    .if_write(ZeroPadding_U0_fifo5_write),
    .if_dout(fifo5_dout),
    .if_empty_n(fifo5_empty_n),
    .if_read(HystThreshold_U0_fifo5_read)
);

fifo_w8_d1_A fifo6_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(HystThreshold_U0_fifo6_din),
    .if_full_n(fifo6_full_n),
    .if_write(HystThreshold_U0_fifo6_write),
    .if_dout(fifo6_dout),
    .if_empty_n(fifo6_empty_n),
    .if_read(HystThresholdComp_U0_fifo6_read)
);

fifo_w8_d1_A fifo7_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(HystThresholdComp_U0_fifo7_din),
    .if_full_n(fifo7_full_n),
    .if_write(HystThresholdComp_U0_fifo7_write),
    .if_dout(fifo7_dout),
    .if_empty_n(fifo7_empty_n),
    .if_read(GrayArray2AXIS_U0_fifo7_read)
);

start_for_canny_eocq start_for_canny_eocq_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_canny_edge_rectangle_2_U0_din),
    .if_full_n(start_for_canny_edge_rectangle_2_U0_full_n),
    .if_write(canny_edge_rectangle_1_2_U0_start_write),
    .if_dout(start_for_canny_edge_rectangle_2_U0_dout),
    .if_empty_n(start_for_canny_edge_rectangle_2_U0_empty_n),
    .if_read(canny_edge_rectangle_2_U0_ap_ready)
);

start_for_Block_ppcA start_for_Block_ppcA_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_Block_proc_U0_din),
    .if_full_n(start_for_Block_proc_U0_full_n),
    .if_write(canny_edge_rectangle_2_U0_start_write),
    .if_dout(start_for_Block_proc_U0_dout),
    .if_empty_n(start_for_Block_proc_U0_empty_n),
    .if_read(Block_proc_U0_ap_ready)
);

start_for_HystThrqcK start_for_HystThrqcK_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_HystThreshold_U0_din),
    .if_full_n(start_for_HystThreshold_U0_full_n),
    .if_write(canny_edge_rectangle_2_U0_start_write),
    .if_dout(start_for_HystThreshold_U0_dout),
    .if_empty_n(start_for_HystThreshold_U0_empty_n),
    .if_read(HystThreshold_U0_ap_ready)
);

start_for_GaussiarcU start_for_GaussiarcU_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_GaussianBlur_U0_din),
    .if_full_n(start_for_GaussianBlur_U0_full_n),
    .if_write(AXIS2GrayArray_U0_start_write),
    .if_dout(start_for_GaussianBlur_U0_dout),
    .if_empty_n(start_for_GaussianBlur_U0_empty_n),
    .if_read(GaussianBlur_U0_ap_ready)
);

start_for_Sobel_1sc4 start_for_Sobel_1sc4_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_Sobel_1920u_1080u_U0_din),
    .if_full_n(start_for_Sobel_1920u_1080u_U0_full_n),
    .if_write(GaussianBlur_U0_start_write),
    .if_dout(start_for_Sobel_1920u_1080u_U0_dout),
    .if_empty_n(start_for_Sobel_1920u_1080u_U0_empty_n),
    .if_read(Sobel_1920u_1080u_U0_ap_ready)
);

start_for_NonMaxStde start_for_NonMaxStde_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_NonMaxSuppression_U0_din),
    .if_full_n(start_for_NonMaxSuppression_U0_full_n),
    .if_write(Sobel_1920u_1080u_U0_start_write),
    .if_dout(start_for_NonMaxSuppression_U0_dout),
    .if_empty_n(start_for_NonMaxSuppression_U0_empty_n),
    .if_read(NonMaxSuppression_U0_ap_ready)
);

start_for_ZeroPadudo start_for_ZeroPadudo_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_ZeroPadding_U0_din),
    .if_full_n(start_for_ZeroPadding_U0_full_n),
    .if_write(NonMaxSuppression_U0_start_write),
    .if_dout(start_for_ZeroPadding_U0_dout),
    .if_empty_n(start_for_ZeroPadding_U0_empty_n),
    .if_read(ZeroPadding_U0_ap_ready)
);

start_for_HystThrvdy start_for_HystThrvdy_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_HystThresholdComp_U0_din),
    .if_full_n(start_for_HystThresholdComp_U0_full_n),
    .if_write(HystThreshold_U0_start_write),
    .if_dout(start_for_HystThresholdComp_U0_dout),
    .if_empty_n(start_for_HystThresholdComp_U0_empty_n),
    .if_read(HystThresholdComp_U0_ap_ready)
);

start_for_GrayArrwdI start_for_GrayArrwdI_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_GrayArray2AXIS_U0_din),
    .if_full_n(start_for_GrayArray2AXIS_U0_full_n),
    .if_write(HystThresholdComp_U0_start_write),
    .if_dout(start_for_GrayArray2AXIS_U0_dout),
    .if_empty_n(start_for_GrayArray2AXIS_U0_empty_n),
    .if_read(GrayArray2AXIS_U0_ap_ready)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_sync_reg_AXIS2GrayArray_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_AXIS2GrayArray_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_AXIS2GrayArray_U0_ap_ready <= ap_sync_AXIS2GrayArray_U0_ap_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_sync_reg_canny_edge_rectangle_1_2_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_canny_edge_rectangle_1_2_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_canny_edge_rectangle_1_2_U0_ap_ready <= ap_sync_canny_edge_rectangle_1_2_U0_ap_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_sync_ready == 1'b1) & (1'b0 == AXIS2GrayArray_U0_ap_ready))) begin
        AXIS2GrayArray_U0_ap_ready_count <= (AXIS2GrayArray_U0_ap_ready_count - 2'd1);
    end else if (((ap_sync_ready == 1'b0) & (1'b1 == AXIS2GrayArray_U0_ap_ready))) begin
        AXIS2GrayArray_U0_ap_ready_count <= (AXIS2GrayArray_U0_ap_ready_count + 2'd1);
    end
end

always @ (posedge ap_clk) begin
    if (((canny_edge_rectangle_1_2_U0_ap_ready == 1'b0) & (ap_sync_ready == 1'b1))) begin
        canny_edge_rectangle_1_2_U0_ap_ready_count <= (canny_edge_rectangle_1_2_U0_ap_ready_count - 2'd1);
    end else if (((ap_sync_ready == 1'b0) & (canny_edge_rectangle_1_2_U0_ap_ready == 1'b1))) begin
        canny_edge_rectangle_1_2_U0_ap_ready_count <= (canny_edge_rectangle_1_2_U0_ap_ready_count + 2'd1);
    end
end

assign AXIS2GrayArray_U0_ap_continue = 1'b1;

assign AXIS2GrayArray_U0_ap_start = ((ap_sync_reg_AXIS2GrayArray_U0_ap_ready ^ 1'b1) & ap_start);

assign Block_proc_U0_ap_continue = ap_sync_done;

assign Block_proc_U0_ap_start = start_for_Block_proc_U0_empty_n;

assign Block_proc_U0_start_full_n = 1'b1;

assign Block_proc_U0_start_write = 1'b0;

assign GaussianBlur_U0_ap_continue = 1'b1;

assign GaussianBlur_U0_ap_start = start_for_GaussianBlur_U0_empty_n;

assign GrayArray2AXIS_U0_ap_continue = ap_sync_done;

assign GrayArray2AXIS_U0_ap_start = start_for_GrayArray2AXIS_U0_empty_n;

assign GrayArray2AXIS_U0_start_full_n = 1'b1;

assign GrayArray2AXIS_U0_start_write = 1'b0;

assign HystThresholdComp_U0_ap_continue = 1'b1;

assign HystThresholdComp_U0_ap_start = start_for_HystThresholdComp_U0_empty_n;

assign HystThreshold_U0_ap_continue = 1'b1;

assign HystThreshold_U0_ap_start = start_for_HystThreshold_U0_empty_n;

assign NonMaxSuppression_U0_ap_continue = 1'b1;

assign NonMaxSuppression_U0_ap_start = start_for_NonMaxSuppression_U0_empty_n;

assign Sobel_1920u_1080u_U0_ap_continue = 1'b1;

assign Sobel_1920u_1080u_U0_ap_start = start_for_Sobel_1920u_1080u_U0_empty_n;

assign ZeroPadding_U0_ap_continue = 1'b1;

assign ZeroPadding_U0_ap_start = start_for_ZeroPadding_U0_empty_n;

assign ZeroPadding_U0_start_full_n = 1'b1;

assign ZeroPadding_U0_start_write = 1'b0;

assign ap_done = ap_sync_done;

assign ap_idle = (canny_edge_rectangle_2_U0_ap_idle & canny_edge_rectangle_1_2_U0_ap_idle & ZeroPadding_U0_ap_idle & Sobel_1920u_1080u_U0_ap_idle & NonMaxSuppression_U0_ap_idle & HystThreshold_U0_ap_idle & HystThresholdComp_U0_ap_idle & GrayArray2AXIS_U0_ap_idle & GaussianBlur_U0_ap_idle & Block_proc_U0_ap_idle & AXIS2GrayArray_U0_ap_idle);

assign ap_ready = ap_sync_ready;

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign ap_sync_AXIS2GrayArray_U0_ap_ready = (ap_sync_reg_AXIS2GrayArray_U0_ap_ready | AXIS2GrayArray_U0_ap_ready);

assign ap_sync_canny_edge_rectangle_1_2_U0_ap_ready = (canny_edge_rectangle_1_2_U0_ap_ready | ap_sync_reg_canny_edge_rectangle_1_2_U0_ap_ready);

assign ap_sync_continue = ap_sync_done;

assign ap_sync_done = (GrayArray2AXIS_U0_ap_done & Block_proc_U0_ap_done);

assign ap_sync_ready = (ap_sync_canny_edge_rectangle_1_2_U0_ap_ready & ap_sync_AXIS2GrayArray_U0_ap_ready);

assign axis_in_TREADY = AXIS2GrayArray_U0_axis_in_TREADY;

assign axis_out_TDATA = GrayArray2AXIS_U0_axis_out_TDATA;

assign axis_out_TLAST = GrayArray2AXIS_U0_axis_out_TLAST;

assign axis_out_TVALID = GrayArray2AXIS_U0_axis_out_TVALID;

assign canny_edge_rectangle_1_2_U0_ap_continue = 1'b1;

assign canny_edge_rectangle_1_2_U0_ap_start = ((ap_sync_reg_canny_edge_rectangle_1_2_U0_ap_ready ^ 1'b1) & ap_start);

assign canny_edge_rectangle_2_U0_ap_continue = 1'b1;

assign canny_edge_rectangle_2_U0_ap_start = start_for_canny_edge_rectangle_2_U0_empty_n;

assign canny_edge_rectangle_2_U0_start_full_n = (start_for_HystThreshold_U0_full_n & start_for_Block_proc_U0_full_n);

assign start_for_Block_proc_U0_din = 1'b1;

assign start_for_GaussianBlur_U0_din = 1'b1;

assign start_for_GrayArray2AXIS_U0_din = 1'b1;

assign start_for_HystThresholdComp_U0_din = 1'b1;

assign start_for_HystThreshold_U0_din = 1'b1;

assign start_for_NonMaxSuppression_U0_din = 1'b1;

assign start_for_Sobel_1920u_1080u_U0_din = 1'b1;

assign start_for_ZeroPadding_U0_din = 1'b1;

assign start_for_canny_edge_rectangle_2_U0_din = 1'b1;

endmodule //canny_edge_rectangle
