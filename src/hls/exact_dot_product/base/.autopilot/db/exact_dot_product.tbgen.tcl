set C_TypeInfoList {{ 
"exact_dot_product" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"data_in": [[], {"reference": "0"}] }, {"data_out": [[], {"reference": "0"}] }],[],""], 
"0": [ "stream<ap_uint<16> >", {"hls_type": {"stream": [[[[],"1"]],"2"]}}], 
"1": [ "ap_uint<16>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 16}}]],""]}}],
"2": ["hls", ""]
}}
set moduleName exact_dot_product
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {exact_dot_product}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_in_V_V int 16 regular {axi_s 0 volatile  { data_in_V_V Data } }  }
	{ data_out_V_V int 16 regular {axi_s 1 volatile  { data_out_V_V Data } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_in_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "data_in.V.V","cData": "uint16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "data_out_V_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "data_out.V.V","cData": "uint16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 8
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ data_in_V_V_TDATA sc_in sc_lv 16 signal 0 } 
	{ data_in_V_V_TVALID sc_in sc_logic 1 invld 0 } 
	{ data_in_V_V_TREADY sc_out sc_logic 1 inacc 0 } 
	{ data_out_V_V_TDATA sc_out sc_lv 16 signal 1 } 
	{ data_out_V_V_TVALID sc_out sc_logic 1 outvld 1 } 
	{ data_out_V_V_TREADY sc_in sc_logic 1 outacc 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "data_in_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "data_in_V_V", "role": "TDATA" }} , 
 	{ "name": "data_in_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "data_in_V_V", "role": "TVALID" }} , 
 	{ "name": "data_in_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "data_in_V_V", "role": "TREADY" }} , 
 	{ "name": "data_out_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "data_out_V_V", "role": "TDATA" }} , 
 	{ "name": "data_out_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_out_V_V", "role": "TVALID" }} , 
 	{ "name": "data_out_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "data_out_V_V", "role": "TREADY" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "exact_dot_product",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_get_result_fu_110"}],
		"Port" : [
			{"Name" : "data_in_V_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "data_in_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_out_V_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "data_out_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_get_result_fu_110", "Parent" : "0",
		"CDFG" : "get_result",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "CompleteRegister_m_cr_V_read", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	exact_dot_product {
		data_in_V_V {Type I LastRead 1 FirstWrite -1}
		data_out_V_V {Type O LastRead -1 FirstWrite 3}}
	get_result {
		CompleteRegister_m_cr_V_read {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "108", "Max" : "131"}
	, {"Name" : "Interval", "Min" : "109", "Max" : "132"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	data_in_V_V { axis {  { data_in_V_V_TDATA in_data 0 16 }  { data_in_V_V_TVALID in_vld 0 1 }  { data_in_V_V_TREADY in_acc 1 1 } } }
	data_out_V_V { axis {  { data_out_V_V_TDATA out_data 1 16 }  { data_out_V_V_TVALID out_vld 1 1 }  { data_out_V_V_TREADY out_acc 0 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
