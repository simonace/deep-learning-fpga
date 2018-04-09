set moduleName linear_activation
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {linear_activation}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_in_V_V int 16 regular {fifo 0 volatile }  }
	{ data_out_V_V int 16 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_in_V_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "data_out_V_V", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ data_in_V_V_dout sc_in sc_lv 16 signal 0 } 
	{ data_in_V_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ data_in_V_V_read sc_out sc_logic 1 signal 0 } 
	{ data_out_V_V_din sc_out sc_lv 16 signal 1 } 
	{ data_out_V_V_full_n sc_in sc_logic 1 signal 1 } 
	{ data_out_V_V_write sc_out sc_logic 1 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "data_in_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "data_in_V_V", "role": "dout" }} , 
 	{ "name": "data_in_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_in_V_V", "role": "empty_n" }} , 
 	{ "name": "data_in_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_in_V_V", "role": "read" }} , 
 	{ "name": "data_out_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "data_out_V_V", "role": "din" }} , 
 	{ "name": "data_out_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_out_V_V", "role": "full_n" }} , 
 	{ "name": "data_out_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_out_V_V", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "6", "8", "10", "12", "14", "16", "18", "20", "22", "24", "26", "28", "30", "32", "34", "36", "38", "40", "42", "44", "46", "48", "50", "52", "54", "56", "58", "60", "62", "64", "66", "68"],
		"CDFG" : "linear_activation",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "data_in_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "data_in_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "data_out_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "L1_WEIGHTS_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_BIAS_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.L1_WEIGHTS_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.L1_BIAS_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_get_result_fu_1555", "Parent" : "0",
		"CDFG" : "get_result",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"FunctionPipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_multiply_accumulate_fu_1561", "Parent" : "0", "Child" : ["5"],
		"CDFG" : "multiply_accumulate",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"FunctionPipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in1_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "in2_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_multiply_accumulate_fu_1561.mnist_edp_mul_mulbkb_U9", "Parent" : "4"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_multiply_accumulate_fu_1569", "Parent" : "0", "Child" : ["7"],
		"CDFG" : "multiply_accumulate",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"FunctionPipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in1_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "in2_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_multiply_accumulate_fu_1569.mnist_edp_mul_mulbkb_U9", "Parent" : "6"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_multiply_accumulate_fu_1577", "Parent" : "0", "Child" : ["9"],
		"CDFG" : "multiply_accumulate",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"FunctionPipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in1_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "in2_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_multiply_accumulate_fu_1577.mnist_edp_mul_mulbkb_U9", "Parent" : "8"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_multiply_accumulate_fu_1585", "Parent" : "0", "Child" : ["11"],
		"CDFG" : "multiply_accumulate",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"FunctionPipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in1_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "in2_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_multiply_accumulate_fu_1585.mnist_edp_mul_mulbkb_U9", "Parent" : "10"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_multiply_accumulate_fu_1593", "Parent" : "0", "Child" : ["13"],
		"CDFG" : "multiply_accumulate",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"FunctionPipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in1_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "in2_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_multiply_accumulate_fu_1593.mnist_edp_mul_mulbkb_U9", "Parent" : "12"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_multiply_accumulate_fu_1601", "Parent" : "0", "Child" : ["15"],
		"CDFG" : "multiply_accumulate",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"FunctionPipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in1_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "in2_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_multiply_accumulate_fu_1601.mnist_edp_mul_mulbkb_U9", "Parent" : "14"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_multiply_accumulate_fu_1609", "Parent" : "0", "Child" : ["17"],
		"CDFG" : "multiply_accumulate",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"FunctionPipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in1_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "in2_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_multiply_accumulate_fu_1609.mnist_edp_mul_mulbkb_U9", "Parent" : "16"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_multiply_accumulate_fu_1617", "Parent" : "0", "Child" : ["19"],
		"CDFG" : "multiply_accumulate",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"FunctionPipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in1_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "in2_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_multiply_accumulate_fu_1617.mnist_edp_mul_mulbkb_U9", "Parent" : "18"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_multiply_accumulate_fu_1625", "Parent" : "0", "Child" : ["21"],
		"CDFG" : "multiply_accumulate",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"FunctionPipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in1_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "in2_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_multiply_accumulate_fu_1625.mnist_edp_mul_mulbkb_U9", "Parent" : "20"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_multiply_accumulate_fu_1633", "Parent" : "0", "Child" : ["23"],
		"CDFG" : "multiply_accumulate",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"FunctionPipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in1_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "in2_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_multiply_accumulate_fu_1633.mnist_edp_mul_mulbkb_U9", "Parent" : "22"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_multiply_accumulate_fu_1641", "Parent" : "0", "Child" : ["25"],
		"CDFG" : "multiply_accumulate",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"FunctionPipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in1_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "in2_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_multiply_accumulate_fu_1641.mnist_edp_mul_mulbkb_U9", "Parent" : "24"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_multiply_accumulate_fu_1649", "Parent" : "0", "Child" : ["27"],
		"CDFG" : "multiply_accumulate",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"FunctionPipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in1_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "in2_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_multiply_accumulate_fu_1649.mnist_edp_mul_mulbkb_U9", "Parent" : "26"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_multiply_accumulate_fu_1657", "Parent" : "0", "Child" : ["29"],
		"CDFG" : "multiply_accumulate",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"FunctionPipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in1_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "in2_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_multiply_accumulate_fu_1657.mnist_edp_mul_mulbkb_U9", "Parent" : "28"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_multiply_accumulate_fu_1665", "Parent" : "0", "Child" : ["31"],
		"CDFG" : "multiply_accumulate",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"FunctionPipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in1_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "in2_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_multiply_accumulate_fu_1665.mnist_edp_mul_mulbkb_U9", "Parent" : "30"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_multiply_accumulate_fu_1673", "Parent" : "0", "Child" : ["33"],
		"CDFG" : "multiply_accumulate",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"FunctionPipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in1_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "in2_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_multiply_accumulate_fu_1673.mnist_edp_mul_mulbkb_U9", "Parent" : "32"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_multiply_accumulate_fu_1681", "Parent" : "0", "Child" : ["35"],
		"CDFG" : "multiply_accumulate",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"FunctionPipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in1_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "in2_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_multiply_accumulate_fu_1681.mnist_edp_mul_mulbkb_U9", "Parent" : "34"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_multiply_accumulate_fu_1689", "Parent" : "0", "Child" : ["37"],
		"CDFG" : "multiply_accumulate",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"FunctionPipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in1_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "in2_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_multiply_accumulate_fu_1689.mnist_edp_mul_mulbkb_U9", "Parent" : "36"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_multiply_accumulate_fu_1697", "Parent" : "0", "Child" : ["39"],
		"CDFG" : "multiply_accumulate",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"FunctionPipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in1_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "in2_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_multiply_accumulate_fu_1697.mnist_edp_mul_mulbkb_U9", "Parent" : "38"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_multiply_accumulate_fu_1705", "Parent" : "0", "Child" : ["41"],
		"CDFG" : "multiply_accumulate",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"FunctionPipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in1_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "in2_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_multiply_accumulate_fu_1705.mnist_edp_mul_mulbkb_U9", "Parent" : "40"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_multiply_accumulate_fu_1713", "Parent" : "0", "Child" : ["43"],
		"CDFG" : "multiply_accumulate",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"FunctionPipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in1_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "in2_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_multiply_accumulate_fu_1713.mnist_edp_mul_mulbkb_U9", "Parent" : "42"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_multiply_accumulate_fu_1721", "Parent" : "0", "Child" : ["45"],
		"CDFG" : "multiply_accumulate",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"FunctionPipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in1_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "in2_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_multiply_accumulate_fu_1721.mnist_edp_mul_mulbkb_U9", "Parent" : "44"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_multiply_accumulate_fu_1729", "Parent" : "0", "Child" : ["47"],
		"CDFG" : "multiply_accumulate",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"FunctionPipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in1_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "in2_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_multiply_accumulate_fu_1729.mnist_edp_mul_mulbkb_U9", "Parent" : "46"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_multiply_accumulate_fu_1737", "Parent" : "0", "Child" : ["49"],
		"CDFG" : "multiply_accumulate",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"FunctionPipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in1_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "in2_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_multiply_accumulate_fu_1737.mnist_edp_mul_mulbkb_U9", "Parent" : "48"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_multiply_accumulate_fu_1745", "Parent" : "0", "Child" : ["51"],
		"CDFG" : "multiply_accumulate",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"FunctionPipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in1_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "in2_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_multiply_accumulate_fu_1745.mnist_edp_mul_mulbkb_U9", "Parent" : "50"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_multiply_accumulate_fu_1753", "Parent" : "0", "Child" : ["53"],
		"CDFG" : "multiply_accumulate",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"FunctionPipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in1_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "in2_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_multiply_accumulate_fu_1753.mnist_edp_mul_mulbkb_U9", "Parent" : "52"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_multiply_accumulate_fu_1761", "Parent" : "0", "Child" : ["55"],
		"CDFG" : "multiply_accumulate",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"FunctionPipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in1_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "in2_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_multiply_accumulate_fu_1761.mnist_edp_mul_mulbkb_U9", "Parent" : "54"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_multiply_accumulate_fu_1769", "Parent" : "0", "Child" : ["57"],
		"CDFG" : "multiply_accumulate",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"FunctionPipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in1_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "in2_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_multiply_accumulate_fu_1769.mnist_edp_mul_mulbkb_U9", "Parent" : "56"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_multiply_accumulate_fu_1777", "Parent" : "0", "Child" : ["59"],
		"CDFG" : "multiply_accumulate",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"FunctionPipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in1_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "in2_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_multiply_accumulate_fu_1777.mnist_edp_mul_mulbkb_U9", "Parent" : "58"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_multiply_accumulate_fu_1785", "Parent" : "0", "Child" : ["61"],
		"CDFG" : "multiply_accumulate",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"FunctionPipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in1_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "in2_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_multiply_accumulate_fu_1785.mnist_edp_mul_mulbkb_U9", "Parent" : "60"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_multiply_accumulate_fu_1793", "Parent" : "0", "Child" : ["63"],
		"CDFG" : "multiply_accumulate",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"FunctionPipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in1_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "in2_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_multiply_accumulate_fu_1793.mnist_edp_mul_mulbkb_U9", "Parent" : "62"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_multiply_accumulate_fu_1801", "Parent" : "0", "Child" : ["65"],
		"CDFG" : "multiply_accumulate",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"FunctionPipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in1_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "in2_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_multiply_accumulate_fu_1801.mnist_edp_mul_mulbkb_U9", "Parent" : "64"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_multiply_accumulate_fu_1809", "Parent" : "0", "Child" : ["67"],
		"CDFG" : "multiply_accumulate",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"FunctionPipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in1_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "in2_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_multiply_accumulate_fu_1809.mnist_edp_mul_mulbkb_U9", "Parent" : "66"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mnist_edp_mux_646eOg_U15", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	linear_activation {
		data_in_V_V {Type I LastRead 2 FirstWrite -1}
		data_out_V_V {Type O LastRead -1 FirstWrite 8}
		L1_WEIGHTS_V {Type I LastRead -1 FirstWrite -1}
		L1_BIAS_V {Type I LastRead -1 FirstWrite -1}}
	get_result {
		CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read {Type I LastRead 0 FirstWrite -1}}
	multiply_accumulate {
		CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read {Type I LastRead 0 FirstWrite -1}
		in1_V {Type I LastRead 0 FirstWrite -1}
		in2_V {Type I LastRead 0 FirstWrite -1}}
	multiply_accumulate {
		CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read {Type I LastRead 0 FirstWrite -1}
		in1_V {Type I LastRead 0 FirstWrite -1}
		in2_V {Type I LastRead 0 FirstWrite -1}}
	multiply_accumulate {
		CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read {Type I LastRead 0 FirstWrite -1}
		in1_V {Type I LastRead 0 FirstWrite -1}
		in2_V {Type I LastRead 0 FirstWrite -1}}
	multiply_accumulate {
		CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read {Type I LastRead 0 FirstWrite -1}
		in1_V {Type I LastRead 0 FirstWrite -1}
		in2_V {Type I LastRead 0 FirstWrite -1}}
	multiply_accumulate {
		CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read {Type I LastRead 0 FirstWrite -1}
		in1_V {Type I LastRead 0 FirstWrite -1}
		in2_V {Type I LastRead 0 FirstWrite -1}}
	multiply_accumulate {
		CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read {Type I LastRead 0 FirstWrite -1}
		in1_V {Type I LastRead 0 FirstWrite -1}
		in2_V {Type I LastRead 0 FirstWrite -1}}
	multiply_accumulate {
		CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read {Type I LastRead 0 FirstWrite -1}
		in1_V {Type I LastRead 0 FirstWrite -1}
		in2_V {Type I LastRead 0 FirstWrite -1}}
	multiply_accumulate {
		CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read {Type I LastRead 0 FirstWrite -1}
		in1_V {Type I LastRead 0 FirstWrite -1}
		in2_V {Type I LastRead 0 FirstWrite -1}}
	multiply_accumulate {
		CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read {Type I LastRead 0 FirstWrite -1}
		in1_V {Type I LastRead 0 FirstWrite -1}
		in2_V {Type I LastRead 0 FirstWrite -1}}
	multiply_accumulate {
		CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read {Type I LastRead 0 FirstWrite -1}
		in1_V {Type I LastRead 0 FirstWrite -1}
		in2_V {Type I LastRead 0 FirstWrite -1}}
	multiply_accumulate {
		CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read {Type I LastRead 0 FirstWrite -1}
		in1_V {Type I LastRead 0 FirstWrite -1}
		in2_V {Type I LastRead 0 FirstWrite -1}}
	multiply_accumulate {
		CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read {Type I LastRead 0 FirstWrite -1}
		in1_V {Type I LastRead 0 FirstWrite -1}
		in2_V {Type I LastRead 0 FirstWrite -1}}
	multiply_accumulate {
		CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read {Type I LastRead 0 FirstWrite -1}
		in1_V {Type I LastRead 0 FirstWrite -1}
		in2_V {Type I LastRead 0 FirstWrite -1}}
	multiply_accumulate {
		CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read {Type I LastRead 0 FirstWrite -1}
		in1_V {Type I LastRead 0 FirstWrite -1}
		in2_V {Type I LastRead 0 FirstWrite -1}}
	multiply_accumulate {
		CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read {Type I LastRead 0 FirstWrite -1}
		in1_V {Type I LastRead 0 FirstWrite -1}
		in2_V {Type I LastRead 0 FirstWrite -1}}
	multiply_accumulate {
		CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read {Type I LastRead 0 FirstWrite -1}
		in1_V {Type I LastRead 0 FirstWrite -1}
		in2_V {Type I LastRead 0 FirstWrite -1}}
	multiply_accumulate {
		CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read {Type I LastRead 0 FirstWrite -1}
		in1_V {Type I LastRead 0 FirstWrite -1}
		in2_V {Type I LastRead 0 FirstWrite -1}}
	multiply_accumulate {
		CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read {Type I LastRead 0 FirstWrite -1}
		in1_V {Type I LastRead 0 FirstWrite -1}
		in2_V {Type I LastRead 0 FirstWrite -1}}
	multiply_accumulate {
		CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read {Type I LastRead 0 FirstWrite -1}
		in1_V {Type I LastRead 0 FirstWrite -1}
		in2_V {Type I LastRead 0 FirstWrite -1}}
	multiply_accumulate {
		CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read {Type I LastRead 0 FirstWrite -1}
		in1_V {Type I LastRead 0 FirstWrite -1}
		in2_V {Type I LastRead 0 FirstWrite -1}}
	multiply_accumulate {
		CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read {Type I LastRead 0 FirstWrite -1}
		in1_V {Type I LastRead 0 FirstWrite -1}
		in2_V {Type I LastRead 0 FirstWrite -1}}
	multiply_accumulate {
		CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read {Type I LastRead 0 FirstWrite -1}
		in1_V {Type I LastRead 0 FirstWrite -1}
		in2_V {Type I LastRead 0 FirstWrite -1}}
	multiply_accumulate {
		CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read {Type I LastRead 0 FirstWrite -1}
		in1_V {Type I LastRead 0 FirstWrite -1}
		in2_V {Type I LastRead 0 FirstWrite -1}}
	multiply_accumulate {
		CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read {Type I LastRead 0 FirstWrite -1}
		in1_V {Type I LastRead 0 FirstWrite -1}
		in2_V {Type I LastRead 0 FirstWrite -1}}
	multiply_accumulate {
		CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read {Type I LastRead 0 FirstWrite -1}
		in1_V {Type I LastRead 0 FirstWrite -1}
		in2_V {Type I LastRead 0 FirstWrite -1}}
	multiply_accumulate {
		CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read {Type I LastRead 0 FirstWrite -1}
		in1_V {Type I LastRead 0 FirstWrite -1}
		in2_V {Type I LastRead 0 FirstWrite -1}}
	multiply_accumulate {
		CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read {Type I LastRead 0 FirstWrite -1}
		in1_V {Type I LastRead 0 FirstWrite -1}
		in2_V {Type I LastRead 0 FirstWrite -1}}
	multiply_accumulate {
		CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read {Type I LastRead 0 FirstWrite -1}
		in1_V {Type I LastRead 0 FirstWrite -1}
		in2_V {Type I LastRead 0 FirstWrite -1}}
	multiply_accumulate {
		CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read {Type I LastRead 0 FirstWrite -1}
		in1_V {Type I LastRead 0 FirstWrite -1}
		in2_V {Type I LastRead 0 FirstWrite -1}}
	multiply_accumulate {
		CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read {Type I LastRead 0 FirstWrite -1}
		in1_V {Type I LastRead 0 FirstWrite -1}
		in2_V {Type I LastRead 0 FirstWrite -1}}
	multiply_accumulate {
		CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read {Type I LastRead 0 FirstWrite -1}
		in1_V {Type I LastRead 0 FirstWrite -1}
		in2_V {Type I LastRead 0 FirstWrite -1}}
	multiply_accumulate {
		CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read {Type I LastRead 0 FirstWrite -1}
		in1_V {Type I LastRead 0 FirstWrite -1}
		in2_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1705", "Max" : "1705"}
	, {"Name" : "Interval", "Min" : "1705", "Max" : "1705"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
]}

set Spec2ImplPortList { 
	data_in_V_V { ap_fifo {  { data_in_V_V_dout fifo_data 0 16 }  { data_in_V_V_empty_n fifo_status 0 1 }  { data_in_V_V_read fifo_update 1 1 } } }
	data_out_V_V { ap_fifo {  { data_out_V_V_din fifo_data 1 16 }  { data_out_V_V_full_n fifo_status 0 1 }  { data_out_V_V_write fifo_update 1 1 } } }
}
