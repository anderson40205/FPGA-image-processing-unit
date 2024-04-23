// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module NonMaxSuppression (
        ap_clk,
        ap_rst,
        ap_start,
        start_full_n,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        start_out,
        start_write,
        fifo3_value_dout,
        fifo3_value_empty_n,
        fifo3_value_read,
        fifo3_grad_dout,
        fifo3_grad_empty_n,
        fifo3_grad_read,
        fifo4_din,
        fifo4_full_n,
        fifo4_write
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_pp0_stage0 = 4'd4;
parameter    ap_ST_fsm_state6 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
input   start_full_n;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output   start_out;
output   start_write;
input  [7:0] fifo3_value_dout;
input   fifo3_value_empty_n;
output   fifo3_value_read;
input  [1:0] fifo3_grad_dout;
input   fifo3_grad_empty_n;
output   fifo3_grad_read;
output  [7:0] fifo4_din;
input   fifo4_full_n;
output   fifo4_write;

reg ap_done;
reg ap_idle;
reg start_write;
reg fifo3_value_read;
reg fifo3_grad_read;
reg fifo4_write;

reg    real_start;
reg    start_once_reg;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    internal_ap_ready;
reg    fifo3_value_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] icmp_ln324_reg_708;
reg    fifo3_grad_blk_n;
reg    fifo4_blk_n;
reg    ap_enable_reg_pp0_iter2;
reg   [0:0] icmp_ln324_reg_708_pp0_iter1_reg;
reg   [9:0] xi_0_i_reg_222;
wire   [0:0] icmp_ln323_fu_233_p2;
wire    ap_CS_fsm_state2;
wire   [9:0] yi_fu_239_p2;
reg   [9:0] yi_reg_698;
wire   [0:0] and_ln382_1_fu_267_p2;
reg   [0:0] and_ln382_1_reg_703;
wire   [0:0] icmp_ln324_fu_273_p2;
wire    ap_block_state3_pp0_stage0_iter0;
reg    ap_block_state4_pp0_stage0_iter1;
reg    ap_block_state5_pp0_stage0_iter2;
reg    ap_block_pp0_stage0_11001;
wire   [9:0] xi_fu_279_p2;
reg    ap_enable_reg_pp0_iter0;
reg   [8:0] line_buf_value_addr_reg_717;
reg   [8:0] line_buf_grad_addr_reg_723;
wire   [0:0] icmp_ln382_2_fu_301_p2;
reg   [0:0] icmp_ln382_2_reg_729;
reg   [0:0] icmp_ln382_2_reg_729_pp0_iter1_reg;
wire   [0:0] icmp_ln382_3_fu_307_p2;
reg   [0:0] icmp_ln382_3_reg_734;
reg   [0:0] icmp_ln382_3_reg_734_pp0_iter1_reg;
reg   [7:0] window_buf_1_1_val_reg_739;
wire   [0:0] icmp_ln368_fu_472_p2;
reg   [0:0] icmp_ln368_reg_744;
wire   [0:0] icmp_ln375_fu_504_p2;
reg   [0:0] icmp_ln375_reg_749;
wire   [7:0] select_ln360_fu_556_p3;
reg   [7:0] select_ln360_reg_754;
wire   [0:0] and_ln374_fu_576_p2;
reg   [0:0] and_ln374_reg_759;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter1_state4;
wire   [8:0] line_buf_value_address0;
reg    line_buf_value_ce0;
wire   [23:0] line_buf_value_q0;
reg    line_buf_value_ce1;
reg    line_buf_value_we1;
wire   [23:0] line_buf_value_d1;
wire   [8:0] line_buf_grad_address0;
reg    line_buf_grad_ce0;
wire   [5:0] line_buf_grad_q0;
reg    line_buf_grad_ce1;
reg    line_buf_grad_we1;
wire   [5:0] line_buf_grad_d1;
reg   [9:0] yi_0_i_reg_211;
reg    ap_block_state1;
wire    ap_CS_fsm_state6;
wire   [63:0] zext_ln334_fu_285_p1;
reg   [7:0] window_buf_0_1_val_fu_124;
reg   [7:0] window_buf_0_1_val_1_fu_128;
wire   [7:0] window_buf_0_2_val_fu_334_p4;
reg   [7:0] value_nms_fu_132;
reg   [7:0] value_nms_1_fu_136;
wire   [7:0] window_buf_1_2_val_fu_344_p4;
reg   [7:0] window_buf_2_1_val_fu_140;
reg   [7:0] window_buf_2_1_val_1_fu_144;
reg   [1:0] grad_nms_fu_148;
reg    ap_block_pp0_stage0_01001;
wire   [7:0] tmp_8_fu_245_p4;
wire   [0:0] icmp_ln382_fu_255_p2;
wire   [0:0] icmp_ln382_1_fu_261_p2;
wire   [7:0] tmp_9_fu_291_p4;
wire   [15:0] tmp_fu_364_p4;
wire   [3:0] tmp_1_fu_383_p4;
wire   [0:0] icmp_ln354_fu_408_p2;
wire   [0:0] icmp_ln354_1_fu_414_p2;
wire   [0:0] or_ln354_fu_420_p2;
wire   [0:0] icmp_ln361_fu_440_p2;
wire   [0:0] icmp_ln361_1_fu_446_p2;
wire   [0:0] or_ln361_fu_452_p2;
wire   [0:0] icmp_ln368_1_fu_478_p2;
wire   [0:0] or_ln368_fu_484_p2;
wire   [0:0] icmp_ln353_fu_402_p2;
wire   [0:0] icmp_ln360_fu_434_p2;
wire   [0:0] or_ln360_fu_510_p2;
wire   [0:0] icmp_ln367_fu_466_p2;
wire   [0:0] xor_ln360_fu_516_p2;
wire   [0:0] and_ln367_fu_522_p2;
wire   [7:0] select_ln368_fu_490_p3;
wire   [7:0] select_ln354_fu_426_p3;
wire   [7:0] select_ln367_fu_528_p3;
wire   [0:0] xor_ln353_fu_544_p2;
wire   [0:0] and_ln360_fu_550_p2;
wire   [7:0] select_ln361_fu_458_p3;
wire   [7:0] select_ln353_fu_536_p3;
wire   [0:0] or_ln367_fu_564_p2;
wire   [0:0] icmp_ln374_fu_498_p2;
wire   [0:0] xor_ln367_fu_570_p2;
wire   [0:0] or_ln375_fu_617_p2;
wire   [7:0] select_ln375_fu_621_p3;
wire   [0:0] and_ln382_fu_634_p2;
wire   [0:0] and_ln382_2_fu_638_p2;
wire   [7:0] select_ln374_fu_628_p3;
reg   [3:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
end

Sobel_512u_512u_sfYi #(
    .DataWidth( 24 ),
    .AddressRange( 512 ),
    .AddressWidth( 9 ))
