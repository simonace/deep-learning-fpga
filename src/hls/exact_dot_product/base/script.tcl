############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project exact_dot_product
set_top exact_dot_product
add_files exact_dot_product/complete_register.cpp
add_files exact_dot_product/exact_dot_product.cpp
add_files -tb exact_dot_product/complete_register_test.cpp
add_files -tb exact_dot_product/test.dat
open_solution "base"
set_part {xc7z020clg400-1} -tool vivado
create_clock -period 5 -name default
source "./exact_dot_product/base/directives.tcl"
csim_design -compiler gcc
csynth_design
cosim_design -setup -compiler gcc
export_design -format ip_catalog
