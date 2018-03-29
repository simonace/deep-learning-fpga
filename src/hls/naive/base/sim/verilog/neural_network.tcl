
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set cinoutgroup [add_wave_group "C InOuts" -into $designtopgroup]
set w1_offset__w2_offset__input_offset__b1_offset__b2_offset__result_offset__return_group [add_wave_group w1_offset__w2_offset__input_offset__b1_offset__b2_offset__result_offset__return(axi_slave) -into $cinoutgroup]
add_wave /apatb_neural_network_top/AESL_inst_neural_network/interrupt -into $w1_offset__w2_offset__input_offset__b1_offset__b2_offset__result_offset__return_group -color #ffff00 -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/s_axi_ctrl_BRESP -into $w1_offset__w2_offset__input_offset__b1_offset__b2_offset__result_offset__return_group -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/s_axi_ctrl_BREADY -into $w1_offset__w2_offset__input_offset__b1_offset__b2_offset__result_offset__return_group -color #ffff00 -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/s_axi_ctrl_BVALID -into $w1_offset__w2_offset__input_offset__b1_offset__b2_offset__result_offset__return_group -color #ffff00 -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/s_axi_ctrl_RRESP -into $w1_offset__w2_offset__input_offset__b1_offset__b2_offset__result_offset__return_group -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/s_axi_ctrl_RDATA -into $w1_offset__w2_offset__input_offset__b1_offset__b2_offset__result_offset__return_group -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/s_axi_ctrl_RREADY -into $w1_offset__w2_offset__input_offset__b1_offset__b2_offset__result_offset__return_group -color #ffff00 -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/s_axi_ctrl_RVALID -into $w1_offset__w2_offset__input_offset__b1_offset__b2_offset__result_offset__return_group -color #ffff00 -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/s_axi_ctrl_ARREADY -into $w1_offset__w2_offset__input_offset__b1_offset__b2_offset__result_offset__return_group -color #ffff00 -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/s_axi_ctrl_ARVALID -into $w1_offset__w2_offset__input_offset__b1_offset__b2_offset__result_offset__return_group -color #ffff00 -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/s_axi_ctrl_ARADDR -into $w1_offset__w2_offset__input_offset__b1_offset__b2_offset__result_offset__return_group -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/s_axi_ctrl_WSTRB -into $w1_offset__w2_offset__input_offset__b1_offset__b2_offset__result_offset__return_group -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/s_axi_ctrl_WDATA -into $w1_offset__w2_offset__input_offset__b1_offset__b2_offset__result_offset__return_group -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/s_axi_ctrl_WREADY -into $w1_offset__w2_offset__input_offset__b1_offset__b2_offset__result_offset__return_group -color #ffff00 -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/s_axi_ctrl_WVALID -into $w1_offset__w2_offset__input_offset__b1_offset__b2_offset__result_offset__return_group -color #ffff00 -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/s_axi_ctrl_AWREADY -into $w1_offset__w2_offset__input_offset__b1_offset__b2_offset__result_offset__return_group -color #ffff00 -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/s_axi_ctrl_AWVALID -into $w1_offset__w2_offset__input_offset__b1_offset__b2_offset__result_offset__return_group -color #ffff00 -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/s_axi_ctrl_AWADDR -into $w1_offset__w2_offset__input_offset__b1_offset__b2_offset__result_offset__return_group -radix hex
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set out_group [add_wave_group out(axi_master) -into $coutputgroup]
set rdata_group [add_wave_group "Read Channel" -into $out_group]
set wdata_group [add_wave_group "Write Channel" -into $out_group]
set ctrl_group [add_wave_group "Handshakes" -into $out_group]
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_out_V_BUSER -into $wdata_group -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_out_V_BID -into $wdata_group -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_out_V_BRESP -into $wdata_group -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_out_V_BREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_out_V_BVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_out_V_RRESP -into $rdata_group -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_out_V_RUSER -into $rdata_group -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_out_V_RID -into $rdata_group -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_out_V_RLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_out_V_RDATA -into $rdata_group -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_out_V_RREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_out_V_RVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_out_V_ARUSER -into $rdata_group -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_out_V_ARREGION -into $rdata_group -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_out_V_ARQOS -into $rdata_group -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_out_V_ARPROT -into $rdata_group -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_out_V_ARCACHE -into $rdata_group -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_out_V_ARLOCK -into $rdata_group -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_out_V_ARBURST -into $rdata_group -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_out_V_ARSIZE -into $rdata_group -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_out_V_ARLEN -into $rdata_group -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_out_V_ARID -into $rdata_group -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_out_V_ARADDR -into $rdata_group -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_out_V_ARREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_out_V_ARVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_out_V_WUSER -into $wdata_group -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_out_V_WID -into $wdata_group -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_out_V_WLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_out_V_WSTRB -into $wdata_group -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_out_V_WDATA -into $wdata_group -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_out_V_WREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_out_V_WVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_out_V_AWUSER -into $wdata_group -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_out_V_AWREGION -into $wdata_group -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_out_V_AWQOS -into $wdata_group -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_out_V_AWPROT -into $wdata_group -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_out_V_AWCACHE -into $wdata_group -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_out_V_AWLOCK -into $wdata_group -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_out_V_AWBURST -into $wdata_group -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_out_V_AWSIZE -into $wdata_group -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_out_V_AWLEN -into $wdata_group -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_out_V_AWID -into $wdata_group -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_out_V_AWADDR -into $wdata_group -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_out_V_AWREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_out_V_AWVALID -into $ctrl_group -color #ffff00 -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set mem_group [add_wave_group mem(axi_master) -into $cinputgroup]
set rdata_group [add_wave_group "Read Channel" -into $mem_group]
set wdata_group [add_wave_group "Write Channel" -into $mem_group]
set ctrl_group [add_wave_group "Handshakes" -into $mem_group]
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_mem_V_BUSER -into $wdata_group -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_mem_V_BID -into $wdata_group -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_mem_V_BRESP -into $wdata_group -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_mem_V_BREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_mem_V_BVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_mem_V_RRESP -into $rdata_group -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_mem_V_RUSER -into $rdata_group -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_mem_V_RID -into $rdata_group -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_mem_V_RLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_mem_V_RDATA -into $rdata_group -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_mem_V_RREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_mem_V_RVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_mem_V_ARUSER -into $rdata_group -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_mem_V_ARREGION -into $rdata_group -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_mem_V_ARQOS -into $rdata_group -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_mem_V_ARPROT -into $rdata_group -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_mem_V_ARCACHE -into $rdata_group -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_mem_V_ARLOCK -into $rdata_group -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_mem_V_ARBURST -into $rdata_group -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_mem_V_ARSIZE -into $rdata_group -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_mem_V_ARLEN -into $rdata_group -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_mem_V_ARID -into $rdata_group -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_mem_V_ARADDR -into $rdata_group -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_mem_V_ARREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_mem_V_ARVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_mem_V_WUSER -into $wdata_group -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_mem_V_WID -into $wdata_group -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_mem_V_WLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_mem_V_WSTRB -into $wdata_group -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_mem_V_WDATA -into $wdata_group -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_mem_V_WREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_mem_V_WVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_mem_V_AWUSER -into $wdata_group -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_mem_V_AWREGION -into $wdata_group -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_mem_V_AWQOS -into $wdata_group -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_mem_V_AWPROT -into $wdata_group -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_mem_V_AWCACHE -into $wdata_group -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_mem_V_AWLOCK -into $wdata_group -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_mem_V_AWBURST -into $wdata_group -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_mem_V_AWSIZE -into $wdata_group -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_mem_V_AWLEN -into $wdata_group -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_mem_V_AWID -into $wdata_group -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_mem_V_AWADDR -into $wdata_group -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_mem_V_AWREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_neural_network_top/AESL_inst_neural_network/m_axi_mem_V_AWVALID -into $ctrl_group -color #ffff00 -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake(internal)" -into $designtopgroup]
add_wave /apatb_neural_network_top/AESL_inst_neural_network/ap_done -into $blocksiggroup
add_wave /apatb_neural_network_top/AESL_inst_neural_network/ap_idle -into $blocksiggroup
add_wave /apatb_neural_network_top/AESL_inst_neural_network/ap_ready -into $blocksiggroup
add_wave /apatb_neural_network_top/AESL_inst_neural_network/ap_start -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_neural_network_top/AESL_inst_neural_network/ap_rst_n -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_neural_network_top/AESL_inst_neural_network/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_neural_network_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_neural_network_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_neural_network_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_neural_network_top/LENGTH_mem_V -into $tb_portdepth_group -radix hex
add_wave /apatb_neural_network_top/LENGTH_out_V -into $tb_portdepth_group -radix hex
add_wave /apatb_neural_network_top/LENGTH_w1_offset -into $tb_portdepth_group -radix hex
add_wave /apatb_neural_network_top/LENGTH_w2_offset -into $tb_portdepth_group -radix hex
add_wave /apatb_neural_network_top/LENGTH_input_offset -into $tb_portdepth_group -radix hex
add_wave /apatb_neural_network_top/LENGTH_b1_offset -into $tb_portdepth_group -radix hex
add_wave /apatb_neural_network_top/LENGTH_b2_offset -into $tb_portdepth_group -radix hex
add_wave /apatb_neural_network_top/LENGTH_result_offset -into $tb_portdepth_group -radix hex
set tbcinoutgroup [add_wave_group "C InOuts" -into $testbenchgroup]
set tb_w1_offset__w2_offset__input_offset__b1_offset__b2_offset__result_offset__return_group [add_wave_group w1_offset__w2_offset__input_offset__b1_offset__b2_offset__result_offset__return(axi_slave) -into $tbcinoutgroup]
add_wave /apatb_neural_network_top/ctrl_INTERRUPT -into $tb_w1_offset__w2_offset__input_offset__b1_offset__b2_offset__result_offset__return_group -color #ffff00 -radix hex
add_wave /apatb_neural_network_top/ctrl_BRESP -into $tb_w1_offset__w2_offset__input_offset__b1_offset__b2_offset__result_offset__return_group -radix hex
add_wave /apatb_neural_network_top/ctrl_BREADY -into $tb_w1_offset__w2_offset__input_offset__b1_offset__b2_offset__result_offset__return_group -color #ffff00 -radix hex
add_wave /apatb_neural_network_top/ctrl_BVALID -into $tb_w1_offset__w2_offset__input_offset__b1_offset__b2_offset__result_offset__return_group -color #ffff00 -radix hex
add_wave /apatb_neural_network_top/ctrl_RRESP -into $tb_w1_offset__w2_offset__input_offset__b1_offset__b2_offset__result_offset__return_group -radix hex
add_wave /apatb_neural_network_top/ctrl_RDATA -into $tb_w1_offset__w2_offset__input_offset__b1_offset__b2_offset__result_offset__return_group -radix hex
add_wave /apatb_neural_network_top/ctrl_RREADY -into $tb_w1_offset__w2_offset__input_offset__b1_offset__b2_offset__result_offset__return_group -color #ffff00 -radix hex
add_wave /apatb_neural_network_top/ctrl_RVALID -into $tb_w1_offset__w2_offset__input_offset__b1_offset__b2_offset__result_offset__return_group -color #ffff00 -radix hex
add_wave /apatb_neural_network_top/ctrl_ARREADY -into $tb_w1_offset__w2_offset__input_offset__b1_offset__b2_offset__result_offset__return_group -color #ffff00 -radix hex
add_wave /apatb_neural_network_top/ctrl_ARVALID -into $tb_w1_offset__w2_offset__input_offset__b1_offset__b2_offset__result_offset__return_group -color #ffff00 -radix hex
add_wave /apatb_neural_network_top/ctrl_ARADDR -into $tb_w1_offset__w2_offset__input_offset__b1_offset__b2_offset__result_offset__return_group -radix hex
add_wave /apatb_neural_network_top/ctrl_WSTRB -into $tb_w1_offset__w2_offset__input_offset__b1_offset__b2_offset__result_offset__return_group -radix hex
add_wave /apatb_neural_network_top/ctrl_WDATA -into $tb_w1_offset__w2_offset__input_offset__b1_offset__b2_offset__result_offset__return_group -radix hex
add_wave /apatb_neural_network_top/ctrl_WREADY -into $tb_w1_offset__w2_offset__input_offset__b1_offset__b2_offset__result_offset__return_group -color #ffff00 -radix hex
add_wave /apatb_neural_network_top/ctrl_WVALID -into $tb_w1_offset__w2_offset__input_offset__b1_offset__b2_offset__result_offset__return_group -color #ffff00 -radix hex
add_wave /apatb_neural_network_top/ctrl_AWREADY -into $tb_w1_offset__w2_offset__input_offset__b1_offset__b2_offset__result_offset__return_group -color #ffff00 -radix hex
add_wave /apatb_neural_network_top/ctrl_AWVALID -into $tb_w1_offset__w2_offset__input_offset__b1_offset__b2_offset__result_offset__return_group -color #ffff00 -radix hex
add_wave /apatb_neural_network_top/ctrl_AWADDR -into $tb_w1_offset__w2_offset__input_offset__b1_offset__b2_offset__result_offset__return_group -radix hex
set tbcoutputgroup [add_wave_group "C Outputs" -into $testbenchgroup]
set tb_out_group [add_wave_group out(axi_master) -into $tbcoutputgroup]
set rdata_group [add_wave_group "Read Channel" -into $tb_out_group]
set wdata_group [add_wave_group "Write Channel" -into $tb_out_group]
set ctrl_group [add_wave_group "Handshakes" -into $tb_out_group]
add_wave /apatb_neural_network_top/out_V_BUSER -into $wdata_group -radix hex
add_wave /apatb_neural_network_top/out_V_BID -into $wdata_group -radix hex
add_wave /apatb_neural_network_top/out_V_BRESP -into $wdata_group -radix hex
add_wave /apatb_neural_network_top/out_V_BREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_neural_network_top/out_V_BVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_neural_network_top/out_V_RRESP -into $rdata_group -radix hex
add_wave /apatb_neural_network_top/out_V_RUSER -into $rdata_group -radix hex
add_wave /apatb_neural_network_top/out_V_RID -into $rdata_group -radix hex
add_wave /apatb_neural_network_top/out_V_RLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_neural_network_top/out_V_RDATA -into $rdata_group -radix hex
add_wave /apatb_neural_network_top/out_V_RREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_neural_network_top/out_V_RVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_neural_network_top/out_V_ARUSER -into $rdata_group -radix hex
add_wave /apatb_neural_network_top/out_V_ARREGION -into $rdata_group -radix hex
add_wave /apatb_neural_network_top/out_V_ARQOS -into $rdata_group -radix hex
add_wave /apatb_neural_network_top/out_V_ARPROT -into $rdata_group -radix hex
add_wave /apatb_neural_network_top/out_V_ARCACHE -into $rdata_group -radix hex
add_wave /apatb_neural_network_top/out_V_ARLOCK -into $rdata_group -radix hex
add_wave /apatb_neural_network_top/out_V_ARBURST -into $rdata_group -radix hex
add_wave /apatb_neural_network_top/out_V_ARSIZE -into $rdata_group -radix hex
add_wave /apatb_neural_network_top/out_V_ARLEN -into $rdata_group -radix hex
add_wave /apatb_neural_network_top/out_V_ARID -into $rdata_group -radix hex
add_wave /apatb_neural_network_top/out_V_ARADDR -into $rdata_group -radix hex
add_wave /apatb_neural_network_top/out_V_ARREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_neural_network_top/out_V_ARVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_neural_network_top/out_V_WUSER -into $wdata_group -radix hex
add_wave /apatb_neural_network_top/out_V_WID -into $wdata_group -radix hex
add_wave /apatb_neural_network_top/out_V_WLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_neural_network_top/out_V_WSTRB -into $wdata_group -radix hex
add_wave /apatb_neural_network_top/out_V_WDATA -into $wdata_group -radix hex
add_wave /apatb_neural_network_top/out_V_WREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_neural_network_top/out_V_WVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_neural_network_top/out_V_AWUSER -into $wdata_group -radix hex
add_wave /apatb_neural_network_top/out_V_AWREGION -into $wdata_group -radix hex
add_wave /apatb_neural_network_top/out_V_AWQOS -into $wdata_group -radix hex
add_wave /apatb_neural_network_top/out_V_AWPROT -into $wdata_group -radix hex
add_wave /apatb_neural_network_top/out_V_AWCACHE -into $wdata_group -radix hex
add_wave /apatb_neural_network_top/out_V_AWLOCK -into $wdata_group -radix hex
add_wave /apatb_neural_network_top/out_V_AWBURST -into $wdata_group -radix hex
add_wave /apatb_neural_network_top/out_V_AWSIZE -into $wdata_group -radix hex
add_wave /apatb_neural_network_top/out_V_AWLEN -into $wdata_group -radix hex
add_wave /apatb_neural_network_top/out_V_AWID -into $wdata_group -radix hex
add_wave /apatb_neural_network_top/out_V_AWADDR -into $wdata_group -radix hex
add_wave /apatb_neural_network_top/out_V_AWREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_neural_network_top/out_V_AWVALID -into $ctrl_group -color #ffff00 -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_mem_group [add_wave_group mem(axi_master) -into $tbcinputgroup]
set rdata_group [add_wave_group "Read Channel" -into $tb_mem_group]
set wdata_group [add_wave_group "Write Channel" -into $tb_mem_group]
set ctrl_group [add_wave_group "Handshakes" -into $tb_mem_group]
add_wave /apatb_neural_network_top/mem_V_BUSER -into $wdata_group -radix hex
add_wave /apatb_neural_network_top/mem_V_BID -into $wdata_group -radix hex
add_wave /apatb_neural_network_top/mem_V_BRESP -into $wdata_group -radix hex
add_wave /apatb_neural_network_top/mem_V_BREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_neural_network_top/mem_V_BVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_neural_network_top/mem_V_RRESP -into $rdata_group -radix hex
add_wave /apatb_neural_network_top/mem_V_RUSER -into $rdata_group -radix hex
add_wave /apatb_neural_network_top/mem_V_RID -into $rdata_group -radix hex
add_wave /apatb_neural_network_top/mem_V_RLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_neural_network_top/mem_V_RDATA -into $rdata_group -radix hex
add_wave /apatb_neural_network_top/mem_V_RREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_neural_network_top/mem_V_RVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_neural_network_top/mem_V_ARUSER -into $rdata_group -radix hex
add_wave /apatb_neural_network_top/mem_V_ARREGION -into $rdata_group -radix hex
add_wave /apatb_neural_network_top/mem_V_ARQOS -into $rdata_group -radix hex
add_wave /apatb_neural_network_top/mem_V_ARPROT -into $rdata_group -radix hex
add_wave /apatb_neural_network_top/mem_V_ARCACHE -into $rdata_group -radix hex
add_wave /apatb_neural_network_top/mem_V_ARLOCK -into $rdata_group -radix hex
add_wave /apatb_neural_network_top/mem_V_ARBURST -into $rdata_group -radix hex
add_wave /apatb_neural_network_top/mem_V_ARSIZE -into $rdata_group -radix hex
add_wave /apatb_neural_network_top/mem_V_ARLEN -into $rdata_group -radix hex
add_wave /apatb_neural_network_top/mem_V_ARID -into $rdata_group -radix hex
add_wave /apatb_neural_network_top/mem_V_ARADDR -into $rdata_group -radix hex
add_wave /apatb_neural_network_top/mem_V_ARREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_neural_network_top/mem_V_ARVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_neural_network_top/mem_V_WUSER -into $wdata_group -radix hex
add_wave /apatb_neural_network_top/mem_V_WID -into $wdata_group -radix hex
add_wave /apatb_neural_network_top/mem_V_WLAST -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_neural_network_top/mem_V_WSTRB -into $wdata_group -radix hex
add_wave /apatb_neural_network_top/mem_V_WDATA -into $wdata_group -radix hex
add_wave /apatb_neural_network_top/mem_V_WREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_neural_network_top/mem_V_WVALID -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_neural_network_top/mem_V_AWUSER -into $wdata_group -radix hex
add_wave /apatb_neural_network_top/mem_V_AWREGION -into $wdata_group -radix hex
add_wave /apatb_neural_network_top/mem_V_AWQOS -into $wdata_group -radix hex
add_wave /apatb_neural_network_top/mem_V_AWPROT -into $wdata_group -radix hex
add_wave /apatb_neural_network_top/mem_V_AWCACHE -into $wdata_group -radix hex
add_wave /apatb_neural_network_top/mem_V_AWLOCK -into $wdata_group -radix hex
add_wave /apatb_neural_network_top/mem_V_AWBURST -into $wdata_group -radix hex
add_wave /apatb_neural_network_top/mem_V_AWSIZE -into $wdata_group -radix hex
add_wave /apatb_neural_network_top/mem_V_AWLEN -into $wdata_group -radix hex
add_wave /apatb_neural_network_top/mem_V_AWID -into $wdata_group -radix hex
add_wave /apatb_neural_network_top/mem_V_AWADDR -into $wdata_group -radix hex
add_wave /apatb_neural_network_top/mem_V_AWREADY -into $ctrl_group -color #ffff00 -radix hex
add_wave /apatb_neural_network_top/mem_V_AWVALID -into $ctrl_group -color #ffff00 -radix hex
save_wave_config neural_network.wcfg
run all
quit

