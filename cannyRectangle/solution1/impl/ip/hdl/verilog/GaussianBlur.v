// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module GaussianBlur (
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
        fifo1_dout,
        fifo1_empty_n,
        fifo1_read,
        fifo2_din,
        fifo2_full_n,
        fifo2_write
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_pp0_stage0 = 4'd4;
parameter    ap_ST_fsm_state7 = 4'd8;

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
input  [7:0] fifo1_dout;
input   fifo1_empty_n;
output   fifo1_read;
output  [7:0] fifo2_din;
input   fifo2_full_n;
output   fifo2_write;

reg ap_done;
reg ap_idle;
reg start_write;
reg fifo1_read;
reg fifo2_write;

reg    real_start;
reg    start_once_reg;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    internal_ap_ready;
reg    fifo1_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] icmp_ln151_reg_1302;
reg    fifo2_blk_n;
reg    ap_enable_reg_pp0_iter3;
reg   [0:0] icmp_ln151_reg_1302_pp0_iter2_reg;
reg   [10:0] xi_0_i_reg_238;
wire   [0:0] icmp_ln150_fu_249_p2;
wire    ap_CS_fsm_state2;
wire   [10:0] yi_fu_255_p2;
reg   [10:0] yi_reg_1297;
wire   [0:0] icmp_ln151_fu_261_p2;
wire    ap_block_state3_pp0_stage0_iter0;
reg    ap_block_state4_pp0_stage0_iter1;
wire    ap_block_state5_pp0_stage0_iter2;
reg    ap_block_state6_pp0_stage0_iter3;
reg    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln151_reg_1302_pp0_iter1_reg;
wire   [10:0] xi_fu_267_p2;
reg    ap_enable_reg_pp0_iter0;
reg   [10:0] line_buf_addr_reg_1311;
reg   [7:0] window_buf_1_1_6_reg_1317;
reg   [7:0] window_buf_1_2_1_reg_1322;
reg   [7:0] window_buf_2_2_1_reg_1328;
reg   [7:0] window_buf_3_2_1_reg_1334;
wire   [13:0] add_ln182_4_fu_511_p2;
reg   [13:0] add_ln182_4_reg_1340;
wire   [14:0] add_ln182_8_fu_791_p2;
reg   [14:0] add_ln182_8_reg_1345;
wire   [13:0] add_ln182_12_fu_807_p2;
reg   [13:0] add_ln182_12_reg_1350;
wire   [13:0] add_ln182_18_fu_843_p2;
reg   [13:0] add_ln182_18_reg_1355;
wire   [11:0] add_ln182_22_fu_879_p2;
reg   [11:0] add_ln182_22_reg_1360;
reg   [7:0] trunc_ln_reg_1365;
reg    ap_block_pp0_stage0_subdone;
reg    ap_enable_reg_pp0_iter2;
reg    ap_condition_pp0_exit_iter1_state4;
wire   [10:0] line_buf_address0;
reg    line_buf_ce0;
wire   [39:0] line_buf_q0;
reg    line_buf_ce1;
reg    line_buf_we1;
wire   [39:0] line_buf_d1;
reg   [10:0] yi_0_i_reg_227;
reg    ap_block_state1;
wire    ap_CS_fsm_state7;
wire   [63:0] zext_ln160_fu_273_p1;
reg   [7:0] window_buf_0_1_fu_114;
reg   [7:0] window_buf_0_1_5_fu_118;
reg   [7:0] window_buf_0_2_fu_122;
reg   [7:0] window_buf_0_3_fu_126;
wire   [7:0] window_buf_0_4_fu_338_p4;
reg   [7:0] window_buf_1_1_fu_130;
reg   [7:0] window_buf_1_1_5_fu_134;
reg   [7:0] window_buf_1_2_fu_138;
reg   [7:0] window_buf_1_3_fu_142;
wire   [7:0] window_buf_1_4_fu_348_p4;
reg   [7:0] window_buf_2_1_fu_146;
reg   [7:0] window_buf_2_1_5_fu_150;
reg   [7:0] window_buf_2_2_fu_154;
reg   [7:0] window_buf_2_3_fu_158;
wire   [7:0] window_buf_2_4_fu_358_p4;
reg   [7:0] window_buf_3_1_fu_162;
reg   [7:0] window_buf_3_1_1_fu_166;
reg   [7:0] window_buf_3_2_fu_170;
reg   [7:0] window_buf_3_3_fu_174;
wire   [7:0] window_buf_3_4_fu_368_p4;
reg   [7:0] window_buf_4_1_fu_178;
reg   [7:0] window_buf_4_1_1_fu_182;
reg   [7:0] window_buf_4_2_fu_186;
reg   [7:0] window_buf_4_3_fu_190;
reg    ap_block_pp0_stage0_01001;
wire   [31:0] tmp_fu_378_p4;
wire   [9:0] shl_ln_fu_401_p3;
wire   [10:0] zext_ln182_fu_397_p1;
wire   [10:0] zext_ln182_1_fu_409_p1;
wire   [10:0] add_ln182_fu_413_p2;
wire   [10:0] shl_ln182_1_fu_423_p3;
wire   [8:0] shl_ln182_2_fu_435_p3;
wire   [11:0] zext_ln182_3_fu_431_p1;
wire   [11:0] zext_ln182_4_fu_443_p1;
wire   [11:0] sub_ln182_fu_447_p2;
wire   [12:0] zext_ln182_2_fu_419_p1;
wire  signed [12:0] sext_ln182_fu_453_p1;
wire   [12:0] add_ln182_1_fu_457_p2;
wire   [9:0] shl_ln182_3_fu_467_p3;
wire   [9:0] shl_ln182_4_fu_483_p3;
wire   [13:0] zext_ln182_5_fu_475_p1;
wire  signed [13:0] sext_ln182_1_fu_463_p1;
wire   [10:0] zext_ln182_6_fu_479_p1;
wire   [10:0] zext_ln182_7_fu_491_p1;
wire   [10:0] add_ln182_3_fu_501_p2;
wire   [13:0] add_ln182_2_fu_495_p2;
wire   [13:0] zext_ln182_8_fu_507_p1;
wire   [11:0] shl_ln182_8_fu_517_p3;
wire   [9:0] shl_ln182_9_fu_529_p3;
wire   [10:0] shl_ln182_s_fu_541_p3;
wire   [8:0] shl_ln182_10_fu_553_p3;
wire   [11:0] zext_ln182_14_fu_549_p1;
wire   [11:0] zext_ln182_15_fu_561_p1;
wire   [11:0] sub_ln182_2_fu_565_p2;
wire   [12:0] shl_ln182_11_fu_575_p3;
wire   [10:0] shl_ln182_12_fu_587_p3;
wire   [13:0] zext_ln182_16_fu_583_p1;
wire   [13:0] zext_ln182_17_fu_595_p1;
wire   [13:0] sub_ln182_3_fu_599_p2;
wire   [12:0] shl_ln182_15_fu_609_p3;
wire   [10:0] shl_ln182_16_fu_621_p3;
wire   [13:0] zext_ln182_21_fu_617_p1;
wire   [13:0] zext_ln182_22_fu_629_p1;
wire   [13:0] sub_ln182_4_fu_633_p2;
wire   [10:0] shl_ln182_17_fu_643_p3;
wire   [8:0] shl_ln182_18_fu_655_p3;
wire   [11:0] zext_ln182_23_fu_651_p1;
wire   [11:0] zext_ln182_24_fu_663_p1;
wire   [11:0] sub_ln182_5_fu_667_p2;
wire   [9:0] shl_ln182_19_fu_677_p3;
wire   [11:0] shl_ln182_20_fu_689_p3;
wire   [11:0] shl_ln182_23_fu_701_p3;
wire   [9:0] shl_ln182_24_fu_713_p3;
wire   [9:0] shl_ln182_25_fu_729_p3;
wire   [10:0] shl_ln182_26_fu_741_p3;
wire   [8:0] shl_ln182_27_fu_753_p3;
wire   [11:0] zext_ln182_33_fu_749_p1;
wire   [11:0] zext_ln182_34_fu_761_p1;
wire   [11:0] sub_ln182_7_fu_765_p2;
wire   [9:0] shl_ln182_28_fu_775_p3;
wire  signed [14:0] sext_ln182_7_fu_639_p1;
wire  signed [14:0] sext_ln182_6_fu_605_p1;
wire  signed [12:0] sext_ln182_10_fu_771_p1;
wire  signed [12:0] sext_ln182_8_fu_673_p1;
wire   [12:0] add_ln182_11_fu_797_p2;
wire  signed [13:0] sext_ln182_5_fu_571_p1;
wire  signed [13:0] sext_ln182_12_fu_803_p1;
wire   [12:0] zext_ln182_26_fu_697_p1;
wire   [12:0] zext_ln182_12_fu_525_p1;
wire   [12:0] add_ln182_15_fu_813_p2;
wire   [10:0] zext_ln182_25_fu_685_p1;
wire   [10:0] zext_ln182_13_fu_537_p1;
wire   [10:0] add_ln182_16_fu_823_p2;
wire   [12:0] zext_ln182_29_fu_709_p1;
wire   [12:0] zext_ln182_38_fu_829_p1;
wire   [12:0] add_ln182_17_fu_833_p2;
wire   [13:0] zext_ln182_37_fu_819_p1;
wire   [13:0] zext_ln182_39_fu_839_p1;
wire   [10:0] zext_ln182_32_fu_737_p1;
wire   [10:0] zext_ln182_30_fu_721_p1;
wire   [10:0] add_ln182_19_fu_849_p2;
wire   [8:0] zext_ln182_36_fu_787_p1;
wire   [8:0] zext_ln182_31_fu_725_p1;
wire   [8:0] add_ln182_20_fu_859_p2;
wire   [10:0] zext_ln182_35_fu_783_p1;
wire   [10:0] zext_ln182_42_fu_865_p1;
wire   [10:0] add_ln182_21_fu_869_p2;
wire   [11:0] zext_ln182_41_fu_855_p1;
wire   [11:0] zext_ln182_43_fu_875_p1;
wire   [11:0] shl_ln182_5_fu_988_p3;
wire   [14:0] zext_ln182_9_fu_995_p1;
wire  signed [14:0] sext_ln182_2_fu_985_p1;
wire   [14:0] add_ln182_5_fu_999_p2;
wire   [12:0] shl_ln182_6_fu_1009_p3;
wire   [10:0] shl_ln182_7_fu_1020_p3;
wire   [13:0] zext_ln182_10_fu_1016_p1;
wire   [13:0] zext_ln182_11_fu_1027_p1;
wire   [13:0] sub_ln182_1_fu_1031_p2;
wire   [12:0] shl_ln182_13_fu_1041_p3;
wire   [9:0] shl_ln182_14_fu_1052_p3;
wire   [13:0] zext_ln182_19_fu_1059_p1;
wire   [13:0] zext_ln182_18_fu_1048_p1;
wire   [13:0] add_ln182_6_fu_1063_p2;
wire   [12:0] shl_ln182_21_fu_1073_p3;
wire   [10:0] shl_ln182_22_fu_1084_p3;
wire   [13:0] zext_ln182_27_fu_1080_p1;
wire   [13:0] zext_ln182_28_fu_1091_p1;
wire   [13:0] sub_ln182_6_fu_1095_p2;
wire  signed [15:0] sext_ln182_4_fu_1037_p1;
wire  signed [15:0] sext_ln182_3_fu_1005_p1;
wire   [15:0] add_ln182_7_fu_1105_p2;
wire  signed [15:0] sext_ln182_11_fu_1111_p1;
wire   [15:0] zext_ln182_20_fu_1069_p1;
wire  signed [15:0] sext_ln182_9_fu_1101_p1;
wire   [15:0] add_ln182_10_fu_1120_p2;
wire  signed [15:0] sext_ln182_13_fu_1126_p1;
wire   [15:0] add_ln182_9_fu_1114_p2;
wire   [15:0] add_ln182_13_fu_1129_p2;
wire   [14:0] zext_ln182_40_fu_1141_p1;
wire   [14:0] zext_ln182_44_fu_1144_p1;
wire   [14:0] add_ln182_23_fu_1147_p2;
wire   [15:0] add_ln182_14_fu_1135_p2;
wire   [15:0] zext_ln182_45_fu_1153_p1;
wire   [15:0] add_ln182_24_fu_1157_p2;
reg   [3:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
end

GaussianBlur_lineeOg #(
    .DataWidth( 40 ),
    .AddressRange( 1920 ),
    .AddressWidth( 11 ))
