############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project cannyReal
set_top canny_edge_detection
add_files ../../../../Desktop/Pynq-Z2-CannyEdgeDetection-master/hls/HlsImProc.hpp
add_files ../../../../Desktop/Pynq-Z2-CannyEdgeDetection-master/hls/canny_edge_detection.cpp
add_files ../../../../Desktop/Pynq-Z2-CannyEdgeDetection-master/hls/canny_edge_detection.h
open_solution "solution1"
set_part {xc7z020clg400-1} -tool vivado
create_clock -period 10.648 -name default
#source "./cannyReal/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl verilog -format ip_catalog