line_buf_value_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(line_buf_value_address0),
    .ce0(line_buf_value_ce0),
    .q0(line_buf_value_q0),
    .address1(line_buf_value_addr_reg_717),
    .ce1(line_buf_value_ce1),
    .we1(line_buf_value_we1),
    .d1(line_buf_value_d1)
);

NonMaxSuppressionmb6 #(
    .DataWidth( 6 ),
    .AddressRange( 512 ),
    .AddressWidth( 9 ))
line_buf_grad_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(line_buf_grad_address0),
    .ce0(line_buf_grad_ce0),
    .q0(line_buf_grad_q0),
    .address1(line_buf_grad_addr_reg_723),
    .ce1(line_buf_grad_ce1),
    .we1(line_buf_grad_we1),
    .d1(line_buf_grad_d1)
);

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
        end else if (((icmp_ln323_fu_233_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((icmp_ln324_fu_273_p2 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((icmp_ln323_fu_233_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if ((((icmp_ln323_fu_233_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)) | ((1'b1 == ap_condition_pp0_exit_iter1_state4) & (1'b0 == ap_block_pp0_stage0_subdone)))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b1 == ap_condition_pp0_exit_iter1_state4) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter0;
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end else if (((icmp_ln323_fu_233_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        start_once_reg <= 1'b0;
    end else begin
        if (((internal_ap_ready == 1'b0) & (real_start == 1'b1))) begin
            start_once_reg <= 1'b1;
        end else if ((internal_ap_ready == 1'b1)) begin
            start_once_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln324_fu_273_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        xi_0_i_reg_222 <= xi_fu_279_p2;
    end else if (((icmp_ln323_fu_233_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        xi_0_i_reg_222 <= 10'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        yi_0_i_reg_211 <= yi_reg_698;
    end else if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        yi_0_i_reg_211 <= 10'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln324_reg_708 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        and_ln374_reg_759 <= and_ln374_fu_576_p2;
        icmp_ln368_reg_744 <= icmp_ln368_fu_472_p2;
        icmp_ln375_reg_749 <= icmp_ln375_fu_504_p2;
        select_ln360_reg_754 <= select_ln360_fu_556_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln323_fu_233_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        and_ln382_1_reg_703 <= and_ln382_1_fu_267_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln324_reg_708 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        grad_nms_fu_148 <= {{line_buf_grad_q0[5:4]}};
        value_nms_1_fu_136 <= {{line_buf_value_q0[23:16]}};
        value_nms_fu_132 <= value_nms_1_fu_136;
        window_buf_0_1_val_1_fu_128 <= {{line_buf_value_q0[15:8]}};
        window_buf_0_1_val_fu_124 <= window_buf_0_1_val_1_fu_128;
        window_buf_2_1_val_1_fu_144 <= fifo3_value_dout;
        window_buf_2_1_val_fu_140 <= window_buf_2_1_val_1_fu_144;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln324_reg_708 <= icmp_ln324_fu_273_p2;
        icmp_ln324_reg_708_pp0_iter1_reg <= icmp_ln324_reg_708;
        icmp_ln382_2_reg_729_pp0_iter1_reg <= icmp_ln382_2_reg_729;
        icmp_ln382_3_reg_734_pp0_iter1_reg <= icmp_ln382_3_reg_734;
        window_buf_1_1_val_reg_739 <= value_nms_1_fu_136;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln324_fu_273_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln382_2_reg_729 <= icmp_ln382_2_fu_301_p2;
        icmp_ln382_3_reg_734 <= icmp_ln382_3_fu_307_p2;
        line_buf_grad_addr_reg_723 <= zext_ln334_fu_285_p1;
        line_buf_value_addr_reg_717 <= zext_ln334_fu_285_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        yi_reg_698 <= yi_fu_239_p2;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_condition_pp0_exit_iter1_state4 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter1_state4 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln323_fu_233_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((real_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln324_reg_708 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        fifo3_grad_blk_n = fifo3_grad_empty_n;
    end else begin
        fifo3_grad_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln324_reg_708 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        fifo3_grad_read = 1'b1;
    end else begin
        fifo3_grad_read = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln324_reg_708 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        fifo3_value_blk_n = fifo3_value_empty_n;
    end else begin
        fifo3_value_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln324_reg_708 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        fifo3_value_read = 1'b1;
    end else begin
        fifo3_value_read = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln324_reg_708_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        fifo4_blk_n = fifo4_full_n;
    end else begin
        fifo4_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln324_reg_708_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        fifo4_write = 1'b1;
    end else begin
        fifo4_write = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln323_fu_233_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        internal_ap_ready = 1'b1;
    end else begin
        internal_ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        line_buf_grad_ce0 = 1'b1;
    end else begin
        line_buf_grad_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        line_buf_grad_ce1 = 1'b1;
    end else begin
        line_buf_grad_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln324_reg_708 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        line_buf_grad_we1 = 1'b1;
    end else begin
        line_buf_grad_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        line_buf_value_ce0 = 1'b1;
    end else begin
        line_buf_value_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        line_buf_value_ce1 = 1'b1;
    end else begin
        line_buf_value_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln324_reg_708 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        line_buf_value_we1 = 1'b1;
    end else begin
        line_buf_value_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (start_full_n == 1'b0))) begin
        real_start = 1'b0;
    end else begin
        real_start = ap_start;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (real_start == 1'b1))) begin
        start_write = 1'b1;
    end else begin
        start_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln323_fu_233_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if (~((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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

assign and_ln360_fu_550_p2 = (xor_ln353_fu_544_p2 & icmp_ln360_fu_434_p2);

assign and_ln367_fu_522_p2 = (xor_ln360_fu_516_p2 & icmp_ln367_fu_466_p2);

assign and_ln374_fu_576_p2 = (xor_ln367_fu_570_p2 & icmp_ln374_fu_498_p2);

assign and_ln382_1_fu_267_p2 = (icmp_ln382_fu_255_p2 & icmp_ln382_1_fu_261_p2);

assign and_ln382_2_fu_638_p2 = (and_ln382_fu_634_p2 & and_ln382_1_reg_703);

assign and_ln382_fu_634_p2 = (icmp_ln382_3_reg_734_pp0_iter1_reg & icmp_ln382_2_reg_729_pp0_iter1_reg);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd3];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = (((icmp_ln324_reg_708_pp0_iter1_reg == 1'd0) & (fifo4_full_n == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((icmp_ln324_reg_708 == 1'd0) & (fifo3_grad_empty_n == 1'b0)) | ((icmp_ln324_reg_708 == 1'd0) & (fifo3_value_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((icmp_ln324_reg_708_pp0_iter1_reg == 1'd0) & (fifo4_full_n == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((icmp_ln324_reg_708 == 1'd0) & (fifo3_grad_empty_n == 1'b0)) | ((icmp_ln324_reg_708 == 1'd0) & (fifo3_value_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((icmp_ln324_reg_708_pp0_iter1_reg == 1'd0) & (fifo4_full_n == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (((icmp_ln324_reg_708 == 1'd0) & (fifo3_grad_empty_n == 1'b0)) | ((icmp_ln324_reg_708 == 1'd0) & (fifo3_value_empty_n == 1'b0)))));
end

always @ (*) begin
    ap_block_state1 = ((real_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_block_state3_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state4_pp0_stage0_iter1 = (((icmp_ln324_reg_708 == 1'd0) & (fifo3_grad_empty_n == 1'b0)) | ((icmp_ln324_reg_708 == 1'd0) & (fifo3_value_empty_n == 1'b0)));
end

always @ (*) begin
    ap_block_state5_pp0_stage0_iter2 = ((icmp_ln324_reg_708_pp0_iter1_reg == 1'd0) & (fifo4_full_n == 1'b0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_ready = internal_ap_ready;

assign fifo4_din = ((and_ln382_2_fu_638_p2[0:0] === 1'b1) ? select_ln374_fu_628_p3 : 8'd0);

assign icmp_ln323_fu_233_p2 = ((yi_0_i_reg_211 == 10'd512) ? 1'b1 : 1'b0);

assign icmp_ln324_fu_273_p2 = ((xi_0_i_reg_222 == 10'd512) ? 1'b1 : 1'b0);

assign icmp_ln353_fu_402_p2 = ((grad_nms_fu_148 == 2'd0) ? 1'b1 : 1'b0);

assign icmp_ln354_1_fu_414_p2 = ((value_nms_1_fu_136 < window_buf_1_2_val_fu_344_p4) ? 1'b1 : 1'b0);

assign icmp_ln354_fu_408_p2 = ((value_nms_1_fu_136 < value_nms_fu_132) ? 1'b1 : 1'b0);

assign icmp_ln360_fu_434_p2 = ((grad_nms_fu_148 == 2'd1) ? 1'b1 : 1'b0);

assign icmp_ln361_1_fu_446_p2 = ((value_nms_1_fu_136 < fifo3_value_dout) ? 1'b1 : 1'b0);

assign icmp_ln361_fu_440_p2 = ((value_nms_1_fu_136 < window_buf_0_1_val_fu_124) ? 1'b1 : 1'b0);

assign icmp_ln367_fu_466_p2 = ((grad_nms_fu_148 == 2'd2) ? 1'b1 : 1'b0);

assign icmp_ln368_1_fu_478_p2 = ((value_nms_1_fu_136 < window_buf_2_1_val_1_fu_144) ? 1'b1 : 1'b0);

assign icmp_ln368_fu_472_p2 = ((value_nms_1_fu_136 < window_buf_0_2_val_fu_334_p4) ? 1'b1 : 1'b0);

assign icmp_ln374_fu_498_p2 = ((grad_nms_fu_148 == 2'd3) ? 1'b1 : 1'b0);

assign icmp_ln375_fu_504_p2 = ((value_nms_1_fu_136 < window_buf_2_1_val_fu_140) ? 1'b1 : 1'b0);

assign icmp_ln382_1_fu_261_p2 = ((yi_0_i_reg_211 < 10'd509) ? 1'b1 : 1'b0);

assign icmp_ln382_2_fu_301_p2 = ((tmp_9_fu_291_p4 != 8'd0) ? 1'b1 : 1'b0);

assign icmp_ln382_3_fu_307_p2 = ((xi_0_i_reg_222 < 10'd509) ? 1'b1 : 1'b0);

assign icmp_ln382_fu_255_p2 = ((tmp_8_fu_245_p4 != 8'd0) ? 1'b1 : 1'b0);

assign line_buf_grad_address0 = zext_ln334_fu_285_p1;

assign line_buf_grad_d1 = {{fifo3_grad_dout}, {tmp_1_fu_383_p4}};

assign line_buf_value_address0 = zext_ln334_fu_285_p1;

assign line_buf_value_d1 = {{fifo3_value_dout}, {tmp_fu_364_p4}};

assign or_ln354_fu_420_p2 = (icmp_ln354_fu_408_p2 | icmp_ln354_1_fu_414_p2);

assign or_ln360_fu_510_p2 = (icmp_ln360_fu_434_p2 | icmp_ln353_fu_402_p2);

assign or_ln361_fu_452_p2 = (icmp_ln361_fu_440_p2 | icmp_ln361_1_fu_446_p2);

assign or_ln367_fu_564_p2 = (or_ln360_fu_510_p2 | icmp_ln367_fu_466_p2);

assign or_ln368_fu_484_p2 = (icmp_ln368_fu_472_p2 | icmp_ln368_1_fu_478_p2);

assign or_ln375_fu_617_p2 = (icmp_ln375_reg_749 | icmp_ln368_reg_744);

assign select_ln353_fu_536_p3 = ((icmp_ln353_fu_402_p2[0:0] === 1'b1) ? select_ln354_fu_426_p3 : select_ln367_fu_528_p3);

assign select_ln354_fu_426_p3 = ((or_ln354_fu_420_p2[0:0] === 1'b1) ? 8'd0 : value_nms_1_fu_136);

assign select_ln360_fu_556_p3 = ((and_ln360_fu_550_p2[0:0] === 1'b1) ? select_ln361_fu_458_p3 : select_ln353_fu_536_p3);

assign select_ln361_fu_458_p3 = ((or_ln361_fu_452_p2[0:0] === 1'b1) ? 8'd0 : value_nms_1_fu_136);

assign select_ln367_fu_528_p3 = ((and_ln367_fu_522_p2[0:0] === 1'b1) ? select_ln368_fu_490_p3 : value_nms_1_fu_136);

assign select_ln368_fu_490_p3 = ((or_ln368_fu_484_p2[0:0] === 1'b1) ? 8'd0 : value_nms_1_fu_136);

assign select_ln374_fu_628_p3 = ((and_ln374_reg_759[0:0] === 1'b1) ? select_ln375_fu_621_p3 : select_ln360_reg_754);

assign select_ln375_fu_621_p3 = ((or_ln375_fu_617_p2[0:0] === 1'b1) ? 8'd0 : window_buf_1_1_val_reg_739);

assign start_out = real_start;

assign tmp_1_fu_383_p4 = {{line_buf_grad_q0[5:2]}};

assign tmp_8_fu_245_p4 = {{yi_0_i_reg_211[9:2]}};

assign tmp_9_fu_291_p4 = {{xi_0_i_reg_222[9:2]}};

assign tmp_fu_364_p4 = {{line_buf_value_q0[23:8]}};

assign window_buf_0_2_val_fu_334_p4 = {{line_buf_value_q0[15:8]}};

assign window_buf_1_2_val_fu_344_p4 = {{line_buf_value_q0[23:16]}};

assign xi_fu_279_p2 = (xi_0_i_reg_222 + 10'd1);

assign xor_ln353_fu_544_p2 = (icmp_ln353_fu_402_p2 ^ 1'd1);

assign xor_ln360_fu_516_p2 = (or_ln360_fu_510_p2 ^ 1'd1);

assign xor_ln367_fu_570_p2 = (or_ln367_fu_564_p2 ^ 1'd1);

assign yi_fu_239_p2 = (yi_0_i_reg_211 + 10'd1);

assign zext_ln334_fu_285_p1 = xi_0_i_reg_222;

endmodule //NonMaxSuppression
