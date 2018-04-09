############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project mnist_edpa
set_top mnist_edp
add_files mnist_edpa/mnist_edp.cpp
add_files -tb mnist_edpa/mnist_test.cpp
add_files -tb mnist_edpa/x_test.dat
open_solution "solution1"
set_part {xc7z020clg400-1} -tool vivado
create_clock -period 15 -name default
#source "./mnist_edpa/solution1/directives.tcl"
csim_design -compiler gcc
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog
