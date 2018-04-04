set moduleName multiply_accumulate
set isCombinational 0
set isDatapathOnly 1
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {multiply_accumulate}
set C_modelType { int 128 }
set C_modelArgList {
	{ CompleteRegister_m_cr_V_read int 128 regular  }
	{ in1_V int 16 regular  }
	{ in2_V int 16 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "CompleteRegister_m_cr_V_read", "interface" : "wire", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "in1_V", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "in2_V", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 128} ]}
# RTL Port declarations: 
set portNum 7
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ CompleteRegister_m_cr_V_read sc_in sc_lv 128 signal 0 } 
	{ in1_V sc_in sc_lv 16 signal 1 } 
	{ in2_V sc_in sc_lv 16 signal 2 } 
	{ ap_return sc_out sc_lv 128 signal -1 } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "CompleteRegister_m_cr_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "CompleteRegister_m_cr_V_read", "role": "default" }} , 
 	{ "name": "in1_V", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "in1_V", "role": "default" }} , 
 	{ "name": "in2_V", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "in2_V", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "multiply_accumulate",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"FunctionPipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "CompleteRegister_m_cr_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in1_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "in2_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.neural_network_adbkb_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.neural_network_mucud_U2", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	multiply_accumulate {
		CompleteRegister_m_cr_V_read {Type I LastRead 0 FirstWrite -1}
		in1_V {Type I LastRead 0 FirstWrite -1}
		in2_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "6", "Max" : "6"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	CompleteRegister_m_cr_V_read { ap_none {  { CompleteRegister_m_cr_V_read in_data 0 128 } } }
	in1_V { ap_none {  { in1_V in_data 0 16 } } }
	in2_V { ap_none {  { in2_V in_data 0 16 } } }
}
