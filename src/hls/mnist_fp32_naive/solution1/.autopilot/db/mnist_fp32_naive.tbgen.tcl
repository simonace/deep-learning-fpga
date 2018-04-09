set C_TypeInfoList {{ 
"mnist_fp32_naive" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"sdata_in": [[], {"reference": "0"}] }, {"sdata_out": [[], {"reference": "0"}] }],[],""], 
"0": [ "stream<ap_axiu<32, 1, 1, 1> >", {"hls_type": {"stream": [[[[],"1"]],"2"]}}], 
"1": [ "ap_axiu<32, 1, 1, 1>", {"struct": [[],[{"D":[[], {"scalar": { "int": 32}}]},{"U":[[], {"scalar": { "int": 1}}]},{"TI":[[], {"scalar": { "int": 1}}]},{"TD":[[], {"scalar": { "int": 1}}]}],[{ "data": [[], "3"]},{ "keep": [[], "4"]},{ "strb": [[], "4"]},{ "user": [[], "5"]},{ "last": [[], "5"]},{ "id": [[], "5"]},{ "dest": [[], "5"]}],""]}], 
"3": [ "ap_uint<32>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 32}}]],""]}}], 
"4": [ "ap_uint<4>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 4}}]],""]}}], 
"5": [ "ap_uint<1>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 1}}]],""]}}],
"2": ["hls", ""]
}}
set moduleName mnist_fp32_naive
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {mnist_fp32_naive}
set C_modelType { void 0 }
set C_modelArgList {
	{ sdata_in_V_data_V int 32 regular {axi_s 0 volatile  { sdata_in Data } }  }
	{ sdata_in_V_keep_V int 4 regular {axi_s 0 volatile  { sdata_in Keep } }  }
	{ sdata_in_V_strb_V int 4 regular {axi_s 0 volatile  { sdata_in Strb } }  }
	{ sdata_in_V_user_V int 1 regular {axi_s 0 volatile  { sdata_in User } }  }
	{ sdata_in_V_last_V int 1 regular {axi_s 0 volatile  { sdata_in Last } }  }
	{ sdata_in_V_id_V int 1 regular {axi_s 0 volatile  { sdata_in ID } }  }
	{ sdata_in_V_dest_V int 1 regular {axi_s 0 volatile  { sdata_in Dest } }  }
	{ sdata_out_V_data_V int 32 regular {axi_s 1 volatile  { sdata_out Data } }  }
	{ sdata_out_V_keep_V int 4 regular {axi_s 1 volatile  { sdata_out Keep } }  }
	{ sdata_out_V_strb_V int 4 regular {axi_s 1 volatile  { sdata_out Strb } }  }
	{ sdata_out_V_user_V int 1 regular {axi_s 1 volatile  { sdata_out User } }  }
	{ sdata_out_V_last_V int 1 regular {axi_s 1 volatile  { sdata_out Last } }  }
	{ sdata_out_V_id_V int 1 regular {axi_s 1 volatile  { sdata_out ID } }  }
	{ sdata_out_V_dest_V int 1 regular {axi_s 1 volatile  { sdata_out Dest } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sdata_in_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "sdata_in.V.data.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "sdata_in_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "sdata_in.V.keep.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "sdata_in_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "sdata_in.V.strb.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "sdata_in_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "sdata_in.V.user.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "sdata_in_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "sdata_in.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "sdata_in_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "sdata_in.V.id.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "sdata_in_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "sdata_in.V.dest.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "sdata_out_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "sdata_out.V.data.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "sdata_out_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "sdata_out.V.keep.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "sdata_out_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "sdata_out.V.strb.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "sdata_out_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "sdata_out.V.user.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "sdata_out_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "sdata_out.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "sdata_out_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "sdata_out.V.id.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "sdata_out_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "sdata_out.V.dest.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ sdata_in_TDATA sc_in sc_lv 32 signal 0 } 
	{ sdata_in_TKEEP sc_in sc_lv 4 signal 1 } 
	{ sdata_in_TSTRB sc_in sc_lv 4 signal 2 } 
	{ sdata_in_TUSER sc_in sc_lv 1 signal 3 } 
	{ sdata_in_TLAST sc_in sc_lv 1 signal 4 } 
	{ sdata_in_TID sc_in sc_lv 1 signal 5 } 
	{ sdata_in_TDEST sc_in sc_lv 1 signal 6 } 
	{ sdata_out_TDATA sc_out sc_lv 32 signal 7 } 
	{ sdata_out_TKEEP sc_out sc_lv 4 signal 8 } 
	{ sdata_out_TSTRB sc_out sc_lv 4 signal 9 } 
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
	{ "name": "sdata_in_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sdata_in_V_data_V", "role": "default" }} , 
 	{ "name": "sdata_in_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "sdata_in_V_keep_V", "role": "default" }} , 
 	{ "name": "sdata_in_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "sdata_in_V_strb_V", "role": "default" }} , 
 	{ "name": "sdata_in_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sdata_in_V_user_V", "role": "default" }} , 
 	{ "name": "sdata_in_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sdata_in_V_last_V", "role": "default" }} , 
 	{ "name": "sdata_in_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sdata_in_V_id_V", "role": "default" }} , 
 	{ "name": "sdata_in_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sdata_in_V_dest_V", "role": "default" }} , 
 	{ "name": "sdata_out_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sdata_out_V_data_V", "role": "default" }} , 
 	{ "name": "sdata_out_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "sdata_out_V_keep_V", "role": "default" }} , 
 	{ "name": "sdata_out_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "sdata_out_V_strb_V", "role": "default" }} , 
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "32", "34", "42", "46", "47", "48", "49", "50", "51", "52", "53"],
		"CDFG" : "mnist_fp32_naive",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"FunctionPipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"InputProcess" : [
			{"ID" : "1", "Name" : "unpacker_U0"}],
		"OutputProcess" : [
			{"ID" : "42", "Name" : "packer_U0"}],
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
					{"ID" : "42", "SubInstance" : "packer_U0", "Port" : "stream_out_V_data_V"}]},
			{"Name" : "sdata_out_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "packer_U0", "Port" : "stream_out_V_keep_V"}]},
			{"Name" : "sdata_out_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "packer_U0", "Port" : "stream_out_V_strb_V"}]},
			{"Name" : "sdata_out_V_user_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "packer_U0", "Port" : "stream_out_V_user_V"}]},
			{"Name" : "sdata_out_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "packer_U0", "Port" : "stream_out_V_last_V"}]},
			{"Name" : "sdata_out_V_id_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "packer_U0", "Port" : "stream_out_V_id_V"}]},
			{"Name" : "sdata_out_V_dest_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "packer_U0", "Port" : "stream_out_V_dest_V"}]},
			{"Name" : "L1_WEIGHTS", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "linear_activation_U0", "Port" : "L1_WEIGHTS"}]},
			{"Name" : "L1_BIAS", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "linear_activation_U0", "Port" : "L1_BIAS"}]},
			{"Name" : "L2_WEIGHTS", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "linear_activation_1_U0", "Port" : "L2_WEIGHTS"}]},
			{"Name" : "L2_BIAS", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "linear_activation_1_U0", "Port" : "L2_BIAS"}]}]},
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
			{"Name" : "stream_out_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "46",
				"BlockSignal" : [
					{"Name" : "stream_out_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0", "Parent" : "0", "Child" : ["3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31"],
		"CDFG" : "linear_activation",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"StartSource" : "1",
		"StartFifo" : "start_for_linear_mb6_U",
		"Port" : [
			{"Name" : "data_in_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "46",
				"BlockSignal" : [
					{"Name" : "data_in_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_out_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "32", "DependentChan" : "47",
				"BlockSignal" : [
					{"Name" : "data_out_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "L1_WEIGHTS", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_BIAS", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.L1_WEIGHTS_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.L1_BIAS_U", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_fp32_naive_dEe_U9", "Parent" : "2"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_fp32_naive_dEe_U10", "Parent" : "2"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_fp32_naive_dEe_U11", "Parent" : "2"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_fp32_naive_dEe_U12", "Parent" : "2"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_fp32_naive_dEe_U13", "Parent" : "2"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_fp32_naive_dEe_U14", "Parent" : "2"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_fp32_naive_dEe_U15", "Parent" : "2"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_fp32_naive_dEe_U16", "Parent" : "2"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_fp32_naive_dEe_U17", "Parent" : "2"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_fp32_naive_dEe_U18", "Parent" : "2"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_fp32_naive_dEe_U19", "Parent" : "2"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_fp32_naive_dEe_U20", "Parent" : "2"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_fp32_naive_dEe_U21", "Parent" : "2"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_fp32_naive_eOg_U22", "Parent" : "2"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_fp32_naive_eOg_U23", "Parent" : "2"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_fp32_naive_eOg_U24", "Parent" : "2"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_fp32_naive_eOg_U25", "Parent" : "2"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_fp32_naive_eOg_U26", "Parent" : "2"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_fp32_naive_eOg_U27", "Parent" : "2"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_fp32_naive_eOg_U28", "Parent" : "2"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_fp32_naive_eOg_U29", "Parent" : "2"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_fp32_naive_eOg_U30", "Parent" : "2"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_fp32_naive_eOg_U31", "Parent" : "2"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_fp32_naive_eOg_U32", "Parent" : "2"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_fp32_naive_eOg_U33", "Parent" : "2"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_fp32_naive_eOg_U34", "Parent" : "2"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_fp32_naive_fYi_U35", "Parent" : "2"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.relu_U0", "Parent" : "0", "Child" : ["33"],
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
			{"Name" : "data_in_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "47",
				"BlockSignal" : [
					{"Name" : "data_in_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_out_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "34", "DependentChan" : "48",
				"BlockSignal" : [
					{"Name" : "data_out_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.relu_U0.mnist_fp32_naive_g8j_U43", "Parent" : "32"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.linear_activation_1_U0", "Parent" : "0", "Child" : ["35", "36", "37", "38", "39", "40", "41"],
		"CDFG" : "linear_activation_1",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"StartSource" : "32",
		"StartFifo" : "start_for_linear_ncg_U",
		"Port" : [
			{"Name" : "data_in_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "32", "DependentChan" : "48",
				"BlockSignal" : [
					{"Name" : "data_in_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_out_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "42", "DependentChan" : "49",
				"BlockSignal" : [
					{"Name" : "data_out_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "L2_WEIGHTS", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_BIAS", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_1_U0.L2_WEIGHTS_U", "Parent" : "34"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_1_U0.L2_BIAS_U", "Parent" : "34"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_1_U0.mnist_fp32_naive_dEe_U47", "Parent" : "34"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_1_U0.mnist_fp32_naive_dEe_U48", "Parent" : "34"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_1_U0.mnist_fp32_naive_eOg_U49", "Parent" : "34"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_1_U0.mnist_fp32_naive_eOg_U50", "Parent" : "34"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_1_U0.mnist_fp32_naive_jbC_U51", "Parent" : "34"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.packer_U0", "Parent" : "0", "Child" : ["43", "44", "45"],
		"CDFG" : "packer",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"StartSource" : "34",
		"StartFifo" : "start_for_packer_U0_U",
		"Port" : [
			{"Name" : "stream_in_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "49",
				"BlockSignal" : [
					{"Name" : "stream_in_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stream_out_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "sdata_out_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stream_out_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "stream_out_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "stream_out_V_user_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "stream_out_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "stream_out_V_id_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "stream_out_V_dest_V", "Type" : "Axis", "Direction" : "O"}]},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.packer_U0.packet_user_V_U", "Parent" : "42"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.packer_U0.packet_id_V_U", "Parent" : "42"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.packer_U0.packet_dest_V_U", "Parent" : "42"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_in_V_U", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.l1_result_V_U", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.l1_relu_V_U", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_out_V_U", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_linear_mb6_U", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_relu_U0_U", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_linear_ncg_U", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_packer_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	mnist_fp32_naive {
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
		L1_WEIGHTS {Type I LastRead -1 FirstWrite -1}
		L1_BIAS {Type I LastRead -1 FirstWrite -1}
		L2_WEIGHTS {Type I LastRead -1 FirstWrite -1}
		L2_BIAS {Type I LastRead -1 FirstWrite -1}}
	unpacker {
		stream_in_V_data_V {Type I LastRead 1 FirstWrite -1}
		stream_in_V_keep_V {Type I LastRead 1 FirstWrite -1}
		stream_in_V_strb_V {Type I LastRead 1 FirstWrite -1}
		stream_in_V_user_V {Type I LastRead 1 FirstWrite -1}
		stream_in_V_last_V {Type I LastRead 1 FirstWrite -1}
		stream_in_V_id_V {Type I LastRead 1 FirstWrite -1}
		stream_in_V_dest_V {Type I LastRead 1 FirstWrite -1}
		stream_out_V {Type O LastRead -1 FirstWrite 2}}
	linear_activation {
		data_in_V {Type I LastRead 2 FirstWrite -1}
		data_out_V {Type O LastRead -1 FirstWrite 10}
		L1_WEIGHTS {Type I LastRead -1 FirstWrite -1}
		L1_BIAS {Type I LastRead -1 FirstWrite -1}}
	relu {
		data_in_V {Type I LastRead 1 FirstWrite -1}
		data_out_V {Type O LastRead -1 FirstWrite 2}}
	linear_activation_1 {
		data_in_V {Type I LastRead 2 FirstWrite -1}
		data_out_V {Type O LastRead -1 FirstWrite 10}
		L2_WEIGHTS {Type I LastRead -1 FirstWrite -1}
		L2_BIAS {Type I LastRead -1 FirstWrite -1}}
	packer {
		stream_in_V {Type I LastRead 2 FirstWrite -1}
		stream_out_V_data_V {Type O LastRead -1 FirstWrite 2}
		stream_out_V_keep_V {Type O LastRead -1 FirstWrite 2}
		stream_out_V_strb_V {Type O LastRead -1 FirstWrite 2}
		stream_out_V_user_V {Type O LastRead -1 FirstWrite 2}
		stream_out_V_last_V {Type O LastRead -1 FirstWrite 2}
		stream_out_V_id_V {Type O LastRead -1 FirstWrite 2}
		stream_out_V_dest_V {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4004", "Max" : "4004"}
	, {"Name" : "Interval", "Min" : "4004", "Max" : "4004"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	sdata_in_V_data_V { axis {  { sdata_in_TDATA in_data 0 32 } } }
	sdata_in_V_keep_V { axis {  { sdata_in_TKEEP in_data 0 4 } } }
	sdata_in_V_strb_V { axis {  { sdata_in_TSTRB in_data 0 4 } } }
	sdata_in_V_user_V { axis {  { sdata_in_TUSER in_data 0 1 } } }
	sdata_in_V_last_V { axis {  { sdata_in_TLAST in_data 0 1 } } }
	sdata_in_V_id_V { axis {  { sdata_in_TID in_data 0 1 } } }
	sdata_in_V_dest_V { axis {  { sdata_in_TDEST in_data 0 1 }  { sdata_in_TVALID in_vld 0 1 }  { sdata_in_TREADY in_acc 1 1 } } }
	sdata_out_V_data_V { axis {  { sdata_out_TDATA out_data 1 32 } } }
	sdata_out_V_keep_V { axis {  { sdata_out_TKEEP out_data 1 4 } } }
	sdata_out_V_strb_V { axis {  { sdata_out_TSTRB out_data 1 4 } } }
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
