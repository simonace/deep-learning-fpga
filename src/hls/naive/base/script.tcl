############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project naive
set_top neural_network
add_files naive/neural_network.cpp
add_files -tb naive/neural_network_test.cpp
open_solution "base"
set_part {xc7z020clg400-1} -tool vivado
create_clock -period 3 -name default
source "./naive/base/directives.tcl"
csim_design -ldflags {-lmpfr} -compiler gcc
csynth_design
cosim_design -setup -compiler gcc -ldflags {-lmpfr} -trace_level all
export_design -rtl verilog -format ip_catalog
