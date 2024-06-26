// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module canny_edge_rectangle_2 (
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
        bh_dout,
        bh_empty_n,
        bh_read,
        bl_dout,
        bl_empty_n,
        bl_read,
        bh_out_din,
        bh_out_full_n,
        bh_out_write,
        bh_out1_din,
        bh_out1_full_n,
        bh_out1_write,
        bl_out_din,
        bl_out_full_n,
        bl_out_write,
        bl_out2_din,
        bl_out2_full_n,
        bl_out2_write
);

parameter    ap_ST_fsm_state1 = 1'd1;

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
input  [7:0] bh_dout;
input   bh_empty_n;
output   bh_read;
input  [7:0] bl_dout;
input   bl_empty_n;
output   bl_read;
output  [7:0] bh_out_din;
input   bh_out_full_n;
output   bh_out_write;
output  [7:0] bh_out1_din;
input   bh_out1_full_n;
output   bh_out1_write;
output  [7:0] bl_out_din;
input   bl_out_full_n;
output   bl_out_write;
output  [7:0] bl_out2_din;
input   bl_out2_full_n;
output   bl_out2_write;

reg ap_done;
reg ap_idle;
reg start_write;
reg bh_read;
reg bl_read;
reg bh_out_write;
reg bh_out1_write;
reg bl_out_write;
reg bl_out2_write;

reg    real_start;
reg    start_once_reg;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    internal_ap_ready;
reg    bh_blk_n;
reg    bl_blk_n;
reg    bh_out_blk_n;
reg    bh_out1_blk_n;
reg    bl_out_blk_n;
reg    bl_out2_blk_n;
reg    ap_block_state1;
reg   [0:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 1'd1;
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
        end else if ((~((real_start == 1'b0) | (bl_out2_full_n == 1'b0) | (bl_out_full_n == 1'b0) | (bh_out1_full_n == 1'b0) | (bh_out_full_n == 1'b0) | (bl_empty_n == 1'b0) | (bh_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_done_reg <= 1'b1;
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

always @ (*) begin
    if ((~((real_start == 1'b0) | (bl_out2_full_n == 1'b0) | (bl_out_full_n == 1'b0) | (bh_out1_full_n == 1'b0) | (bh_out_full_n == 1'b0) | (bl_empty_n == 1'b0) | (bh_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
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
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        bh_blk_n = bh_empty_n;
    end else begin
        bh_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        bh_out1_blk_n = bh_out1_full_n;
    end else begin
        bh_out1_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (bl_out2_full_n == 1'b0) | (bl_out_full_n == 1'b0) | (bh_out1_full_n == 1'b0) | (bh_out_full_n == 1'b0) | (bl_empty_n == 1'b0) | (bh_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        bh_out1_write = 1'b1;
    end else begin
        bh_out1_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        bh_out_blk_n = bh_out_full_n;
    end else begin
        bh_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (bl_out2_full_n == 1'b0) | (bl_out_full_n == 1'b0) | (bh_out1_full_n == 1'b0) | (bh_out_full_n == 1'b0) | (bl_empty_n == 1'b0) | (bh_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        bh_out_write = 1'b1;
    end else begin
        bh_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (bl_out2_full_n == 1'b0) | (bl_out_full_n == 1'b0) | (bh_out1_full_n == 1'b0) | (bh_out_full_n == 1'b0) | (bl_empty_n == 1'b0) | (bh_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        bh_read = 1'b1;
    end else begin
        bh_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        bl_blk_n = bl_empty_n;
    end else begin
        bl_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        bl_out2_blk_n = bl_out2_full_n;
    end else begin
        bl_out2_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (bl_out2_full_n == 1'b0) | (bl_out_full_n == 1'b0) | (bh_out1_full_n == 1'b0) | (bh_out_full_n == 1'b0) | (bl_empty_n == 1'b0) | (bh_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        bl_out2_write = 1'b1;
    end else begin
        bl_out2_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        bl_out_blk_n = bl_out_full_n;
    end else begin
        bl_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (bl_out2_full_n == 1'b0) | (bl_out_full_n == 1'b0) | (bh_out1_full_n == 1'b0) | (bh_out_full_n == 1'b0) | (bl_empty_n == 1'b0) | (bh_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        bl_out_write = 1'b1;
    end else begin
        bl_out_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (bl_out2_full_n == 1'b0) | (bl_out_full_n == 1'b0) | (bh_out1_full_n == 1'b0) | (bh_out_full_n == 1'b0) | (bl_empty_n == 1'b0) | (bh_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        bl_read = 1'b1;
    end else begin
        bl_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((real_start == 1'b0) | (bl_out2_full_n == 1'b0) | (bl_out_full_n == 1'b0) | (bh_out1_full_n == 1'b0) | (bh_out_full_n == 1'b0) | (bl_empty_n == 1'b0) | (bh_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        internal_ap_ready = 1'b1;
    end else begin
        internal_ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((start_full_n == 1'b0) & (start_once_reg == 1'b0))) begin
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
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

always @ (*) begin
    ap_block_state1 = ((real_start == 1'b0) | (bl_out2_full_n == 1'b0) | (bl_out_full_n == 1'b0) | (bh_out1_full_n == 1'b0) | (bh_out_full_n == 1'b0) | (bl_empty_n == 1'b0) | (bh_empty_n == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_ready = internal_ap_ready;

assign bh_out1_din = bh_dout;

assign bh_out_din = bh_dout;

assign bl_out2_din = bl_dout;

assign bl_out_din = bl_dout;

assign start_out = real_start;

endmodule //canny_edge_rectangle_2
