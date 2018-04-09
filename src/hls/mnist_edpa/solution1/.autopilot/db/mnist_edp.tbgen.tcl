set C_TypeInfoList {{ 
"mnist_edp" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"sdata_in": [[], {"reference": "0"}] }, {"sdata_out": [[], {"reference": "0"}] }],[],""], 
"0": [ "stream<ap_axiu<16, 1, 1, 1> >", {"hls_type": {"stream": [[[[],"1"]],"2"]}}], 
"1": [ "ap_axiu<16, 1, 1, 1>", {"struct": [[],[{"D":[[], {"scalar": { "int": 16}}]},{"U":[[], {"scalar": { "int": 1}}]},{"TI":[[], {"scalar": { "int": 1}}]},{"TD":[[], {"scalar": { "int": 1}}]}],[{ "data": [[], "3"]},{ "keep": [[], "4"]},{ "strb": [[], "4"]},{ "user": [[], "5"]},{ "last": [[], "5"]},{ "id": [[], "5"]},{ "dest": [[], "5"]}],""]}], 
"3": [ "ap_uint<16>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 16}}]],""]}}], 
"4": [ "ap_uint<2>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 2}}]],""]}}], 
"5": [ "ap_uint<1>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 1}}]],""]}}],
"2": ["hls", ""]
}}
set moduleName mnist_edp
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {mnist_edp}
set C_modelType { void 0 }
set C_modelArgList {
	{ sdata_in_V_data_V int 16 regular {axi_s 0 volatile  { sdata_in Data } }  }
	{ sdata_in_V_keep_V int 2 regular {axi_s 0 volatile  { sdata_in Keep } }  }
	{ sdata_in_V_strb_V int 2 regular {axi_s 0 volatile  { sdata_in Strb } }  }
	{ sdata_in_V_user_V int 1 regular {axi_s 0 volatile  { sdata_in User } }  }
	{ sdata_in_V_last_V int 1 regular {axi_s 0 volatile  { sdata_in Last } }  }
	{ sdata_in_V_id_V int 1 regular {axi_s 0 volatile  { sdata_in ID } }  }
	{ sdata_in_V_dest_V int 1 regular {axi_s 0 volatile  { sdata_in Dest } }  }
	{ sdata_out_V_data_V int 16 regular {axi_s 1 volatile  { sdata_out Data } }  }
	{ sdata_out_V_keep_V int 2 regular {axi_s 1 volatile  { sdata_out Keep } }  }
	{ sdata_out_V_strb_V int 2 regular {axi_s 1 volatile  { sdata_out Strb } }  }
	{ sdata_out_V_user_V int 1 regular {axi_s 1 volatile  { sdata_out User } }  }
	{ sdata_out_V_last_V int 1 regular {axi_s 1 volatile  { sdata_out Last } }  }
	{ sdata_out_V_id_V int 1 regular {axi_s 1 volatile  { sdata_out ID } }  }
	{ sdata_out_V_dest_V int 1 regular {axi_s 1 volatile  { sdata_out Dest } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sdata_in_V_data_V", "interface" : "axis", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "sdata_in.V.data.V","cData": "uint16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "sdata_in_V_keep_V", "interface" : "axis", "bitwidth" : 2, "direction" : "READONLY", "bitSlice":[{"low":0,"up":1,"cElement": [{"cName": "sdata_in.V.keep.V","cData": "uint2","bit_use": { "low": 0,"up": 1},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "sdata_in_V_strb_V", "interface" : "axis", "bitwidth" : 2, "direction" : "READONLY", "bitSlice":[{"low":0,"up":1,"cElement": [{"cName": "sdata_in.V.strb.V","cData": "uint2","bit_use": { "low": 0,"up": 1},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "sdata_in_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "sdata_in.V.user.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "sdata_in_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "sdata_in.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "sdata_in_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "sdata_in.V.id.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "sdata_in_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "sdata_in.V.dest.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "sdata_out_V_data_V", "interface" : "axis", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "sdata_out.V.data.V","cData": "uint16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "sdata_out_V_keep_V", "interface" : "axis", "bitwidth" : 2, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":1,"cElement": [{"cName": "sdata_out.V.keep.V","cData": "uint2","bit_use": { "low": 0,"up": 1},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "sdata_out_V_strb_V", "interface" : "axis", "bitwidth" : 2, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":1,"cElement": [{"cName": "sdata_out.V.strb.V","cData": "uint2","bit_use": { "low": 0,"up": 1},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "sdata_out_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "sdata_out.V.user.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "sdata_out_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "sdata_out.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "sdata_out_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "sdata_out.V.id.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "sdata_out_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "sdata_out.V.dest.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ sdata_in_TDATA sc_in sc_lv 16 signal 0 } 
	{ sdata_in_TKEEP sc_in sc_lv 2 signal 1 } 
	{ sdata_in_TSTRB sc_in sc_lv 2 signal 2 } 
	{ sdata_in_TUSER sc_in sc_lv 1 signal 3 } 
	{ sdata_in_TLAST sc_in sc_lv 1 signal 4 } 
	{ sdata_in_TID sc_in sc_lv 1 signal 5 } 
	{ sdata_in_TDEST sc_in sc_lv 1 signal 6 } 
	{ sdata_out_TDATA sc_out sc_lv 16 signal 7 } 
	{ sdata_out_TKEEP sc_out sc_lv 2 signal 8 } 
	{ sdata_out_TSTRB sc_out sc_lv 2 signal 9 } 
	{ sdata_out_TUSER sc_out sc_lv 1 signal 10 } 
	{ sdata_out_TLAST sc_out sc_lv 1 signal 11 } 
	{ sdata_out_TID sc_out sc_lv 1 signal 12 } 
	{ sdata_out_TDEST sc_out sc_lv 1 signal 13 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ sdata_in_TVALID sc_in sc_logic 1 invld 6 } 
	{ sdata_in_TREADY sc_out sc_logic 1 inacc 6 } 
	{ sdata_out_TVALID sc_out sc_logic 1 outvld 13 } 
	{ sdata_out_TREADY sc_in sc_logic 1 outacc 13 } 
}
set NewPortList {[ 
	{ "name": "sdata_in_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sdata_in_V_data_V", "role": "default" }} , 
 	{ "name": "sdata_in_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sdata_in_V_keep_V", "role": "default" }} , 
 	{ "name": "sdata_in_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sdata_in_V_strb_V", "role": "default" }} , 
 	{ "name": "sdata_in_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sdata_in_V_user_V", "role": "default" }} , 
 	{ "name": "sdata_in_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sdata_in_V_last_V", "role": "default" }} , 
 	{ "name": "sdata_in_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sdata_in_V_id_V", "role": "default" }} , 
 	{ "name": "sdata_in_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sdata_in_V_dest_V", "role": "default" }} , 
 	{ "name": "sdata_out_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sdata_out_V_data_V", "role": "default" }} , 
 	{ "name": "sdata_out_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sdata_out_V_keep_V", "role": "default" }} , 
 	{ "name": "sdata_out_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sdata_out_V_strb_V", "role": "default" }} , 
 	{ "name": "sdata_out_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sdata_out_V_user_V", "role": "default" }} , 
 	{ "name": "sdata_out_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sdata_out_V_last_V", "role": "default" }} , 
 	{ "name": "sdata_out_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sdata_out_V_id_V", "role": "default" }} , 
 	{ "name": "sdata_out_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sdata_out_V_dest_V", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "sdata_in_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "sdata_in_V_dest_V", "role": "default" }} , 
 	{ "name": "sdata_in_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "sdata_in_V_dest_V", "role": "default" }} , 
 	{ "name": "sdata_out_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "sdata_out_V_dest_V", "role": "default" }} , 
 	{ "name": "sdata_out_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "sdata_out_V_dest_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "71", "72", "87", "91", "92", "93", "94", "95", "96", "97", "98"],
		"CDFG" : "mnist_edp",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"FunctionPipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"InputProcess" : [
			{"ID" : "1", "Name" : "unpacker_U0"}],
		"OutputProcess" : [
			{"ID" : "87", "Name" : "packer_U0"}],
		"Port" : [
			{"Name" : "sdata_in_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "unpacker_U0", "Port" : "stream_in_V_data_V"}]},
			{"Name" : "sdata_in_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "unpacker_U0", "Port" : "stream_in_V_keep_V"}]},
			{"Name" : "sdata_in_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "unpacker_U0", "Port" : "stream_in_V_strb_V"}]},
			{"Name" : "sdata_in_V_user_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "unpacker_U0", "Port" : "stream_in_V_user_V"}]},
			{"Name" : "sdata_in_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "unpacker_U0", "Port" : "stream_in_V_last_V"}]},
			{"Name" : "sdata_in_V_id_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "unpacker_U0", "Port" : "stream_in_V_id_V"}]},
			{"Name" : "sdata_in_V_dest_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "unpacker_U0", "Port" : "stream_in_V_dest_V"}]},
			{"Name" : "sdata_out_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "packer_U0", "Port" : "stream_out_V_data_V"}]},
			{"Name" : "sdata_out_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "packer_U0", "Port" : "stream_out_V_keep_V"}]},
			{"Name" : "sdata_out_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "packer_U0", "Port" : "stream_out_V_strb_V"}]},
			{"Name" : "sdata_out_V_user_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "packer_U0", "Port" : "stream_out_V_user_V"}]},
			{"Name" : "sdata_out_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "packer_U0", "Port" : "stream_out_V_last_V"}]},
			{"Name" : "sdata_out_V_id_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "packer_U0", "Port" : "stream_out_V_id_V"}]},
			{"Name" : "sdata_out_V_dest_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "packer_U0", "Port" : "stream_out_V_dest_V"}]},
			{"Name" : "L1_WEIGHTS_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "linear_activation_U0", "Port" : "L1_WEIGHTS_V"}]},
			{"Name" : "L1_BIAS_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "linear_activation_U0", "Port" : "L1_BIAS_V"}]},
			{"Name" : "L2_WEIGHTS_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "linear_activation_1_U0", "Port" : "L2_WEIGHTS_V"}]},
			{"Name" : "L2_BIAS_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "linear_activation_1_U0", "Port" : "L2_BIAS_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.unpacker_U0", "Parent" : "0",
		"CDFG" : "unpacker",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "stream_in_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "sdata_in_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stream_in_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "stream_in_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "stream_in_V_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "stream_in_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "stream_in_V_id_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "stream_in_V_dest_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "stream_out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "91",
				"BlockSignal" : [
					{"Name" : "stream_out_V_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0", "Parent" : "0", "Child" : ["3", "4", "5", "6", "8", "10", "12", "14", "16", "18", "20", "22", "24", "26", "28", "30", "32", "34", "36", "38", "40", "42", "44", "46", "48", "50", "52", "54", "56", "58", "60", "62", "64", "66", "68", "70"],
		"CDFG" : "linear_activation",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"StartSource" : "1",
		"StartFifo" : "start_for_linear_kbM_U",
		"Port" : [
			{"Name" : "data_in_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "91",
				"BlockSignal" : [
					{"Name" : "data_in_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "71", "DependentChan" : "92",
				"BlockSignal" : [
					{"Name" : "data_out_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "L1_WEIGHTS_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_BIAS_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.L1_WEIGHTS_V_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.L1_BIAS_V_U", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.grp_get_result_fu_1555", "Parent" : "2",
		"CDFG" : "get_result",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"FunctionPipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.grp_multiply_accumulate_fu_1561", "Parent" : "2", "Child" : ["7"],
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
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.grp_multiply_accumulate_fu_1561.mnist_edp_mul_mulbkb_U9", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.grp_multiply_accumulate_fu_1569", "Parent" : "2", "Child" : ["9"],
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
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.grp_multiply_accumulate_fu_1569.mnist_edp_mul_mulbkb_U9", "Parent" : "8"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.grp_multiply_accumulate_fu_1577", "Parent" : "2", "Child" : ["11"],
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
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.grp_multiply_accumulate_fu_1577.mnist_edp_mul_mulbkb_U9", "Parent" : "10"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.grp_multiply_accumulate_fu_1585", "Parent" : "2", "Child" : ["13"],
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
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.grp_multiply_accumulate_fu_1585.mnist_edp_mul_mulbkb_U9", "Parent" : "12"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.grp_multiply_accumulate_fu_1593", "Parent" : "2", "Child" : ["15"],
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
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.grp_multiply_accumulate_fu_1593.mnist_edp_mul_mulbkb_U9", "Parent" : "14"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.grp_multiply_accumulate_fu_1601", "Parent" : "2", "Child" : ["17"],
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
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.grp_multiply_accumulate_fu_1601.mnist_edp_mul_mulbkb_U9", "Parent" : "16"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.grp_multiply_accumulate_fu_1609", "Parent" : "2", "Child" : ["19"],
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
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.grp_multiply_accumulate_fu_1609.mnist_edp_mul_mulbkb_U9", "Parent" : "18"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.grp_multiply_accumulate_fu_1617", "Parent" : "2", "Child" : ["21"],
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
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.grp_multiply_accumulate_fu_1617.mnist_edp_mul_mulbkb_U9", "Parent" : "20"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.grp_multiply_accumulate_fu_1625", "Parent" : "2", "Child" : ["23"],
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
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.grp_multiply_accumulate_fu_1625.mnist_edp_mul_mulbkb_U9", "Parent" : "22"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.grp_multiply_accumulate_fu_1633", "Parent" : "2", "Child" : ["25"],
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
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.grp_multiply_accumulate_fu_1633.mnist_edp_mul_mulbkb_U9", "Parent" : "24"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.grp_multiply_accumulate_fu_1641", "Parent" : "2", "Child" : ["27"],
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
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.grp_multiply_accumulate_fu_1641.mnist_edp_mul_mulbkb_U9", "Parent" : "26"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.grp_multiply_accumulate_fu_1649", "Parent" : "2", "Child" : ["29"],
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
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.grp_multiply_accumulate_fu_1649.mnist_edp_mul_mulbkb_U9", "Parent" : "28"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.grp_multiply_accumulate_fu_1657", "Parent" : "2", "Child" : ["31"],
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
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.grp_multiply_accumulate_fu_1657.mnist_edp_mul_mulbkb_U9", "Parent" : "30"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.grp_multiply_accumulate_fu_1665", "Parent" : "2", "Child" : ["33"],
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
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.grp_multiply_accumulate_fu_1665.mnist_edp_mul_mulbkb_U9", "Parent" : "32"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.grp_multiply_accumulate_fu_1673", "Parent" : "2", "Child" : ["35"],
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
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.grp_multiply_accumulate_fu_1673.mnist_edp_mul_mulbkb_U9", "Parent" : "34"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.grp_multiply_accumulate_fu_1681", "Parent" : "2", "Child" : ["37"],
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
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.grp_multiply_accumulate_fu_1681.mnist_edp_mul_mulbkb_U9", "Parent" : "36"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.grp_multiply_accumulate_fu_1689", "Parent" : "2", "Child" : ["39"],
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
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.grp_multiply_accumulate_fu_1689.mnist_edp_mul_mulbkb_U9", "Parent" : "38"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.grp_multiply_accumulate_fu_1697", "Parent" : "2", "Child" : ["41"],
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
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.grp_multiply_accumulate_fu_1697.mnist_edp_mul_mulbkb_U9", "Parent" : "40"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.grp_multiply_accumulate_fu_1705", "Parent" : "2", "Child" : ["43"],
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
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.grp_multiply_accumulate_fu_1705.mnist_edp_mul_mulbkb_U9", "Parent" : "42"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.grp_multiply_accumulate_fu_1713", "Parent" : "2", "Child" : ["45"],
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
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.grp_multiply_accumulate_fu_1713.mnist_edp_mul_mulbkb_U9", "Parent" : "44"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.grp_multiply_accumulate_fu_1721", "Parent" : "2", "Child" : ["47"],
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
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.grp_multiply_accumulate_fu_1721.mnist_edp_mul_mulbkb_U9", "Parent" : "46"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.grp_multiply_accumulate_fu_1729", "Parent" : "2", "Child" : ["49"],
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
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.grp_multiply_accumulate_fu_1729.mnist_edp_mul_mulbkb_U9", "Parent" : "48"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.grp_multiply_accumulate_fu_1737", "Parent" : "2", "Child" : ["51"],
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
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.grp_multiply_accumulate_fu_1737.mnist_edp_mul_mulbkb_U9", "Parent" : "50"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.grp_multiply_accumulate_fu_1745", "Parent" : "2", "Child" : ["53"],
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
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.grp_multiply_accumulate_fu_1745.mnist_edp_mul_mulbkb_U9", "Parent" : "52"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.grp_multiply_accumulate_fu_1753", "Parent" : "2", "Child" : ["55"],
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
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.grp_multiply_accumulate_fu_1753.mnist_edp_mul_mulbkb_U9", "Parent" : "54"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.grp_multiply_accumulate_fu_1761", "Parent" : "2", "Child" : ["57"],
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
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.grp_multiply_accumulate_fu_1761.mnist_edp_mul_mulbkb_U9", "Parent" : "56"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.grp_multiply_accumulate_fu_1769", "Parent" : "2", "Child" : ["59"],
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
	{"ID" : "59", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.grp_multiply_accumulate_fu_1769.mnist_edp_mul_mulbkb_U9", "Parent" : "58"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.grp_multiply_accumulate_fu_1777", "Parent" : "2", "Child" : ["61"],
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
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.grp_multiply_accumulate_fu_1777.mnist_edp_mul_mulbkb_U9", "Parent" : "60"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.grp_multiply_accumulate_fu_1785", "Parent" : "2", "Child" : ["63"],
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
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.grp_multiply_accumulate_fu_1785.mnist_edp_mul_mulbkb_U9", "Parent" : "62"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.grp_multiply_accumulate_fu_1793", "Parent" : "2", "Child" : ["65"],
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
	{"ID" : "65", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.grp_multiply_accumulate_fu_1793.mnist_edp_mul_mulbkb_U9", "Parent" : "64"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.grp_multiply_accumulate_fu_1801", "Parent" : "2", "Child" : ["67"],
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
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.grp_multiply_accumulate_fu_1801.mnist_edp_mul_mulbkb_U9", "Parent" : "66"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.grp_multiply_accumulate_fu_1809", "Parent" : "2", "Child" : ["69"],
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
	{"ID" : "69", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.grp_multiply_accumulate_fu_1809.mnist_edp_mul_mulbkb_U9", "Parent" : "68"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_edp_mux_646eOg_U15", "Parent" : "2"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.relu_U0", "Parent" : "0",
		"CDFG" : "relu",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"StartSource" : "2",
		"StartFifo" : "start_for_relu_U0_U",
		"Port" : [
			{"Name" : "data_in_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "92",
				"BlockSignal" : [
					{"Name" : "data_in_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "72", "DependentChan" : "93",
				"BlockSignal" : [
					{"Name" : "data_out_V_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.linear_activation_1_U0", "Parent" : "0", "Child" : ["73", "74", "75", "76", "78", "80", "82", "84", "86"],
		"CDFG" : "linear_activation_1",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"StartSource" : "71",
		"StartFifo" : "start_for_linear_lbW_U",
		"Port" : [
			{"Name" : "data_in_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "71", "DependentChan" : "93",
				"BlockSignal" : [
					{"Name" : "data_in_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "87", "DependentChan" : "94",
				"BlockSignal" : [
					{"Name" : "data_out_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "L2_WEIGHTS_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_BIAS_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_1_U0.L2_WEIGHTS_V_U", "Parent" : "72"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_1_U0.L2_BIAS_V_U", "Parent" : "72"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_1_U0.grp_get_result_fu_434", "Parent" : "72",
		"CDFG" : "get_result",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"FunctionPipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "CompleteRegister_ap_uint_16_ap_uint_16_m_cr_V_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_1_U0.grp_multiply_accumulate_fu_440", "Parent" : "72", "Child" : ["77"],
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
	{"ID" : "77", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.linear_activation_1_U0.grp_multiply_accumulate_fu_440.mnist_edp_mul_mulbkb_U9", "Parent" : "76"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_1_U0.grp_multiply_accumulate_fu_448", "Parent" : "72", "Child" : ["79"],
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
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.linear_activation_1_U0.grp_multiply_accumulate_fu_448.mnist_edp_mul_mulbkb_U9", "Parent" : "78"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_1_U0.grp_multiply_accumulate_fu_456", "Parent" : "72", "Child" : ["81"],
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
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.linear_activation_1_U0.grp_multiply_accumulate_fu_456.mnist_edp_mul_mulbkb_U9", "Parent" : "80"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_1_U0.grp_multiply_accumulate_fu_464", "Parent" : "72", "Child" : ["83"],
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
	{"ID" : "83", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.linear_activation_1_U0.grp_multiply_accumulate_fu_464.mnist_edp_mul_mulbkb_U9", "Parent" : "82"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_1_U0.grp_multiply_accumulate_fu_472", "Parent" : "72", "Child" : ["85"],
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
	{"ID" : "85", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.linear_activation_1_U0.grp_multiply_accumulate_fu_472.mnist_edp_mul_mulbkb_U9", "Parent" : "84"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_1_U0.mnist_edp_mux_104hbi_U23", "Parent" : "72"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.packer_U0", "Parent" : "0", "Child" : ["88", "89", "90"],
		"CDFG" : "packer",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"StartSource" : "72",
		"StartFifo" : "start_for_packer_U0_U",
		"Port" : [
			{"Name" : "stream_in_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "72", "DependentChan" : "94",
				"BlockSignal" : [
					{"Name" : "stream_in_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stream_out_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "sdata_out_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stream_out_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "stream_out_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "stream_out_V_user_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "stream_out_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "stream_out_V_id_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "stream_out_V_dest_V", "Type" : "Axis", "Direction" : "O"}]},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.packer_U0.packet_user_V_U", "Parent" : "87"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.packer_U0.packet_id_V_U", "Parent" : "87"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.packer_U0.packet_dest_V_U", "Parent" : "87"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_in_V_V_U", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.l1_result_V_V_U", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.l1_relu_V_V_U", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_out_V_V_U", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_linear_kbM_U", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_relu_U0_U", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_linear_lbW_U", "Parent" : "0"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_packer_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	mnist_edp {
		sdata_in_V_data_V {Type I LastRead 1 FirstWrite -1}
		sdata_in_V_keep_V {Type I LastRead 1 FirstWrite -1}
		sdata_in_V_strb_V {Type I LastRead 1 FirstWrite -1}
		sdata_in_V_user_V {Type I LastRead 1 FirstWrite -1}
		sdata_in_V_last_V {Type I LastRead 1 FirstWrite -1}
		sdata_in_V_id_V {Type I LastRead 1 FirstWrite -1}
		sdata_in_V_dest_V {Type I LastRead 1 FirstWrite -1}
		sdata_out_V_data_V {Type O LastRead -1 FirstWrite 2}
		sdata_out_V_keep_V {Type O LastRead -1 FirstWrite 2}
		sdata_out_V_strb_V {Type O LastRead -1 FirstWrite 2}
		sdata_out_V_user_V {Type O LastRead -1 FirstWrite 2}
		sdata_out_V_last_V {Type O LastRead -1 FirstWrite 2}
		sdata_out_V_id_V {Type O LastRead -1 FirstWrite 2}
		sdata_out_V_dest_V {Type O LastRead -1 FirstWrite 2}
		L1_WEIGHTS_V {Type I LastRead -1 FirstWrite -1}
		L1_BIAS_V {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS_V {Type I LastRead -1 FirstWrite -1}
		L2_BIAS_V {Type I LastRead -1 FirstWrite -1}}
	unpacker {
		stream_in_V_data_V {Type I LastRead 1 FirstWrite -1}
		stream_in_V_keep_V {Type I LastRead 1 FirstWrite -1}
		stream_in_V_strb_V {Type I LastRead 1 FirstWrite -1}
		stream_in_V_user_V {Type I LastRead 1 FirstWrite -1}
		stream_in_V_last_V {Type I LastRead 1 FirstWrite -1}
		stream_in_V_id_V {Type I LastRead 1 FirstWrite -1}
		stream_in_V_dest_V {Type I LastRead 1 FirstWrite -1}
		stream_out_V_V {Type O LastRead -1 FirstWrite 2}}
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
		in2_V {Type I LastRead 0 FirstWrite -1}}
	relu {
		data_in_V_V {Type I LastRead 1 FirstWrite -1}
		data_out_V_V {Type O LastRead -1 FirstWrite 1}}
	linear_activation_1 {
		data_in_V_V {Type I LastRead 2 FirstWrite -1}
		data_out_V_V {Type O LastRead -1 FirstWrite 8}
		L2_WEIGHTS_V {Type I LastRead -1 FirstWrite -1}
		L2_BIAS_V {Type I LastRead -1 FirstWrite -1}}
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
	packer {
		stream_in_V_V {Type I LastRead 2 FirstWrite -1}
		stream_out_V_data_V {Type O LastRead -1 FirstWrite 2}
		stream_out_V_keep_V {Type O LastRead -1 FirstWrite 2}
		stream_out_V_strb_V {Type O LastRead -1 FirstWrite 2}
		stream_out_V_user_V {Type O LastRead -1 FirstWrite 2}
		stream_out_V_last_V {Type O LastRead -1 FirstWrite 2}
		stream_out_V_id_V {Type O LastRead -1 FirstWrite 2}
		stream_out_V_dest_V {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1706", "Max" : "1706"}
	, {"Name" : "Interval", "Min" : "1706", "Max" : "1706"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	sdata_in_V_data_V { axis {  { sdata_in_TDATA in_data 0 16 } } }
	sdata_in_V_keep_V { axis {  { sdata_in_TKEEP in_data 0 2 } } }
	sdata_in_V_strb_V { axis {  { sdata_in_TSTRB in_data 0 2 } } }
	sdata_in_V_user_V { axis {  { sdata_in_TUSER in_data 0 1 } } }
	sdata_in_V_last_V { axis {  { sdata_in_TLAST in_data 0 1 } } }
	sdata_in_V_id_V { axis {  { sdata_in_TID in_data 0 1 } } }
	sdata_in_V_dest_V { axis {  { sdata_in_TDEST in_data 0 1 }  { sdata_in_TVALID in_vld 0 1 }  { sdata_in_TREADY in_acc 1 1 } } }
	sdata_out_V_data_V { axis {  { sdata_out_TDATA out_data 1 16 } } }
	sdata_out_V_keep_V { axis {  { sdata_out_TKEEP out_data 1 2 } } }
	sdata_out_V_strb_V { axis {  { sdata_out_TSTRB out_data 1 2 } } }
	sdata_out_V_user_V { axis {  { sdata_out_TUSER out_data 1 1 } } }
	sdata_out_V_last_V { axis {  { sdata_out_TLAST out_data 1 1 } } }
	sdata_out_V_id_V { axis {  { sdata_out_TID out_data 1 1 } } }
	sdata_out_V_dest_V { axis {  { sdata_out_TDEST out_data 1 1 }  { sdata_out_TVALID out_vld 1 1 }  { sdata_out_TREADY out_acc 0 1 } } }
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
