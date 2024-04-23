// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module GrayArray2AXIS (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        axis_out_TDATA,
        axis_out_TVALID,
        axis_out_TREADY,
        axis_out_TLAST,
        fifo7_dout,
        fifo7_empty_n,
        fifo7_read
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_pp0_stage0 = 4'd4;
parameter    ap_ST_fsm_state6 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [23:0] axis_out_TDATA;
output   axis_out_TVALID;
input   axis_out_TREADY;
output  [0:0] axis_out_TLAST;
input  [7:0] fifo7_dout;
input   fifo7_empty_n;
output   fifo7_read;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg fifo7_read;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [23:0] axis_dst_data_V_1_data_out;
reg    axis_dst_data_V_1_vld_in;
wire    axis_dst_data_V_1_vld_out;
wire    axis_dst_data_V_1_ack_in;
wire    axis_dst_data_V_1_ack_out;
reg   [23:0] axis_dst_data_V_1_payload_A;
reg   [23:0] axis_dst_data_V_1_payload_B;
reg    axis_dst_data_V_1_sel_rd;
reg    axis_dst_data_V_1_sel_wr;
wire    axis_dst_data_V_1_sel;
wire    axis_dst_data_V_1_load_A;
wire    axis_dst_data_V_1_load_B;
reg   [1:0] axis_dst_data_V_1_state;
wire    axis_dst_data_V_1_state_cmp_full;
reg   [0:0] axis_dst_last_V_1_data_out;
reg    axis_dst_last_V_1_vld_in;
wire    axis_dst_last_V_1_vld_out;
wire    axis_dst_last_V_1_ack_in;
wire    axis_dst_last_V_1_ack_out;
reg   [0:0] axis_dst_last_V_1_payload_A;
reg   [0:0] axis_dst_last_V_1_payload_B;
reg    axis_dst_last_V_1_sel_rd;
reg    axis_dst_last_V_1_sel_wr;
wire    axis_dst_last_V_1_sel;
wire    axis_dst_last_V_1_load_A;
wire    axis_dst_last_V_1_load_B;
reg   [1:0] axis_dst_last_V_1_state;
wire    axis_dst_last_V_1_state_cmp_full;
reg    axis_out_TDATA_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] icmp_ln119_reg_166;
reg    ap_enable_reg_pp0_iter2;
reg   [0:0] icmp_ln119_reg_166_pp0_iter1_reg;
reg    fifo7_blk_n;
reg   [9:0] xi_0_i_reg_89;
wire   [0:0] icmp_ln118_fu_100_p2;
wire    ap_CS_fsm_state2;
reg    ap_block_state2;
wire   [9:0] yi_fu_106_p2;
reg   [9:0] yi_reg_156;
wire   [0:0] icmp_ln125_fu_112_p2;
reg   [0:0] icmp_ln125_reg_161;
wire   [0:0] icmp_ln119_fu_118_p2;
wire    ap_block_state3_pp0_stage0_iter0;
reg    ap_block_state4_pp0_stage0_iter1;
reg    ap_block_state4_io;
wire    ap_block_state5_pp0_stage0_iter2;
reg    ap_block_state5_io;
reg    ap_block_pp0_stage0_11001;
wire   [9:0] xi_fu_124_p2;
reg    ap_enable_reg_pp0_iter0;
wire   [0:0] and_ln125_fu_136_p2;
reg   [0:0] and_ln125_reg_175;
wire   [23:0] or_ln_i_fu_141_p4;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state3;
reg   [9:0] yi_0_i_reg_78;
reg    ap_block_state1;
wire    ap_CS_fsm_state6;
reg    ap_block_pp0_stage0_01001;
wire   [0:0] icmp_ln125_1_fu_130_p2;
reg   [3:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 4'd1;
#0 axis_dst_data_V_1_sel_rd = 1'b0;
#0 axis_dst_data_V_1_sel_wr = 1'b0;
#0 axis_dst_data_V_1_state = 2'd0;
#0 axis_dst_last_V_1_sel_rd = 1'b0;
#0 axis_dst_last_V_1_sel_wr = 1'b0;
#0 axis_dst_last_V_1_state = 2'd0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if ((~((axis_dst_last_V_1_state == 2'd1) | (axis_dst_data_V_1_state == 2'd1) | ((axis_dst_data_V_1_state == 2'd3) & (axis_out_TREADY == 1'b0)) | ((axis_dst_last_V_1_state == 2'd3) & (axis_out_TREADY == 1'b0))) & (icmp_ln118_fu_100_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_pp0_exit_iter0_state3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if ((~((axis_dst_last_V_1_state == 2'd1) | (axis_dst_data_V_1_state == 2'd1) | ((axis_dst_data_V_1_state == 2'd3) & (axis_out_TREADY == 1'b0)) | ((axis_dst_last_V_1_state == 2'd3) & (axis_out_TREADY == 1'b0))) & (icmp_ln118_fu_100_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state3)) begin
                ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state3);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end else if ((~((axis_dst_last_V_1_state == 2'd1) | (axis_dst_data_V_1_state == 2'd1) | ((axis_dst_data_V_1_state == 2'd3) & (axis_out_TREADY == 1'b0)) | ((axis_dst_last_V_1_state == 2'd3) & (axis_out_TREADY == 1'b0))) & (icmp_ln118_fu_100_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        axis_dst_data_V_1_sel_rd <= 1'b0;
    end else begin
        if (((axis_dst_data_V_1_ack_out == 1'b1) & (axis_dst_data_V_1_vld_out == 1'b1))) begin
            axis_dst_data_V_1_sel_rd <= ~axis_dst_data_V_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        axis_dst_data_V_1_sel_wr <= 1'b0;
    end else begin
        if (((axis_dst_data_V_1_ack_in == 1'b1) & (axis_dst_data_V_1_vld_in == 1'b1))) begin
            axis_dst_data_V_1_sel_wr <= ~axis_dst_data_V_1_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        axis_dst_data_V_1_state <= 2'd0;
    end else begin
        if ((((axis_dst_data_V_1_state == 2'd2) & (axis_dst_data_V_1_vld_in == 1'b0)) | ((axis_dst_data_V_1_state == 2'd3) & (axis_dst_data_V_1_vld_in == 1'b0) & (axis_dst_data_V_1_ack_out == 1'b1)))) begin
            axis_dst_data_V_1_state <= 2'd2;
        end else if ((((axis_dst_data_V_1_state == 2'd1) & (axis_out_TREADY == 1'b0)) | ((axis_dst_data_V_1_state == 2'd3) & (axis_out_TREADY == 1'b0) & (axis_dst_data_V_1_vld_in == 1'b1)))) begin
            axis_dst_data_V_1_state <= 2'd1;
        end else if (((~((axis_dst_data_V_1_vld_in == 1'b0) & (axis_dst_data_V_1_ack_out == 1'b1)) & ~((axis_out_TREADY == 1'b0) & (axis_dst_data_V_1_vld_in == 1'b1)) & (axis_dst_data_V_1_state == 2'd3)) | ((axis_dst_data_V_1_state == 2'd1) & (axis_dst_data_V_1_ack_out == 1'b1)) | ((axis_dst_data_V_1_state == 2'd2) & (axis_dst_data_V_1_vld_in == 1'b1)))) begin
            axis_dst_data_V_1_state <= 2'd3;
        end else begin
            axis_dst_data_V_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        axis_dst_last_V_1_sel_rd <= 1'b0;
    end else begin
        if (((axis_dst_last_V_1_vld_out == 1'b1) & (axis_dst_last_V_1_ack_out == 1'b1))) begin
            axis_dst_last_V_1_sel_rd <= ~axis_dst_last_V_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        axis_dst_last_V_1_sel_wr <= 1'b0;
    end else begin
        if (((axis_dst_last_V_1_ack_in == 1'b1) & (axis_dst_last_V_1_vld_in == 1'b1))) begin
            axis_dst_last_V_1_sel_wr <= ~axis_dst_last_V_1_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        axis_dst_last_V_1_state <= 2'd0;
    end else begin
        if ((((axis_dst_last_V_1_state == 2'd2) & (axis_dst_last_V_1_vld_in == 1'b0)) | ((axis_dst_last_V_1_state == 2'd3) & (axis_dst_last_V_1_vld_in == 1'b0) & (axis_dst_last_V_1_ack_out == 1'b1)))) begin
            axis_dst_last_V_1_state <= 2'd2;
        end else if ((((axis_dst_last_V_1_state == 2'd1) & (axis_out_TREADY == 1'b0)) | ((axis_dst_last_V_1_state == 2'd3) & (axis_out_TREADY == 1'b0) & (axis_dst_last_V_1_vld_in == 1'b1)))) begin
            axis_dst_last_V_1_state <= 2'd1;
        end else if (((~((axis_dst_last_V_1_vld_in == 1'b0) & (axis_dst_last_V_1_ack_out == 1'b1)) & ~((axis_out_TREADY == 1'b0) & (axis_dst_last_V_1_vld_in == 1'b1)) & (axis_dst_last_V_1_state == 2'd3)) | ((axis_dst_last_V_1_state == 2'd1) & (axis_dst_last_V_1_ack_out == 1'b1)) | ((axis_dst_last_V_1_state == 2'd2) & (axis_dst_last_V_1_vld_in == 1'b1)))) begin
            axis_dst_last_V_1_state <= 2'd3;
        end else begin
            axis_dst_last_V_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((~((axis_dst_last_V_1_state == 2'd1) | (axis_dst_data_V_1_state == 2'd1) | ((axis_dst_data_V_1_state == 2'd3) & (axis_out_TREADY == 1'b0)) | ((axis_dst_last_V_1_state == 2'd3) & (axis_out_TREADY == 1'b0))) & (icmp_ln118_fu_100_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        xi_0_i_reg_89 <= 10'd0;
    end else if (((icmp_ln119_fu_118_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        xi_0_i_reg_89 <= xi_fu_124_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        yi_0_i_reg_78 <= yi_reg_156;
    end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        yi_0_i_reg_78 <= 10'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln119_fu_118_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        and_ln125_reg_175 <= and_ln125_fu_136_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((axis_dst_data_V_1_load_A == 1'b1)) begin
        axis_dst_data_V_1_payload_A <= or_ln_i_fu_141_p4;
    end
end

always @ (posedge ap_clk) begin
    if ((axis_dst_data_V_1_load_B == 1'b1)) begin
        axis_dst_data_V_1_payload_B <= or_ln_i_fu_141_p4;
    end
end

always @ (posedge ap_clk) begin
    if ((axis_dst_last_V_1_load_A == 1'b1)) begin
        axis_dst_last_V_1_payload_A <= and_ln125_reg_175;
    end
end

always @ (posedge ap_clk) begin
    if ((axis_dst_last_V_1_load_B == 1'b1)) begin
        axis_dst_last_V_1_payload_B <= and_ln125_reg_175;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln119_reg_166 <= icmp_ln119_fu_118_p2;
        icmp_ln119_reg_166_pp0_iter1_reg <= icmp_ln119_reg_166;
    end
end

always @ (posedge ap_clk) begin
    if ((~((axis_dst_last_V_1_state == 2'd1) | (axis_dst_data_V_1_state == 2'd1) | ((axis_dst_data_V_1_state == 2'd3) & (axis_out_TREADY == 1'b0)) | ((axis_dst_last_V_1_state == 2'd3) & (axis_out_TREADY == 1'b0))) & (icmp_ln118_fu_100_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        icmp_ln125_reg_161 <= icmp_ln125_fu_112_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((~((axis_dst_last_V_1_state == 2'd1) | (axis_dst_data_V_1_state == 2'd1) | ((axis_dst_data_V_1_state == 2'd3) & (axis_out_TREADY == 1'b0)) | ((axis_dst_last_V_1_state == 2'd3) & (axis_out_TREADY == 1'b0))) & (1'b1 == ap_CS_fsm_state2))) begin
        yi_reg_156 <= yi_fu_106_p2;
    end
end

always @ (*) begin
    if ((icmp_ln119_fu_118_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state3 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state3 = 1'b0;
    end
end

always @ (*) begin
    if ((~((axis_dst_last_V_1_state == 2'd1) | (axis_dst_data_V_1_state == 2'd1) | ((axis_dst_data_V_1_state == 2'd3) & (axis_out_TREADY == 1'b0)) | ((axis_dst_last_V_1_state == 2'd3) & (axis_out_TREADY == 1'b0))) & (icmp_ln118_fu_100_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((axis_dst_last_V_1_state == 2'd1) | (axis_dst_data_V_1_state == 2'd1) | ((axis_dst_data_V_1_state == 2'd3) & (axis_out_TREADY == 1'b0)) | ((axis_dst_last_V_1_state == 2'd3) & (axis_out_TREADY == 1'b0))) & (icmp_ln118_fu_100_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((axis_dst_data_V_1_sel == 1'b1)) begin
        axis_dst_data_V_1_data_out = axis_dst_data_V_1_payload_B;
    end else begin
        axis_dst_data_V_1_data_out = axis_dst_data_V_1_payload_A;
    end
end

always @ (*) begin
    if (((icmp_ln119_reg_166 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        axis_dst_data_V_1_vld_in = 1'b1;
    end else begin
        axis_dst_data_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if ((axis_dst_last_V_1_sel == 1'b1)) begin
        axis_dst_last_V_1_data_out = axis_dst_last_V_1_payload_B;
    end else begin
        axis_dst_last_V_1_data_out = axis_dst_last_V_1_payload_A;
    end
end

always @ (*) begin
    if (((icmp_ln119_reg_166 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        axis_dst_last_V_1_vld_in = 1'b1;
    end else begin
        axis_dst_last_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if ((((icmp_ln119_reg_166_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0)) | ((icmp_ln119_reg_166 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0)))) begin
        axis_out_TDATA_blk_n = axis_dst_data_V_1_state[1'd1];
    end else begin
        axis_out_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln119_reg_166 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        fifo7_blk_n = fifo7_empty_n;
    end else begin
        fifo7_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln119_reg_166 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        fifo7_read = 1'b1;
    end else begin
        fifo7_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if ((~((axis_dst_last_V_1_state == 2'd1) | (axis_dst_data_V_1_state == 2'd1) | ((axis_dst_data_V_1_state == 2'd3) & (axis_out_TREADY == 1'b0)) | ((axis_dst_last_V_1_state == 2'd3) & (axis_out_TREADY == 1'b0))) & (icmp_ln118_fu_100_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if ((~((axis_dst_last_V_1_state == 2'd1) | (axis_dst_data_V_1_state == 2'd1) | ((axis_dst_data_V_1_state == 2'd3) & (axis_out_TREADY == 1'b0)) | ((axis_dst_last_V_1_state == 2'd3) & (axis_out_TREADY == 1'b0))) & (icmp_ln118_fu_100_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((icmp_ln119_fu_118_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0)) & ~((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((icmp_ln119_fu_118_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0)) | ((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign and_ln125_fu_136_p2 = (icmp_ln125_reg_161 & icmp_ln125_1_fu_130_p2);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd3];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((icmp_ln119_reg_166 == 1'd0) & (fifo7_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((1'b1 == ap_block_state5_io) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & ((1'b1 == ap_block_state4_io) | ((icmp_ln119_reg_166 == 1'd0) & (fifo7_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((1'b1 == ap_block_state5_io) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & ((1'b1 == ap_block_state4_io) | ((icmp_ln119_reg_166 == 1'd0) & (fifo7_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

always @ (*) begin
    ap_block_state2 = ((axis_dst_last_V_1_state == 2'd1) | (axis_dst_data_V_1_state == 2'd1) | ((axis_dst_data_V_1_state == 2'd3) & (axis_out_TREADY == 1'b0)) | ((axis_dst_last_V_1_state == 2'd3) & (axis_out_TREADY == 1'b0)));
end

assign ap_block_state3_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state4_io = ((icmp_ln119_reg_166 == 1'd0) & (axis_dst_data_V_1_ack_in == 1'b0));
end

always @ (*) begin
    ap_block_state4_pp0_stage0_iter1 = ((icmp_ln119_reg_166 == 1'd0) & (fifo7_empty_n == 1'b0));
end

always @ (*) begin
    ap_block_state5_io = ((icmp_ln119_reg_166_pp0_iter1_reg == 1'd0) & (axis_dst_data_V_1_ack_in == 1'b0));
end

assign ap_block_state5_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign axis_dst_data_V_1_ack_in = axis_dst_data_V_1_state[1'd1];

assign axis_dst_data_V_1_ack_out = axis_out_TREADY;

assign axis_dst_data_V_1_load_A = (~axis_dst_data_V_1_sel_wr & axis_dst_data_V_1_state_cmp_full);

assign axis_dst_data_V_1_load_B = (axis_dst_data_V_1_state_cmp_full & axis_dst_data_V_1_sel_wr);

assign axis_dst_data_V_1_sel = axis_dst_data_V_1_sel_rd;

assign axis_dst_data_V_1_state_cmp_full = ((axis_dst_data_V_1_state != 2'd1) ? 1'b1 : 1'b0);

assign axis_dst_data_V_1_vld_out = axis_dst_data_V_1_state[1'd0];

assign axis_dst_last_V_1_ack_in = axis_dst_last_V_1_state[1'd1];

assign axis_dst_last_V_1_ack_out = axis_out_TREADY;

assign axis_dst_last_V_1_load_A = (~axis_dst_last_V_1_sel_wr & axis_dst_last_V_1_state_cmp_full);

assign axis_dst_last_V_1_load_B = (axis_dst_last_V_1_state_cmp_full & axis_dst_last_V_1_sel_wr);

assign axis_dst_last_V_1_sel = axis_dst_last_V_1_sel_rd;

assign axis_dst_last_V_1_state_cmp_full = ((axis_dst_last_V_1_state != 2'd1) ? 1'b1 : 1'b0);

assign axis_dst_last_V_1_vld_out = axis_dst_last_V_1_state[1'd0];

assign axis_out_TDATA = axis_dst_data_V_1_data_out;

assign axis_out_TLAST = axis_dst_last_V_1_data_out;

assign axis_out_TVALID = axis_dst_last_V_1_state[1'd0];

assign icmp_ln118_fu_100_p2 = ((yi_0_i_reg_78 == 10'd512) ? 1'b1 : 1'b0);

assign icmp_ln119_fu_118_p2 = ((xi_0_i_reg_89 == 10'd512) ? 1'b1 : 1'b0);

assign icmp_ln125_1_fu_130_p2 = ((xi_0_i_reg_89 == 10'd511) ? 1'b1 : 1'b0);

assign icmp_ln125_fu_112_p2 = ((yi_0_i_reg_78 == 10'd511) ? 1'b1 : 1'b0);

assign or_ln_i_fu_141_p4 = {{{fifo7_dout}, {fifo7_dout}}, {fifo7_dout}};

assign xi_fu_124_p2 = (xi_0_i_reg_89 + 10'd1);

assign yi_fu_106_p2 = (yi_0_i_reg_78 + 10'd1);

endmodule //GrayArray2AXIS