line_buf_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(line_buf_address0),
    .ce0(line_buf_ce0),
    .q0(line_buf_q0),
    .address1(line_buf_addr_reg_1311),
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
        end else if (((icmp_ln150_fu_249_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((icmp_ln151_fu_261_p2 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((icmp_ln150_fu_249_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
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
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter1_state4)) begin
                ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter0;
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end else if (((icmp_ln150_fu_249_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter3 <= 1'b0;
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
    if (((icmp_ln150_fu_249_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        xi_0_i_reg_238 <= 11'd0;
    end else if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln151_fu_261_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        xi_0_i_reg_238 <= xi_fu_267_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        yi_0_i_reg_227 <= yi_reg_1297;
    end else if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        yi_0_i_reg_227 <= 11'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln151_reg_1302 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln182_12_reg_1350[13 : 1] <= add_ln182_12_fu_807_p2[13 : 1];
        add_ln182_18_reg_1355[13 : 2] <= add_ln182_18_fu_843_p2[13 : 2];
        add_ln182_22_reg_1360 <= add_ln182_22_fu_879_p2;
        add_ln182_4_reg_1340 <= add_ln182_4_fu_511_p2;
        add_ln182_8_reg_1345[14 : 3] <= add_ln182_8_fu_791_p2[14 : 3];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln151_reg_1302 <= icmp_ln151_fu_261_p2;
        icmp_ln151_reg_1302_pp0_iter1_reg <= icmp_ln151_reg_1302;
        window_buf_1_1_6_reg_1317 <= window_buf_1_1_5_fu_134;
        window_buf_1_2_1_reg_1322 <= window_buf_1_2_fu_138;
        window_buf_2_2_1_reg_1328 <= window_buf_2_2_fu_154;
        window_buf_3_2_1_reg_1334 <= window_buf_3_2_fu_170;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        icmp_ln151_reg_1302_pp0_iter2_reg <= icmp_ln151_reg_1302_pp0_iter1_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln151_fu_261_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        line_buf_addr_reg_1311 <= zext_ln160_fu_273_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln151_reg_1302_pp0_iter1_reg == 1'd0))) begin
        trunc_ln_reg_1365 <= {{add_ln182_24_fu_1157_p2[15:8]}};
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln151_reg_1302 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        window_buf_0_1_5_fu_118 <= window_buf_0_2_fu_122;
        window_buf_0_1_fu_114 <= window_buf_0_1_5_fu_118;
        window_buf_0_2_fu_122 <= window_buf_0_3_fu_126;
        window_buf_0_3_fu_126 <= {{line_buf_q0[15:8]}};
        window_buf_1_1_5_fu_134 <= window_buf_1_2_fu_138;
        window_buf_1_1_fu_130 <= window_buf_1_1_5_fu_134;
        window_buf_1_2_fu_138 <= window_buf_1_3_fu_142;
        window_buf_1_3_fu_142 <= {{line_buf_q0[23:16]}};
        window_buf_2_1_5_fu_150 <= window_buf_2_2_fu_154;
        window_buf_2_1_fu_146 <= window_buf_2_1_5_fu_150;
        window_buf_2_2_fu_154 <= window_buf_2_3_fu_158;
        window_buf_2_3_fu_158 <= {{line_buf_q0[31:24]}};
        window_buf_3_1_1_fu_166 <= window_buf_3_2_fu_170;
        window_buf_3_1_fu_162 <= window_buf_3_1_1_fu_166;
        window_buf_3_2_fu_170 <= window_buf_3_3_fu_174;
        window_buf_3_3_fu_174 <= {{line_buf_q0[39:32]}};
        window_buf_4_1_1_fu_182 <= window_buf_4_2_fu_186;
        window_buf_4_1_fu_178 <= window_buf_4_1_1_fu_182;
        window_buf_4_2_fu_186 <= window_buf_4_3_fu_190;
        window_buf_4_3_fu_190 <= fifo1_dout;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        yi_reg_1297 <= yi_fu_255_p2;
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
    if (((icmp_ln150_fu_249_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln151_reg_1302 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        fifo1_blk_n = fifo1_empty_n;
    end else begin
        fifo1_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln151_reg_1302 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        fifo1_read = 1'b1;
    end else begin
        fifo1_read = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln151_reg_1302_pp0_iter2_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        fifo2_blk_n = fifo2_full_n;
    end else begin
        fifo2_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln151_reg_1302_pp0_iter2_reg == 1'd0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        fifo2_write = 1'b1;
    end else begin
        fifo2_write = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln150_fu_249_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln151_reg_1302 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
            if (((icmp_ln150_fu_249_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b0)) & ~((ap_enable_reg_pp0_iter3 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((ap_enable_reg_pp0_iter3 == 1'b1) & (ap_enable_reg_pp0_iter2 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln182_10_fu_1120_p2 = ($signed(zext_ln182_20_fu_1069_p1) + $signed(sext_ln182_9_fu_1101_p1));

assign add_ln182_11_fu_797_p2 = ($signed(sext_ln182_10_fu_771_p1) + $signed(sext_ln182_8_fu_673_p1));

assign add_ln182_12_fu_807_p2 = ($signed(sext_ln182_5_fu_571_p1) + $signed(sext_ln182_12_fu_803_p1));

assign add_ln182_13_fu_1129_p2 = ($signed(add_ln182_10_fu_1120_p2) + $signed(sext_ln182_13_fu_1126_p1));

assign add_ln182_14_fu_1135_p2 = (add_ln182_9_fu_1114_p2 + add_ln182_13_fu_1129_p2);

assign add_ln182_15_fu_813_p2 = (zext_ln182_26_fu_697_p1 + zext_ln182_12_fu_525_p1);

assign add_ln182_16_fu_823_p2 = (zext_ln182_25_fu_685_p1 + zext_ln182_13_fu_537_p1);

assign add_ln182_17_fu_833_p2 = (zext_ln182_29_fu_709_p1 + zext_ln182_38_fu_829_p1);

assign add_ln182_18_fu_843_p2 = (zext_ln182_37_fu_819_p1 + zext_ln182_39_fu_839_p1);

assign add_ln182_19_fu_849_p2 = (zext_ln182_32_fu_737_p1 + zext_ln182_30_fu_721_p1);

assign add_ln182_1_fu_457_p2 = ($signed(zext_ln182_2_fu_419_p1) + $signed(sext_ln182_fu_453_p1));

assign add_ln182_20_fu_859_p2 = (zext_ln182_36_fu_787_p1 + zext_ln182_31_fu_725_p1);

assign add_ln182_21_fu_869_p2 = (zext_ln182_35_fu_783_p1 + zext_ln182_42_fu_865_p1);

assign add_ln182_22_fu_879_p2 = (zext_ln182_41_fu_855_p1 + zext_ln182_43_fu_875_p1);

assign add_ln182_23_fu_1147_p2 = (zext_ln182_40_fu_1141_p1 + zext_ln182_44_fu_1144_p1);

assign add_ln182_24_fu_1157_p2 = (add_ln182_14_fu_1135_p2 + zext_ln182_45_fu_1153_p1);

assign add_ln182_2_fu_495_p2 = ($signed(zext_ln182_5_fu_475_p1) + $signed(sext_ln182_1_fu_463_p1));

assign add_ln182_3_fu_501_p2 = (zext_ln182_6_fu_479_p1 + zext_ln182_7_fu_491_p1);

assign add_ln182_4_fu_511_p2 = (add_ln182_2_fu_495_p2 + zext_ln182_8_fu_507_p1);

assign add_ln182_5_fu_999_p2 = ($signed(zext_ln182_9_fu_995_p1) + $signed(sext_ln182_2_fu_985_p1));

assign add_ln182_6_fu_1063_p2 = (zext_ln182_19_fu_1059_p1 + zext_ln182_18_fu_1048_p1);

assign add_ln182_7_fu_1105_p2 = ($signed(sext_ln182_4_fu_1037_p1) + $signed(sext_ln182_3_fu_1005_p1));

assign add_ln182_8_fu_791_p2 = ($signed(sext_ln182_7_fu_639_p1) + $signed(sext_ln182_6_fu_605_p1));

assign add_ln182_9_fu_1114_p2 = ($signed(add_ln182_7_fu_1105_p2) + $signed(sext_ln182_11_fu_1111_p1));

assign add_ln182_fu_413_p2 = (zext_ln182_fu_397_p1 + zext_ln182_1_fu_409_p1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd3];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = (((icmp_ln151_reg_1302_pp0_iter2_reg == 1'd0) & (fifo2_full_n == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((icmp_ln151_reg_1302 == 1'd0) & (fifo1_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((icmp_ln151_reg_1302_pp0_iter2_reg == 1'd0) & (fifo2_full_n == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((icmp_ln151_reg_1302 == 1'd0) & (fifo1_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((icmp_ln151_reg_1302_pp0_iter2_reg == 1'd0) & (fifo2_full_n == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((icmp_ln151_reg_1302 == 1'd0) & (fifo1_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)));
end

always @ (*) begin
    ap_block_state1 = ((real_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_block_state3_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state4_pp0_stage0_iter1 = ((icmp_ln151_reg_1302 == 1'd0) & (fifo1_empty_n == 1'b0));
end

assign ap_block_state5_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state6_pp0_stage0_iter3 = ((icmp_ln151_reg_1302_pp0_iter2_reg == 1'd0) & (fifo2_full_n == 1'b0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_ready = internal_ap_ready;

assign fifo2_din = trunc_ln_reg_1365;

assign icmp_ln150_fu_249_p2 = ((yi_0_i_reg_227 == 11'd1080) ? 1'b1 : 1'b0);

assign icmp_ln151_fu_261_p2 = ((xi_0_i_reg_238 == 11'd1920) ? 1'b1 : 1'b0);

assign line_buf_address0 = zext_ln160_fu_273_p1;

assign line_buf_d1 = {{fifo1_dout}, {tmp_fu_378_p4}};

assign sext_ln182_10_fu_771_p1 = $signed(sub_ln182_7_fu_765_p2);

assign sext_ln182_11_fu_1111_p1 = $signed(add_ln182_8_reg_1345);

assign sext_ln182_12_fu_803_p1 = $signed(add_ln182_11_fu_797_p2);

assign sext_ln182_13_fu_1126_p1 = $signed(add_ln182_12_reg_1350);

assign sext_ln182_1_fu_463_p1 = $signed(add_ln182_1_fu_457_p2);

assign sext_ln182_2_fu_985_p1 = $signed(add_ln182_4_reg_1340);

assign sext_ln182_3_fu_1005_p1 = $signed(add_ln182_5_fu_999_p2);

assign sext_ln182_4_fu_1037_p1 = $signed(sub_ln182_1_fu_1031_p2);

assign sext_ln182_5_fu_571_p1 = $signed(sub_ln182_2_fu_565_p2);

assign sext_ln182_6_fu_605_p1 = $signed(sub_ln182_3_fu_599_p2);

assign sext_ln182_7_fu_639_p1 = $signed(sub_ln182_4_fu_633_p2);

assign sext_ln182_8_fu_673_p1 = $signed(sub_ln182_5_fu_667_p2);

assign sext_ln182_9_fu_1101_p1 = $signed(sub_ln182_6_fu_1095_p2);

assign sext_ln182_fu_453_p1 = $signed(sub_ln182_fu_447_p2);

assign shl_ln182_10_fu_553_p3 = {{window_buf_2_1_fu_146}, {1'd0}};

assign shl_ln182_11_fu_575_p3 = {{window_buf_2_1_5_fu_150}, {5'd0}};

assign shl_ln182_12_fu_587_p3 = {{window_buf_2_1_5_fu_150}, {3'd0}};

assign shl_ln182_13_fu_1041_p3 = {{window_buf_2_2_1_reg_1328}, {5'd0}};

assign shl_ln182_14_fu_1052_p3 = {{window_buf_2_2_1_reg_1328}, {2'd0}};

assign shl_ln182_15_fu_609_p3 = {{window_buf_2_3_fu_158}, {5'd0}};

assign shl_ln182_16_fu_621_p3 = {{window_buf_2_3_fu_158}, {3'd0}};

assign shl_ln182_17_fu_643_p3 = {{window_buf_2_4_fu_358_p4}, {3'd0}};

assign shl_ln182_18_fu_655_p3 = {{window_buf_2_4_fu_358_p4}, {1'd0}};

assign shl_ln182_19_fu_677_p3 = {{window_buf_3_1_fu_162}, {2'd0}};

assign shl_ln182_1_fu_423_p3 = {{window_buf_0_2_fu_122}, {3'd0}};

assign shl_ln182_20_fu_689_p3 = {{window_buf_3_1_1_fu_166}, {4'd0}};

assign shl_ln182_21_fu_1073_p3 = {{window_buf_3_2_1_reg_1334}, {5'd0}};

assign shl_ln182_22_fu_1084_p3 = {{window_buf_3_2_1_reg_1334}, {3'd0}};

assign shl_ln182_23_fu_701_p3 = {{window_buf_3_3_fu_174}, {4'd0}};

assign shl_ln182_24_fu_713_p3 = {{window_buf_3_4_fu_368_p4}, {2'd0}};

assign shl_ln182_25_fu_729_p3 = {{window_buf_4_1_1_fu_182}, {2'd0}};

assign shl_ln182_26_fu_741_p3 = {{window_buf_4_2_fu_186}, {3'd0}};

assign shl_ln182_27_fu_753_p3 = {{window_buf_4_2_fu_186}, {1'd0}};

assign shl_ln182_28_fu_775_p3 = {{window_buf_4_3_fu_190}, {2'd0}};

assign shl_ln182_2_fu_435_p3 = {{window_buf_0_2_fu_122}, {1'd0}};

assign shl_ln182_3_fu_467_p3 = {{window_buf_0_3_fu_126}, {2'd0}};

assign shl_ln182_4_fu_483_p3 = {{window_buf_1_1_fu_130}, {2'd0}};

assign shl_ln182_5_fu_988_p3 = {{window_buf_1_1_6_reg_1317}, {4'd0}};

assign shl_ln182_6_fu_1009_p3 = {{window_buf_1_2_1_reg_1322}, {5'd0}};

assign shl_ln182_7_fu_1020_p3 = {{window_buf_1_2_1_reg_1322}, {3'd0}};

assign shl_ln182_8_fu_517_p3 = {{window_buf_1_3_fu_142}, {4'd0}};

assign shl_ln182_9_fu_529_p3 = {{window_buf_1_4_fu_348_p4}, {2'd0}};

assign shl_ln182_s_fu_541_p3 = {{window_buf_2_1_fu_146}, {3'd0}};

assign shl_ln_fu_401_p3 = {{window_buf_0_1_5_fu_118}, {2'd0}};

assign start_out = real_start;

assign sub_ln182_1_fu_1031_p2 = (zext_ln182_10_fu_1016_p1 - zext_ln182_11_fu_1027_p1);

assign sub_ln182_2_fu_565_p2 = (zext_ln182_14_fu_549_p1 - zext_ln182_15_fu_561_p1);

assign sub_ln182_3_fu_599_p2 = (zext_ln182_16_fu_583_p1 - zext_ln182_17_fu_595_p1);

assign sub_ln182_4_fu_633_p2 = (zext_ln182_21_fu_617_p1 - zext_ln182_22_fu_629_p1);

assign sub_ln182_5_fu_667_p2 = (zext_ln182_23_fu_651_p1 - zext_ln182_24_fu_663_p1);

assign sub_ln182_6_fu_1095_p2 = (zext_ln182_27_fu_1080_p1 - zext_ln182_28_fu_1091_p1);

assign sub_ln182_7_fu_765_p2 = (zext_ln182_33_fu_749_p1 - zext_ln182_34_fu_761_p1);

assign sub_ln182_fu_447_p2 = (zext_ln182_3_fu_431_p1 - zext_ln182_4_fu_443_p1);

assign tmp_fu_378_p4 = {{line_buf_q0[39:8]}};

assign window_buf_0_4_fu_338_p4 = {{line_buf_q0[15:8]}};

assign window_buf_1_4_fu_348_p4 = {{line_buf_q0[23:16]}};

assign window_buf_2_4_fu_358_p4 = {{line_buf_q0[31:24]}};

assign window_buf_3_4_fu_368_p4 = {{line_buf_q0[39:32]}};

assign xi_fu_267_p2 = (xi_0_i_reg_238 + 11'd1);

assign yi_fu_255_p2 = (yi_0_i_reg_227 + 11'd1);

assign zext_ln160_fu_273_p1 = xi_0_i_reg_238;

assign zext_ln182_10_fu_1016_p1 = shl_ln182_6_fu_1009_p3;

assign zext_ln182_11_fu_1027_p1 = shl_ln182_7_fu_1020_p3;

assign zext_ln182_12_fu_525_p1 = shl_ln182_8_fu_517_p3;

assign zext_ln182_13_fu_537_p1 = shl_ln182_9_fu_529_p3;

assign zext_ln182_14_fu_549_p1 = shl_ln182_s_fu_541_p3;

assign zext_ln182_15_fu_561_p1 = shl_ln182_10_fu_553_p3;

assign zext_ln182_16_fu_583_p1 = shl_ln182_11_fu_575_p3;

assign zext_ln182_17_fu_595_p1 = shl_ln182_12_fu_587_p3;

assign zext_ln182_18_fu_1048_p1 = shl_ln182_13_fu_1041_p3;

assign zext_ln182_19_fu_1059_p1 = shl_ln182_14_fu_1052_p3;

assign zext_ln182_1_fu_409_p1 = shl_ln_fu_401_p3;

assign zext_ln182_20_fu_1069_p1 = add_ln182_6_fu_1063_p2;

assign zext_ln182_21_fu_617_p1 = shl_ln182_15_fu_609_p3;

assign zext_ln182_22_fu_629_p1 = shl_ln182_16_fu_621_p3;

assign zext_ln182_23_fu_651_p1 = shl_ln182_17_fu_643_p3;

assign zext_ln182_24_fu_663_p1 = shl_ln182_18_fu_655_p3;

assign zext_ln182_25_fu_685_p1 = shl_ln182_19_fu_677_p3;

assign zext_ln182_26_fu_697_p1 = shl_ln182_20_fu_689_p3;

assign zext_ln182_27_fu_1080_p1 = shl_ln182_21_fu_1073_p3;

assign zext_ln182_28_fu_1091_p1 = shl_ln182_22_fu_1084_p3;

assign zext_ln182_29_fu_709_p1 = shl_ln182_23_fu_701_p3;

assign zext_ln182_2_fu_419_p1 = add_ln182_fu_413_p2;

assign zext_ln182_30_fu_721_p1 = shl_ln182_24_fu_713_p3;

assign zext_ln182_31_fu_725_p1 = window_buf_4_1_fu_178;

assign zext_ln182_32_fu_737_p1 = shl_ln182_25_fu_729_p3;

assign zext_ln182_33_fu_749_p1 = shl_ln182_26_fu_741_p3;

assign zext_ln182_34_fu_761_p1 = shl_ln182_27_fu_753_p3;

assign zext_ln182_35_fu_783_p1 = shl_ln182_28_fu_775_p3;

assign zext_ln182_36_fu_787_p1 = fifo1_dout;

assign zext_ln182_37_fu_819_p1 = add_ln182_15_fu_813_p2;

assign zext_ln182_38_fu_829_p1 = add_ln182_16_fu_823_p2;

assign zext_ln182_39_fu_839_p1 = add_ln182_17_fu_833_p2;

assign zext_ln182_3_fu_431_p1 = shl_ln182_1_fu_423_p3;

assign zext_ln182_40_fu_1141_p1 = add_ln182_18_reg_1355;

assign zext_ln182_41_fu_855_p1 = add_ln182_19_fu_849_p2;

assign zext_ln182_42_fu_865_p1 = add_ln182_20_fu_859_p2;

assign zext_ln182_43_fu_875_p1 = add_ln182_21_fu_869_p2;

assign zext_ln182_44_fu_1144_p1 = add_ln182_22_reg_1360;

assign zext_ln182_45_fu_1153_p1 = add_ln182_23_fu_1147_p2;

assign zext_ln182_4_fu_443_p1 = shl_ln182_2_fu_435_p3;

assign zext_ln182_5_fu_475_p1 = shl_ln182_3_fu_467_p3;

assign zext_ln182_6_fu_479_p1 = window_buf_0_4_fu_338_p4;

assign zext_ln182_7_fu_491_p1 = shl_ln182_4_fu_483_p3;

assign zext_ln182_8_fu_507_p1 = add_ln182_3_fu_501_p2;

assign zext_ln182_9_fu_995_p1 = shl_ln182_5_fu_988_p3;

assign zext_ln182_fu_397_p1 = window_buf_0_1_fu_114;

always @ (posedge ap_clk) begin
    add_ln182_8_reg_1345[2:0] <= 3'b000;
    add_ln182_12_reg_1350[0] <= 1'b0;
    add_ln182_18_reg_1355[1:0] <= 2'b00;
end

endmodule //GaussianBlur