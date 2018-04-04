############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_interface -mode m_axi -depth 8347050 "neural_network" mem
set_directive_interface -mode m_axi -depth 10 "neural_network" out
set_directive_interface -mode s_axilite "neural_network" b1_offset
set_directive_interface -mode s_axilite "neural_network" b2_offset
set_directive_interface -mode s_axilite "neural_network" input_offset
set_directive_interface -mode s_axilite "neural_network" w1_offset
set_directive_interface -mode s_axilite "neural_network" result_offset
set_directive_interface -mode s_axilite "neural_network" w2_offset
set_directive_interface -mode s_axilite "neural_network"
set_directive_unroll "neural_network/InitL1"
set_directive_unroll "neural_network/InitL2"
set_directive_unroll "neural_network/Layer1DotProduct"
set_directive_unroll "neural_network/Layer2DotProduct"
set_directive_pipeline "neural_network/ReLU"
set_directive_unroll "CompleteRegister::get_result/GetMantissa"
set_directive_unroll "CompleteRegister::get_result/FlipMantissa"
set_directive_pipeline "CompleteRegister::multiply_accumulate"
set_directive_pipeline "CompleteRegister::get_result"
