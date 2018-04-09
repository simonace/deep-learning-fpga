############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project mnist_fp32_naive
set_top mnist_fp32_naive
add_files mnist_fp32_naive/mnist_fp32_naive.cpp
add_files -tb mnist_fp32_naive/mnist_test.cpp
add_files -tb mnist_fp32_naive/x_test.dat
open_solution "solution1"
set_part {xc7z020clg400-1} -tool vivado
create_clock -period 10 -name default
#source "./mnist_fp32_naive/solution1/directives.tcl"
csim_design -compiler gcc
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog
