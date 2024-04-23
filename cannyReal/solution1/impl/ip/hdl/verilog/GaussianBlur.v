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
reg   [0:0] icmp_ln151_reg_1292;
reg    fifo2_blk_n;
reg    ap_enable_reg_pp0_iter3;
reg   [0:0] icmp_ln151_reg_1292_pp0_iter2_reg;
reg   [9:0] xi_0_i_reg_234;
wire   [0:0] icmp_ln150_fu_245_p2;
wire    ap_CS_fsm_state2;
wire   [9:0] yi_fu_251_p2;
reg   [9:0] yi_reg_1287;
wire   [0:0] icmp_ln151_fu_257_p2;
wire    ap_block_state3_pp0_stage0_iter0;
reg    ap_block_state4_pp0_stage0_iter1;
wire    ap_block_state5_pp0_stage0_iter2;
reg    ap_block_state6_pp0_stage0_iter3;
reg    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln151_reg_1292_pp0_iter1_reg;
wire   [9:0] xi_fu_263_p2;
reg    ap_enable_reg_pp0_iter0;
reg   [8:0] line_buf_addr_reg_1301;
reg   [7:0] window_buf_1_1_6_reg_1307;
reg   [7:0] window_buf_1_2_1_reg_1312;
reg   [7:0] window_buf_2_1_6_reg_1318;
reg   [7:0] window_buf_2_2_1_reg_1325;
reg   [7:0] window_buf_2_3_1_reg_1331;
reg   [7:0] window_buf_3_2_1_reg_1337;
wire   [13:0] add_ln182_4_fu_504_p2;
reg   [13:0] add_ln182_4_reg_1343;
wire   [12:0] add_ln182_11_fu_682_p2;
reg   [12:0] add_ln182_11_reg_1348;
wire   [13:0] add_ln182_18_fu_718_p2;
reg   [13:0] add_ln182_18_reg_1353;
wire   [11:0] add_ln182_22_fu_754_p2;
reg   [11:0] add_ln182_22_reg_1358;
wire   [15:0] add_ln182_9_fu_1092_p2;
reg   [15:0] add_ln182_9_reg_1363;
wire   [15:0] add_ln182_13_fu_1117_p2;
reg   [15:0] add_ln182_13_reg_1368;
wire   [14:0] add_ln182_23_fu_1129_p2;
reg   [14:0] add_ln182_23_reg_1373;
reg    ap_block_pp0_stage0_subdone;
reg    ap_enable_reg_pp0_iter2;
reg    ap_condition_pp0_exit_iter1_state4;
wire   [8:0] line_buf_address0;
reg    line_buf_ce0;
wire   [39:0] line_buf_q0;
reg    line_buf_ce1;
reg    line_buf_we1;
wire   [39:0] line_buf_d1;
reg   [9:0] yi_0_i_reg_223;
reg    ap_block_state1;
wire    ap_CS_fsm_state7;
wire   [63:0] zext_ln160_fu_269_p1;
reg   [7:0] window_buf_0_1_fu_110;
reg   [7:0] window_buf_0_1_5_fu_114;
reg   [7:0] window_buf_0_2_fu_118;
reg   [7:0] window_buf_0_3_fu_122;
wire   [7:0] window_buf_0_4_fu_331_p4;
reg   [7:0] window_buf_1_1_fu_126;
reg   [7:0] window_buf_1_1_5_fu_130;
reg   [7:0] window_buf_1_2_fu_134;
reg   [7:0] window_buf_1_3_fu_138;
wire   [7:0] window_buf_1_4_fu_341_p4;
reg   [7:0] window_buf_2_1_fu_142;
reg   [7:0] window_buf_2_1_5_fu_146;
reg   [7:0] window_buf_2_2_fu_150;
reg   [7:0] window_buf_2_3_fu_154;
wire   [7:0] window_buf_2_4_fu_351_p4;
reg   [7:0] window_buf_3_1_fu_158;
reg   [7:0] window_buf_3_1_1_fu_162;
reg   [7:0] window_buf_3_2_fu_166;
reg   [7:0] window_buf_3_3_fu_170;
wire   [7:0] window_buf_3_4_fu_361_p4;
reg   [7:0] window_buf_4_1_fu_174;
reg   [7:0] window_buf_4_1_1_fu_178;
reg   [7:0] window_buf_4_2_fu_182;
reg   [7:0] window_buf_4_3_fu_186;
reg    ap_block_pp0_stage0_01001;
wire   [31:0] tmp_fu_371_p4;
wire   [9:0] shl_ln_fu_394_p3;
wire   [10:0] zext_ln182_fu_390_p1;
wire   [10:0] zext_ln182_1_fu_402_p1;
wire   [10:0] add_ln182_fu_406_p2;
wire   [10:0] shl_ln182_1_fu_416_p3;
wire   [8:0] shl_ln182_2_fu_428_p3;
wire   [11:0] zext_ln182_3_fu_424_p1;
wire   [11:0] zext_ln182_4_fu_436_p1;
wire   [11:0] sub_ln182_fu_440_p2;
wire   [12:0] zext_ln182_2_fu_412_p1;
wire  signed [12:0] sext_ln182_fu_446_p1;
wire   [12:0] add_ln182_1_fu_450_p2;
wire   [9:0] shl_ln182_3_fu_460_p3;
wire   [9:0] shl_ln182_4_fu_476_p3;
wire   [13:0] zext_ln182_5_fu_468_p1;
wire  signed [13:0] sext_ln182_1_fu_456_p1;
wire   [10:0] zext_ln182_6_fu_472_p1;
wire   [10:0] zext_ln182_7_fu_484_p1;
wire   [10:0] add_ln182_3_fu_494_p2;
wire   [13:0] add_ln182_2_fu_488_p2;
wire   [13:0] zext_ln182_8_fu_500_p1;
wire   [11:0] shl_ln182_8_fu_510_p3;
wire   [9:0] shl_ln182_9_fu_522_p3;
wire   [10:0] shl_ln182_17_fu_534_p3;
wire   [8:0] shl_ln182_18_fu_546_p3;
wire   [11:0] zext_ln182_23_fu_542_p1;
wire   [11:0] zext_ln182_24_fu_554_p1;
wire   [11:0] sub_ln182_5_fu_558_p2;
wire   [9:0] shl_ln182_19_fu_568_p3;
wire   [11:0] shl_ln182_20_fu_580_p3;
wire   [11:0] shl_ln182_23_fu_592_p3;
wire   [9:0] shl_ln182_24_fu_604_p3;
wire   [9:0] shl_ln182_25_fu_620_p3;
wire   [10:0] shl_ln182_26_fu_632_p3;
wire   [8:0] shl_ln182_27_fu_644_p3;
wire   [11:0] zext_ln182_33_fu_640_p1;
wire   [11:0] zext_ln182_34_fu_652_p1;
wire   [11:0] sub_ln182_7_fu_656_p2;
wire   [9:0] shl_ln182_28_fu_666_p3;
wire  signed [12:0] sext_ln182_10_fu_662_p1;
wire  signed [12:0] sext_ln182_8_fu_564_p1;
wire   [12:0] zext_ln182_26_fu_588_p1;
wire   [12:0] zext_ln182_12_fu_518_p1;
wire   [12:0] add_ln182_15_fu_688_p2;
wire   [10:0] zext_ln182_25_fu_576_p1;
wire   [10:0] zext_ln182_13_fu_530_p1;
wire   [10:0] add_ln182_16_fu_698_p2;
wire   [12:0] zext_ln182_29_fu_600_p1;
wire   [12:0] zext_ln182_38_fu_704_p1;
wire   [12:0] add_ln182_17_fu_708_p2;
wire   [13:0] zext_ln182_37_fu_694_p1;
wire   [13:0] zext_ln182_39_fu_714_p1;
wire   [10:0] zext_ln182_32_fu_628_p1;
wire   [10:0] zext_ln182_30_fu_612_p1;
wire   [10:0] add_ln182_19_fu_724_p2;
wire   [8:0] zext_ln182_36_fu_678_p1;
wire   [8:0] zext_ln182_31_fu_616_p1;
wire   [8:0] add_ln182_20_fu_734_p2;
wire   [10:0] zext_ln182_35_fu_674_p1;
wire   [10:0] zext_ln182_42_fu_740_p1;
wire   [10:0] add_ln182_21_fu_744_p2;
wire   [11:0] zext_ln182_41_fu_730_p1;
wire   [11:0] zext_ln182_43_fu_750_p1;
wire   [11:0] shl_ln182_5_fu_861_p3;
wire   [14:0] zext_ln182_9_fu_868_p1;
wire  signed [14:0] sext_ln182_2_fu_858_p1;
wire   [14:0] add_ln182_5_fu_872_p2;
wire   [12:0] shl_ln182_6_fu_882_p3;
wire   [10:0] shl_ln182_7_fu_893_p3;
wire   [13:0] zext_ln182_10_fu_889_p1;
wire   [13:0] zext_ln182_11_fu_900_p1;
wire   [13:0] sub_ln182_1_fu_904_p2;
wire   [10:0] shl_ln182_s_fu_914_p3;
wire   [8:0] shl_ln182_10_fu_926_p3;
wire   [11:0] zext_ln182_14_fu_922_p1;
wire   [11:0] zext_ln182_15_fu_934_p1;
wire   [11:0] sub_ln182_2_fu_938_p2;
wire   [12:0] shl_ln182_11_fu_948_p3;
wire   [10:0] shl_ln182_12_fu_959_p3;
wire   [13:0] zext_ln182_16_fu_955_p1;
wire   [13:0] zext_ln182_17_fu_966_p1;
wire   [13:0] sub_ln182_3_fu_970_p2;
wire   [12:0] shl_ln182_13_fu_980_p3;
wire   [9:0] shl_ln182_14_fu_991_p3;
wire   [13:0] zext_ln182_19_fu_998_p1;
wire   [13:0] zext_ln182_18_fu_987_p1;
wire   [13:0] add_ln182_6_fu_1002_p2;
wire   [12:0] shl_ln182_15_fu_1012_p3;
wire   [10:0] shl_ln182_16_fu_1023_p3;
wire   [13:0] zext_ln182_21_fu_1019_p1;
wire   [13:0] zext_ln182_22_fu_1030_p1;
wire   [13:0] sub_ln182_4_fu_1034_p2;
wire   [12:0] shl_ln182_21_fu_1044_p3;
wire   [10:0] shl_ln182_22_fu_1055_p3;
wire   [13:0] zext_ln182_27_fu_1051_p1;
wire   [13:0] zext_ln182_28_fu_1062_p1;
wire   [13:0] sub_ln182_6_fu_1066_p2;
wire  signed [15:0] sext_ln182_4_fu_910_p1;
wire  signed [15:0] sext_ln182_3_fu_878_p1;
wire  signed [14:0] sext_ln182_7_fu_1040_p1;
wire  signed [14:0] sext_ln182_6_fu_976_p1;
wire   [14:0] add_ln182_8_fu_1082_p2;
wire   [15:0] add_ln182_7_fu_1076_p2;
wire  signed [15:0] sext_ln182_11_fu_1088_p1;
wire   [15:0] zext_ln182_20_fu_1008_p1;
wire  signed [15:0] sext_ln182_9_fu_1072_p1;
wire  signed [13:0] sext_ln182_5_fu_944_p1;
wire  signed [13:0] sext_ln182_12_fu_1104_p1;
wire   [13:0] add_ln182_12_fu_1107_p2;
wire   [15:0] add_ln182_10_fu_1098_p2;
wire  signed [15:0] sext_ln182_13_fu_1113_p1;
wire   [14:0] zext_ln182_40_fu_1123_p1;
wire   [14:0] zext_ln182_44_fu_1126_p1;
wire   [15:0] add_ln182_14_fu_1139_p2;
wire   [15:0] zext_ln182_45_fu_1143_p1;
wire   [15:0] add_ln182_24_fu_1146_p2;
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
    .AddressRange( 512 ),
    .AddressWidth( 9 ))
