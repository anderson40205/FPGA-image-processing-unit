// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module ZeroPadding (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        fifo4_dout,
        fifo4_empty_n,
        fifo4_read,
        fifo5_din,
        fifo5_full_n,
        fifo5_write
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_pp0_stage0 = 4'd4;
parameter    ap_ST_fsm_state5 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [7:0] fifo4_dout;
input   fifo4_empty_n;
output   fifo4_read;
output  [7:0] fifo5_din;
input   fifo5_full_n;
output   fifo5_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg fifo4_read;
reg fifo5_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    fifo4_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] icmp_ln478_reg_197;
reg    fifo5_blk_n;
reg   [10:0] xi_0_i_reg_100;
wire   [0:0] icmp_ln477_fu_111_p2;
wire    ap_CS_fsm_state2;
wire   [10:0] yi_fu_117_p2;
reg   [10:0] yi_reg_187;
wire   [0:0] and_ln484_1_fu_135_p2;
reg   [0:0] and_ln484_1_reg_192;
wire   [0:0] icmp_ln478_fu_141_p2;
wire    ap_block_state3_pp0_stage0_iter0;
reg    ap_block_state4_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_11001;
wire   [10:0] xi_fu_147_p2;
reg    ap_enable_reg_pp0_iter0;
wire   [0:0] icmp_ln484_2_fu_153_p2;
reg   [0:0] icmp_ln484_2_reg_206;
wire   [0:0] icmp_ln484_3_fu_159_p2;
reg   [0:0] icmp_ln484_3_reg_211;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state3;
reg   [10:0] yi_0_i_reg_89;
reg    ap_block_state1;
wire    ap_CS_fsm_state5;
reg    ap_block_pp0_stage0_01001;
wire   [0:0] icmp_ln484_fu_123_p2;
wire   [0:0] icmp_ln484_1_fu_129_p2;
wire   [0:0] and_ln484_fu_165_p2;
wire   [0:0] and_ln484_2_fu_169_p2;
reg   [3:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
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
        end else if (((icmp_ln477_fu_111_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
        end else if (((icmp_ln477_fu_111_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_pp0_exit_iter0_state3))) begin
            ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state3);
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if (((icmp_ln477_fu_111_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln477_fu_111_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        xi_0_i_reg_100 <= 11'd0;
    end else if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln478_fu_141_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        xi_0_i_reg_100 <= xi_fu_147_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        yi_0_i_reg_89 <= yi_reg_187;
    end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        yi_0_i_reg_89 <= 11'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln477_fu_111_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        and_ln484_1_reg_192 <= and_ln484_1_fu_135_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln478_reg_197 <= icmp_ln478_fu_141_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln478_fu_141_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln484_2_reg_206 <= icmp_ln484_2_fu_153_p2;
        icmp_ln484_3_reg_211 <= icmp_ln484_3_fu_159_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        yi_reg_187 <= yi_fu_117_p2;
    end
end

always @ (*) begin
    if ((icmp_ln478_fu_141_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state3 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state3 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln477_fu_111_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln477_fu_111_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln478_reg_197 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        fifo4_blk_n = fifo4_empty_n;
    end else begin
        fifo4_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln478_reg_197 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        fifo4_read = 1'b1;
    end else begin
        fifo4_read = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln478_reg_197 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        fifo5_blk_n = fifo5_full_n;
    end else begin
        fifo5_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln478_reg_197 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        fifo5_write = 1'b1;
    end else begin
        fifo5_write = 1'b0;
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
            if (((icmp_ln477_fu_111_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if (~((1'b0 == ap_block_pp0_stage0_subdone) & (icmp_ln478_fu_141_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (icmp_ln478_fu_141_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign and_ln484_1_fu_135_p2 = (icmp_ln484_fu_123_p2 & icmp_ln484_1_fu_129_p2);

assign and_ln484_2_fu_169_p2 = (and_ln484_fu_165_p2 & and_ln484_1_reg_192);

assign and_ln484_fu_165_p2 = (icmp_ln484_3_reg_211 & icmp_ln484_2_reg_206);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd3];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (((icmp_ln478_reg_197 == 1'd0) & (fifo5_full_n == 1'b0)) | ((icmp_ln478_reg_197 == 1'd0) & (fifo4_empty_n == 1'b0))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (((icmp_ln478_reg_197 == 1'd0) & (fifo5_full_n == 1'b0)) | ((icmp_ln478_reg_197 == 1'd0) & (fifo4_empty_n == 1'b0))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_enable_reg_pp0_iter1 == 1'b1) & (((icmp_ln478_reg_197 == 1'd0) & (fifo5_full_n == 1'b0)) | ((icmp_ln478_reg_197 == 1'd0) & (fifo4_empty_n == 1'b0))));
end

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_block_state3_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state4_pp0_stage0_iter1 = (((icmp_ln478_reg_197 == 1'd0) & (fifo5_full_n == 1'b0)) | ((icmp_ln478_reg_197 == 1'd0) & (fifo4_empty_n == 1'b0)));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign fifo5_din = ((and_ln484_2_fu_169_p2[0:0] === 1'b1) ? fifo4_dout : 8'd0);

assign icmp_ln477_fu_111_p2 = ((yi_0_i_reg_89 == 11'd1080) ? 1'b1 : 1'b0);

assign icmp_ln478_fu_141_p2 = ((xi_0_i_reg_100 == 11'd1920) ? 1'b1 : 1'b0);

assign icmp_ln484_1_fu_129_p2 = ((yi_0_i_reg_89 < 11'd1075) ? 1'b1 : 1'b0);

assign icmp_ln484_2_fu_153_p2 = ((xi_0_i_reg_100 > 11'd5) ? 1'b1 : 1'b0);

assign icmp_ln484_3_fu_159_p2 = ((xi_0_i_reg_100 < 11'd1915) ? 1'b1 : 1'b0);

assign icmp_ln484_fu_123_p2 = ((yi_0_i_reg_89 > 11'd5) ? 1'b1 : 1'b0);

assign xi_fu_147_p2 = (xi_0_i_reg_100 + 11'd1);

assign yi_fu_117_p2 = (yi_0_i_reg_89 + 11'd1);

endmodule //ZeroPadding
