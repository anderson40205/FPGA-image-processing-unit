// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module HystThresholdComp (
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
        fifo6_dout,
        fifo6_empty_n,
        fifo6_read,
        fifo7_din,
        fifo7_full_n,
        fifo7_write
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
input  [7:0] fifo6_dout;
input   fifo6_empty_n;
output   fifo6_read;
output  [7:0] fifo7_din;
input   fifo7_full_n;
output   fifo7_write;

reg ap_done;
reg ap_idle;
reg start_write;
reg fifo6_read;
reg fifo7_write;

reg    real_start;
reg    start_once_reg;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    internal_ap_ready;
reg    fifo6_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] icmp_ln432_reg_458;
reg    fifo7_blk_n;
reg    ap_enable_reg_pp0_iter2;
reg   [0:0] icmp_ln432_reg_458_pp0_iter1_reg;
reg   [10:0] xi_0_i_reg_156;
wire   [0:0] icmp_ln431_fu_167_p2;
wire    ap_CS_fsm_state2;
wire   [10:0] yi_fu_173_p2;
reg   [10:0] yi_reg_453;
wire   [0:0] icmp_ln432_fu_179_p2;
wire    ap_block_state3_pp0_stage0_iter0;
reg    ap_block_state4_pp0_stage0_iter1;
reg    ap_block_state5_pp0_stage0_iter2;
reg    ap_block_pp0_stage0_11001;
wire   [10:0] xi_fu_185_p2;
reg    ap_enable_reg_pp0_iter0;
reg   [10:0] line_buf_addr_reg_467;
wire   [0:0] icmp_ln460_fu_259_p2;
reg   [0:0] icmp_ln460_reg_473;
wire   [0:0] icmp_ln461_6_fu_325_p2;
reg   [0:0] icmp_ln461_6_reg_478;
wire   [0:0] icmp_ln461_7_fu_331_p2;
reg   [0:0] icmp_ln461_7_reg_483;
wire   [0:0] icmp_ln461_8_fu_337_p2;
reg   [0:0] icmp_ln461_8_reg_488;
wire   [0:0] or_ln460_4_fu_349_p2;
reg   [0:0] or_ln460_4_reg_493;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter1_state4;
wire   [10:0] line_buf_address0;
reg    line_buf_ce0;
wire   [23:0] line_buf_q0;
reg    line_buf_ce1;
reg    line_buf_we1;
wire   [23:0] line_buf_d1;
reg   [10:0] yi_0_i_reg_145;
reg    ap_block_state1;
wire    ap_CS_fsm_state6;
wire   [63:0] zext_ln441_fu_191_p1;
reg   [7:0] window_buf_0_1_fu_88;
reg   [7:0] window_buf_0_1_3_fu_92;
wire   [7:0] window_buf_0_2_fu_214_p4;
reg   [7:0] window_buf_1_1_fu_96;
reg   [7:0] window_buf_1_1_3_fu_100;
wire   [7:0] window_buf_1_2_fu_224_p4;
reg   [7:0] window_buf_2_1_fu_104;
reg   [7:0] window_buf_2_1_3_fu_108;
reg    ap_block_pp0_stage0_01001;
wire   [15:0] tmp_fu_234_p4;
wire   [0:0] icmp_ln461_fu_253_p2;
wire   [0:0] icmp_ln461_1_fu_265_p2;
wire   [0:0] icmp_ln461_2_fu_271_p2;
wire   [0:0] icmp_ln461_3_fu_277_p2;
wire   [0:0] or_ln460_1_fu_289_p2;
wire   [0:0] or_ln460_fu_283_p2;
wire   [0:0] or_ln460_2_fu_295_p2;
wire   [0:0] icmp_ln461_5_fu_313_p2;
wire   [0:0] icmp_ln461_4_fu_307_p2;
wire   [0:0] and_ln460_1_fu_319_p2;
wire   [0:0] or_ln460_3_fu_343_p2;
wire   [0:0] and_ln460_fu_301_p2;
wire   [0:0] or_ln460_5_fu_385_p2;
wire   [0:0] or_ln460_6_fu_389_p2;
wire   [0:0] and_ln460_2_fu_394_p2;
wire   [0:0] or_ln460_7_fu_399_p2;
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

