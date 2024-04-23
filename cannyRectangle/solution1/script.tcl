############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project cannyRectangle
set_top canny_edge_rectangle
add_files cannyRectangle/HlsImProc.hpp
add_files cannyRectangle/canny_edge_rectangle.cpp
add_files cannyRectangle/canny_edge_rectangle.h
open_solution "solution1"
set_part {xc7z020clg400-1} -tool vivado
create_clock -period 11 -name default
#source "./cannyRectangle/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl verilog -format ip_catalog