line_buf_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(line_buf_address0),
    .ce0(line_buf_ce0),
    .q0(line_buf_q0),
    .address1(line_buf_addr_reg_1301),
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
        end else if (((icmp_ln150_fu_245_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((icmp_ln151_fu_257_p2 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((icmp_ln150_fu_245_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
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
        end else if (((icmp_ln150_fu_245_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((icmp_ln150_fu_245_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        xi_0_i_reg_234 <= 10'd0;
    end else if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln151_fu_257_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        xi_0_i_reg_234 <= xi_fu_263_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        yi_0_i_reg_223 <= yi_reg_1287;
    end else if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        yi_0_i_reg_223 <= 10'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln151_reg_1292 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln182_11_reg_1348[12 : 1] <= add_ln182_11_fu_682_p2[12 : 1];
        add_ln182_18_reg_1353[13 : 2] <= add_ln182_18_fu_718_p2[13 : 2];
        add_ln182_22_reg_1358 <= add_ln182_22_fu_754_p2;
        add_ln182_4_reg_1343 <= add_ln182_4_fu_504_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln151_reg_1292_pp0_iter1_reg == 1'd0))) begin
        add_ln182_13_reg_1368[15 : 1] <= add_ln182_13_fu_1117_p2[15 : 1];
        add_ln182_23_reg_1373 <= add_ln182_23_fu_1129_p2;
        add_ln182_9_reg_1363 <= add_ln182_9_fu_1092_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln151_reg_1292 <= icmp_ln151_fu_257_p2;
        icmp_ln151_reg_1292_pp0_iter1_reg <= icmp_ln151_reg_1292;
        window_buf_1_1_6_reg_1307 <= window_buf_1_1_5_fu_130;
        window_buf_1_2_1_reg_1312 <= window_buf_1_2_fu_134;
        window_buf_2_1_6_reg_1318 <= window_buf_2_1_5_fu_146;
        window_buf_2_2_1_reg_1325 <= window_buf_2_2_fu_150;
        window_buf_2_3_1_reg_1331 <= window_buf_2_3_fu_154;
        window_buf_3_2_1_reg_1337 <= window_buf_3_2_fu_166;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        icmp_ln151_reg_1292_pp0_iter2_reg <= icmp_ln151_reg_1292_pp0_iter1_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln151_fu_257_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        line_buf_addr_reg_1301 <= zext_ln160_fu_269_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln151_reg_1292 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        window_buf_0_1_5_fu_114 <= window_buf_0_2_fu_118;
        window_buf_0_1_fu_110 <= window_buf_0_1_5_fu_114;
        window_buf_0_2_fu_118 <= window_buf_0_3_fu_122;
        window_buf_0_3_fu_122 <= {{line_buf_q0[15:8]}};
        window_buf_1_1_5_fu_130 <= window_buf_1_2_fu_134;
        window_buf_1_1_fu_126 <= window_buf_1_1_5_fu_130;
        window_buf_1_2_fu_134 <= window_buf_1_3_fu_138;
        window_buf_1_3_fu_138 <= {{line_buf_q0[23:16]}};
        window_buf_2_1_5_fu_146 <= window_buf_2_2_fu_150;
        window_buf_2_2_fu_150 <= window_buf_2_3_fu_154;
        window_buf_2_3_fu_154 <= {{line_buf_q0[31:24]}};
        window_buf_3_1_1_fu_162 <= window_buf_3_2_fu_166;
        window_buf_3_1_fu_158 <= window_buf_3_1_1_fu_162;
        window_buf_3_2_fu_166 <= window_buf_3_3_fu_170;
        window_buf_3_3_fu_170 <= {{line_buf_q0[39:32]}};
        window_buf_4_1_1_fu_178 <= window_buf_4_2_fu_182;
        window_buf_4_1_fu_174 <= window_buf_4_1_1_fu_178;
        window_buf_4_2_fu_182 <= window_buf_4_3_fu_186;
        window_buf_4_3_fu_186 <= fifo1_dout;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln151_reg_1292_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        window_buf_2_1_fu_142 <= window_buf_2_1_6_reg_1318;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        yi_reg_1287 <= yi_fu_251_p2;
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
    if (((icmp_ln150_fu_245_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((icmp_ln151_reg_1292 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        fifo1_blk_n = fifo1_empty_n;
    end else begin
        fifo1_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln151_reg_1292 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        fifo1_read = 1'b1;
    end else begin
        fifo1_read = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln151_reg_1292_pp0_iter2_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        fifo2_blk_n = fifo2_full_n;
    end else begin
        fifo2_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln151_reg_1292_pp0_iter2_reg == 1'd0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        fifo2_write = 1'b1;
    end else begin
        fifo2_write = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln150_fu_245_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln151_reg_1292 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
            if (((icmp_ln150_fu_245_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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

assign add_ln182_10_fu_1098_p2 = ($signed(zext_ln182_20_fu_1008_p1) + $signed(sext_ln182_9_fu_1072_p1));

assign add_ln182_11_fu_682_p2 = ($signed(sext_ln182_10_fu_662_p1) + $signed(sext_ln182_8_fu_564_p1));

assign add_ln182_12_fu_1107_p2 = ($signed(sext_ln182_5_fu_944_p1) + $signed(sext_ln182_12_fu_1104_p1));

assign add_ln182_13_fu_1117_p2 = ($signed(add_ln182_10_fu_1098_p2) + $signed(sext_ln182_13_fu_1113_p1));

assign add_ln182_14_fu_1139_p2 = (add_ln182_9_reg_1363 + add_ln182_13_reg_1368);

assign add_ln182_15_fu_688_p2 = (zext_ln182_26_fu_588_p1 + zext_ln182_12_fu_518_p1);

assign add_ln182_16_fu_698_p2 = (zext_ln182_25_fu_576_p1 + zext_ln182_13_fu_530_p1);

assign add_ln182_17_fu_708_p2 = (zext_ln182_29_fu_600_p1 + zext_ln182_38_fu_704_p1);

assign add_ln182_18_fu_718_p2 = (zext_ln182_37_fu_694_p1 + zext_ln182_39_fu_714_p1);

assign add_ln182_19_fu_724_p2 = (zext_ln182_32_fu_628_p1 + zext_ln182_30_fu_612_p1);

assign add_ln182_1_fu_450_p2 = ($signed(zext_ln182_2_fu_412_p1) + $signed(sext_ln182_fu_446_p1));

assign add_ln182_20_fu_734_p2 = (zext_ln182_36_fu_678_p1 + zext_ln182_31_fu_616_p1);

assign add_ln182_21_fu_744_p2 = (zext_ln182_35_fu_674_p1 + zext_ln182_42_fu_740_p1);

assign add_ln182_22_fu_754_p2 = (zext_ln182_41_fu_730_p1 + zext_ln182_43_fu_750_p1);

assign add_ln182_23_fu_1129_p2 = (zext_ln182_40_fu_1123_p1 + zext_ln182_44_fu_1126_p1);

assign add_ln182_24_fu_1146_p2 = (add_ln182_14_fu_1139_p2 + zext_ln182_45_fu_1143_p1);

assign add_ln182_2_fu_488_p2 = ($signed(zext_ln182_5_fu_468_p1) + $signed(sext_ln182_1_fu_456_p1));

assign add_ln182_3_fu_494_p2 = (zext_ln182_6_fu_472_p1 + zext_ln182_7_fu_484_p1);

assign add_ln182_4_fu_504_p2 = (add_ln182_2_fu_488_p2 + zext_ln182_8_fu_500_p1);

assign add_ln182_5_fu_872_p2 = ($signed(zext_ln182_9_fu_868_p1) + $signed(sext_ln182_2_fu_858_p1));

assign add_ln182_6_fu_1002_p2 = (zext_ln182_19_fu_998_p1 + zext_ln182_18_fu_987_p1);

assign add_ln182_7_fu_1076_p2 = ($signed(sext_ln182_4_fu_910_p1) + $signed(sext_ln182_3_fu_878_p1));

assign add_ln182_8_fu_1082_p2 = ($signed(sext_ln182_7_fu_1040_p1) + $signed(sext_ln182_6_fu_976_p1));

assign add_ln182_9_fu_1092_p2 = ($signed(add_ln182_7_fu_1076_p2) + $signed(sext_ln182_11_fu_1088_p1));

assign add_ln182_fu_406_p2 = (zext_ln182_fu_390_p1 + zext_ln182_1_fu_402_p1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd3];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = (((icmp_ln151_reg_1292_pp0_iter2_reg == 1'd0) & (fifo2_full_n == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((icmp_ln151_reg_1292 == 1'd0) & (fifo1_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((icmp_ln151_reg_1292_pp0_iter2_reg == 1'd0) & (fifo2_full_n == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((icmp_ln151_reg_1292 == 1'd0) & (fifo1_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((icmp_ln151_reg_1292_pp0_iter2_reg == 1'd0) & (fifo2_full_n == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((icmp_ln151_reg_1292 == 1'd0) & (fifo1_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)));
end

always @ (*) begin
    ap_block_state1 = ((real_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_block_state3_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state4_pp0_stage0_iter1 = ((icmp_ln151_reg_1292 == 1'd0) & (fifo1_empty_n == 1'b0));
end

assign ap_block_state5_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state6_pp0_stage0_iter3 = ((icmp_ln151_reg_1292_pp0_iter2_reg == 1'd0) & (fifo2_full_n == 1'b0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_ready = internal_ap_ready;

assign fifo2_din = {{add_ln182_24_fu_1146_p2[15:8]}};

assign icmp_ln150_fu_245_p2 = ((yi_0_i_reg_223 == 10'd512) ? 1'b1 : 1'b0);

assign icmp_ln151_fu_257_p2 = ((xi_0_i_reg_234 == 10'd512) ? 1'b1 : 1'b0);

assign line_buf_address0 = zext_ln160_fu_269_p1;

assign line_buf_d1 = {{fifo1_dout}, {tmp_fu_371_p4}};

assign sext_ln182_10_fu_662_p1 = $signed(sub_ln182_7_fu_656_p2);

assign sext_ln182_11_fu_1088_p1 = $signed(add_ln182_8_fu_1082_p2);

assign sext_ln182_12_fu_1104_p1 = $signed(add_ln182_11_reg_1348);

assign sext_ln182_13_fu_1113_p1 = $signed(add_ln182_12_fu_1107_p2);

assign sext_ln182_1_fu_456_p1 = $signed(add_ln182_1_fu_450_p2);

assign sext_ln182_2_fu_858_p1 = $signed(add_ln182_4_reg_1343);

assign sext_ln182_3_fu_878_p1 = $signed(add_ln182_5_fu_872_p2);

assign sext_ln182_4_fu_910_p1 = $signed(sub_ln182_1_fu_904_p2);

assign sext_ln182_5_fu_944_p1 = $signed(sub_ln182_2_fu_938_p2);

assign sext_ln182_6_fu_976_p1 = $signed(sub_ln182_3_fu_970_p2);

assign sext_ln182_7_fu_1040_p1 = $signed(sub_ln182_4_fu_1034_p2);

assign sext_ln182_8_fu_564_p1 = $signed(sub_ln182_5_fu_558_p2);

assign sext_ln182_9_fu_1072_p1 = $signed(sub_ln182_6_fu_1066_p2);

assign sext_ln182_fu_446_p1 = $signed(sub_ln182_fu_440_p2);

assign shl_ln182_10_fu_926_p3 = {{window_buf_2_1_fu_142}, {1'd0}};

assign shl_ln182_11_fu_948_p3 = {{window_buf_2_1_6_reg_1318}, {5'd0}};

assign shl_ln182_12_fu_959_p3 = {{window_buf_2_1_6_reg_1318}, {3'd0}};

assign shl_ln182_13_fu_980_p3 = {{window_buf_2_2_1_reg_1325}, {5'd0}};

assign shl_ln182_14_fu_991_p3 = {{window_buf_2_2_1_reg_1325}, {2'd0}};

assign shl_ln182_15_fu_1012_p3 = {{window_buf_2_3_1_reg_1331}, {5'd0}};

assign shl_ln182_16_fu_1023_p3 = {{window_buf_2_3_1_reg_1331}, {3'd0}};

assign shl_ln182_17_fu_534_p3 = {{window_buf_2_4_fu_351_p4}, {3'd0}};

assign shl_ln182_18_fu_546_p3 = {{window_buf_2_4_fu_351_p4}, {1'd0}};

assign shl_ln182_19_fu_568_p3 = {{window_buf_3_1_fu_158}, {2'd0}};

assign shl_ln182_1_fu_416_p3 = {{window_buf_0_2_fu_118}, {3'd0}};

assign shl_ln182_20_fu_580_p3 = {{window_buf_3_1_1_fu_162}, {4'd0}};

assign shl_ln182_21_fu_1044_p3 = {{window_buf_3_2_1_reg_1337}, {5'd0}};

assign shl_ln182_22_fu_1055_p3 = {{window_buf_3_2_1_reg_1337}, {3'd0}};

assign shl_ln182_23_fu_592_p3 = {{window_buf_3_3_fu_170}, {4'd0}};

assign shl_ln182_24_fu_604_p3 = {{window_buf_3_4_fu_361_p4}, {2'd0}};

assign shl_ln182_25_fu_620_p3 = {{window_buf_4_1_1_fu_178}, {2'd0}};

assign shl_ln182_26_fu_632_p3 = {{window_buf_4_2_fu_182}, {3'd0}};

assign shl_ln182_27_fu_644_p3 = {{window_buf_4_2_fu_182}, {1'd0}};

assign shl_ln182_28_fu_666_p3 = {{window_buf_4_3_fu_186}, {2'd0}};

assign shl_ln182_2_fu_428_p3 = {{window_buf_0_2_fu_118}, {1'd0}};

assign shl_ln182_3_fu_460_p3 = {{window_buf_0_3_fu_122}, {2'd0}};

assign shl_ln182_4_fu_476_p3 = {{window_buf_1_1_fu_126}, {2'd0}};

assign shl_ln182_5_fu_861_p3 = {{window_buf_1_1_6_reg_1307}, {4'd0}};

assign shl_ln182_6_fu_882_p3 = {{window_buf_1_2_1_reg_1312}, {5'd0}};

assign shl_ln182_7_fu_893_p3 = {{window_buf_1_2_1_reg_1312}, {3'd0}};

assign shl_ln182_8_fu_510_p3 = {{window_buf_1_3_fu_138}, {4'd0}};

assign shl_ln182_9_fu_522_p3 = {{window_buf_1_4_fu_341_p4}, {2'd0}};

assign shl_ln182_s_fu_914_p3 = {{window_buf_2_1_fu_142}, {3'd0}};

assign shl_ln_fu_394_p3 = {{window_buf_0_1_5_fu_114}, {2'd0}};

assign start_out = real_start;

assign sub_ln182_1_fu_904_p2 = (zext_ln182_10_fu_889_p1 - zext_ln182_11_fu_900_p1);

assign sub_ln182_2_fu_938_p2 = (zext_ln182_14_fu_922_p1 - zext_ln182_15_fu_934_p1);

assign sub_ln182_3_fu_970_p2 = (zext_ln182_16_fu_955_p1 - zext_ln182_17_fu_966_p1);

assign sub_ln182_4_fu_1034_p2 = (zext_ln182_21_fu_1019_p1 - zext_ln182_22_fu_1030_p1);

assign sub_ln182_5_fu_558_p2 = (zext_ln182_23_fu_542_p1 - zext_ln182_24_fu_554_p1);

assign sub_ln182_6_fu_1066_p2 = (zext_ln182_27_fu_1051_p1 - zext_ln182_28_fu_1062_p1);

assign sub_ln182_7_fu_656_p2 = (zext_ln182_33_fu_640_p1 - zext_ln182_34_fu_652_p1);

assign sub_ln182_fu_440_p2 = (zext_ln182_3_fu_424_p1 - zext_ln182_4_fu_436_p1);

assign tmp_fu_371_p4 = {{line_buf_q0[39:8]}};

assign window_buf_0_4_fu_331_p4 = {{line_buf_q0[15:8]}};

assign window_buf_1_4_fu_341_p4 = {{line_buf_q0[23:16]}};

assign window_buf_2_4_fu_351_p4 = {{line_buf_q0[31:24]}};

assign window_buf_3_4_fu_361_p4 = {{line_buf_q0[39:32]}};

assign xi_fu_263_p2 = (xi_0_i_reg_234 + 10'd1);

assign yi_fu_251_p2 = (yi_0_i_reg_223 + 10'd1);

assign zext_ln160_fu_269_p1 = xi_0_i_reg_234;

assign zext_ln182_10_fu_889_p1 = shl_ln182_6_fu_882_p3;

assign zext_ln182_11_fu_900_p1 = shl_ln182_7_fu_893_p3;

assign zext_ln182_12_fu_518_p1 = shl_ln182_8_fu_510_p3;

assign zext_ln182_13_fu_530_p1 = shl_ln182_9_fu_522_p3;

assign zext_ln182_14_fu_922_p1 = shl_ln182_s_fu_914_p3;

assign zext_ln182_15_fu_934_p1 = shl_ln182_10_fu_926_p3;

assign zext_ln182_16_fu_955_p1 = shl_ln182_11_fu_948_p3;

assign zext_ln182_17_fu_966_p1 = shl_ln182_12_fu_959_p3;

assign zext_ln182_18_fu_987_p1 = shl_ln182_13_fu_980_p3;

assign zext_ln182_19_fu_998_p1 = shl_ln182_14_fu_991_p3;

assign zext_ln182_1_fu_402_p1 = shl_ln_fu_394_p3;

assign zext_ln182_20_fu_1008_p1 = add_ln182_6_fu_1002_p2;

assign zext_ln182_21_fu_1019_p1 = shl_ln182_15_fu_1012_p3;

assign zext_ln182_22_fu_1030_p1 = shl_ln182_16_fu_1023_p3;

assign zext_ln182_23_fu_542_p1 = shl_ln182_17_fu_534_p3;

assign zext_ln182_24_fu_554_p1 = shl_ln182_18_fu_546_p3;

assign zext_ln182_25_fu_576_p1 = shl_ln182_19_fu_568_p3;

assign zext_ln182_26_fu_588_p1 = shl_ln182_20_fu_580_p3;

assign zext_ln182_27_fu_1051_p1 = shl_ln182_21_fu_1044_p3;

assign zext_ln182_28_fu_1062_p1 = shl_ln182_22_fu_1055_p3;

assign zext_ln182_29_fu_600_p1 = shl_ln182_23_fu_592_p3;

assign zext_ln182_2_fu_412_p1 = add_ln182_fu_406_p2;

assign zext_ln182_30_fu_612_p1 = shl_ln182_24_fu_604_p3;

assign zext_ln182_31_fu_616_p1 = window_buf_4_1_fu_174;

assign zext_ln182_32_fu_628_p1 = shl_ln182_25_fu_620_p3;

assign zext_ln182_33_fu_640_p1 = shl_ln182_26_fu_632_p3;

assign zext_ln182_34_fu_652_p1 = shl_ln182_27_fu_644_p3;

assign zext_ln182_35_fu_674_p1 = shl_ln182_28_fu_666_p3;

assign zext_ln182_36_fu_678_p1 = fifo1_dout;

assign zext_ln182_37_fu_694_p1 = add_ln182_15_fu_688_p2;

assign zext_ln182_38_fu_704_p1 = add_ln182_16_fu_698_p2;

assign zext_ln182_39_fu_714_p1 = add_ln182_17_fu_708_p2;

assign zext_ln182_3_fu_424_p1 = shl_ln182_1_fu_416_p3;

assign zext_ln182_40_fu_1123_p1 = add_ln182_18_reg_1353;

assign zext_ln182_41_fu_730_p1 = add_ln182_19_fu_724_p2;

assign zext_ln182_42_fu_740_p1 = add_ln182_20_fu_734_p2;

assign zext_ln182_43_fu_750_p1 = add_ln182_21_fu_744_p2;

assign zext_ln182_44_fu_1126_p1 = add_ln182_22_reg_1358;

assign zext_ln182_45_fu_1143_p1 = add_ln182_23_reg_1373;

assign zext_ln182_4_fu_436_p1 = shl_ln182_2_fu_428_p3;

assign zext_ln182_5_fu_468_p1 = shl_ln182_3_fu_460_p3;

assign zext_ln182_6_fu_472_p1 = window_buf_0_4_fu_331_p4;

assign zext_ln182_7_fu_484_p1 = shl_ln182_4_fu_476_p3;

assign zext_ln182_8_fu_500_p1 = add_ln182_3_fu_494_p2;

assign zext_ln182_9_fu_868_p1 = shl_ln182_5_fu_861_p3;

assign zext_ln182_fu_390_p1 = window_buf_0_1_fu_110;

always @ (posedge ap_clk) begin
    add_ln182_11_reg_1348[0] <= 1'b0;
    add_ln182_18_reg_1353[1:0] <= 2'b00;
    add_ln182_13_reg_1368[0] <= 1'b0;
end

endmodule //GaussianBlur