Sobel_1920u_1080ufYi #(
    .DataWidth( 24 ),
    .AddressRange( 1920 ),
    .AddressWidth( 11 ))
line_buf_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(line_buf_address0),
    .ce0(line_buf_ce0),
    .q0(line_buf_q0),
    .address1(line_buf_addr_reg_467),
    .ce1(line_buf_ce1),
    .we1(line_buf_we1),
    .d1(line_buf_d1)
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
        end else if (((icmp_ln431_fu_167_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((icmp_ln432_fu_179_p2 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((icmp_ln431_fu_167_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
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
        end else if ((((icmp_ln431_fu_167_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)) | ((1'b1 == ap_condition_pp0_exit_iter1_state4) & (1'b0 == ap_block_pp0_stage0_subdone)))) begin
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
        end else if (((icmp_ln431_fu_167_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((icmp_ln431_fu_167_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        xi_0_i_reg_156 <= 11'd0;
    end else if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln432_fu_179_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        xi_0_i_reg_156 <= xi_fu_185_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        yi_0_i_reg_145 <= yi_reg_453;
    end else if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        yi_0_i_reg_145 <= 11'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln432_reg_458 <= icmp_ln432_fu_179_p2;
        icmp_ln432_reg_458_pp0_iter1_reg <= icmp_ln432_reg_458;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln432_reg_458 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln460_reg_473 <= icmp_ln460_fu_259_p2;
        icmp_ln461_6_reg_478 <= icmp_ln461_6_fu_325_p2;
        icmp_ln461_7_reg_483 <= icmp_ln461_7_fu_331_p2;
        icmp_ln461_8_reg_488 <= icmp_ln461_8_fu_337_p2;
        or_ln460_4_reg_493 <= or_ln460_4_fu_349_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln432_fu_179_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        line_buf_addr_reg_467 <= zext_ln441_fu_191_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln432_reg_458 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        window_buf_0_1_3_fu_92 <= {{line_buf_q0[15:8]}};
        window_buf_0_1_fu_88 <= window_buf_0_1_3_fu_92;
        window_buf_1_1_3_fu_100 <= {{line_buf_q0[23:16]}};
        window_buf_1_1_fu_96 <= window_buf_1_1_3_fu_100;
        window_buf_2_1_3_fu_108 <= fifo6_dout;
        window_buf_2_1_fu_104 <= window_buf_2_1_3_fu_108;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        yi_reg_453 <= yi_fu_173_p2;
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
    if (((icmp_ln431_fu_167_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((icmp_ln432_reg_458 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        fifo6_blk_n = fifo6_empty_n;
    end else begin
        fifo6_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln432_reg_458 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        fifo6_read = 1'b1;
    end else begin
        fifo6_read = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln432_reg_458_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        fifo7_blk_n = fifo7_full_n;
    end else begin
        fifo7_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln432_reg_458_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        fifo7_write = 1'b1;
    end else begin
        fifo7_write = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln431_fu_167_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        internal_ap_ready = 1'b1;
    end else begin
        internal_ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        line_buf_ce0 = 1'b1;
    end else begin
        line_buf_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        line_buf_ce1 = 1'b1;
    end else begin
        line_buf_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln432_reg_458 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        line_buf_we1 = 1'b1;
    end else begin
        line_buf_we1 = 1'b0;
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
            if (((icmp_ln431_fu_167_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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

assign and_ln460_1_fu_319_p2 = (icmp_ln461_5_fu_313_p2 & icmp_ln460_fu_259_p2);

assign and_ln460_2_fu_394_p2 = (or_ln460_6_fu_389_p2 & icmp_ln460_reg_473);

assign and_ln460_fu_301_p2 = (or_ln460_2_fu_295_p2 & icmp_ln460_fu_259_p2);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd3];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = (((icmp_ln432_reg_458_pp0_iter1_reg == 1'd0) & (fifo7_full_n == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((icmp_ln432_reg_458 == 1'd0) & (fifo6_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((icmp_ln432_reg_458_pp0_iter1_reg == 1'd0) & (fifo7_full_n == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((icmp_ln432_reg_458 == 1'd0) & (fifo6_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((icmp_ln432_reg_458_pp0_iter1_reg == 1'd0) & (fifo7_full_n == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((icmp_ln432_reg_458 == 1'd0) & (fifo6_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)));
end

always @ (*) begin
    ap_block_state1 = ((real_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_block_state3_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state4_pp0_stage0_iter1 = ((icmp_ln432_reg_458 == 1'd0) & (fifo6_empty_n == 1'b0));
end

always @ (*) begin
    ap_block_state5_pp0_stage0_iter2 = ((icmp_ln432_reg_458_pp0_iter1_reg == 1'd0) & (fifo7_full_n == 1'b0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_ready = internal_ap_ready;

assign fifo7_din = ((or_ln460_7_fu_399_p2[0:0] === 1'b1) ? 8'd255 : 8'd0);

assign icmp_ln431_fu_167_p2 = ((yi_0_i_reg_145 == 11'd1080) ? 1'b1 : 1'b0);

assign icmp_ln432_fu_179_p2 = ((xi_0_i_reg_156 == 11'd1920) ? 1'b1 : 1'b0);

assign icmp_ln460_fu_259_p2 = ((window_buf_1_1_3_fu_100 != 8'd0) ? 1'b1 : 1'b0);

assign icmp_ln461_1_fu_265_p2 = ((window_buf_0_1_3_fu_92 == 8'd255) ? 1'b1 : 1'b0);

assign icmp_ln461_2_fu_271_p2 = ((window_buf_0_2_fu_214_p4 == 8'd255) ? 1'b1 : 1'b0);

assign icmp_ln461_3_fu_277_p2 = ((window_buf_1_1_fu_96 == 8'd255) ? 1'b1 : 1'b0);

assign icmp_ln461_4_fu_307_p2 = ((window_buf_1_1_3_fu_100 == 8'd255) ? 1'b1 : 1'b0);

assign icmp_ln461_5_fu_313_p2 = ((window_buf_1_2_fu_224_p4 == 8'd255) ? 1'b1 : 1'b0);

assign icmp_ln461_6_fu_325_p2 = ((window_buf_2_1_fu_104 == 8'd255) ? 1'b1 : 1'b0);

assign icmp_ln461_7_fu_331_p2 = ((window_buf_2_1_3_fu_108 == 8'd255) ? 1'b1 : 1'b0);

assign icmp_ln461_8_fu_337_p2 = ((fifo6_dout == 8'd255) ? 1'b1 : 1'b0);

assign icmp_ln461_fu_253_p2 = ((window_buf_0_1_fu_88 == 8'd255) ? 1'b1 : 1'b0);

assign line_buf_address0 = zext_ln441_fu_191_p1;

assign line_buf_d1 = {{fifo6_dout}, {tmp_fu_234_p4}};

assign or_ln460_1_fu_289_p2 = (icmp_ln461_3_fu_277_p2 | icmp_ln461_2_fu_271_p2);

assign or_ln460_2_fu_295_p2 = (or_ln460_fu_283_p2 | or_ln460_1_fu_289_p2);

assign or_ln460_3_fu_343_p2 = (icmp_ln461_4_fu_307_p2 | and_ln460_1_fu_319_p2);

assign or_ln460_4_fu_349_p2 = (or_ln460_3_fu_343_p2 | and_ln460_fu_301_p2);

assign or_ln460_5_fu_385_p2 = (icmp_ln461_8_reg_488 | icmp_ln461_7_reg_483);

assign or_ln460_6_fu_389_p2 = (or_ln460_5_fu_385_p2 | icmp_ln461_6_reg_478);

assign or_ln460_7_fu_399_p2 = (or_ln460_4_reg_493 | and_ln460_2_fu_394_p2);

assign or_ln460_fu_283_p2 = (icmp_ln461_fu_253_p2 | icmp_ln461_1_fu_265_p2);

assign start_out = real_start;

assign tmp_fu_234_p4 = {{line_buf_q0[23:8]}};

assign window_buf_0_2_fu_214_p4 = {{line_buf_q0[15:8]}};

assign window_buf_1_2_fu_224_p4 = {{line_buf_q0[23:16]}};

assign xi_fu_185_p2 = (xi_0_i_reg_156 + 11'd1);

assign yi_fu_173_p2 = (yi_0_i_reg_145 + 11'd1);

assign zext_ln441_fu_191_p1 = xi_0_i_reg_156;

endmodule //HystThresholdComp
