set C_TypeInfoList {{ 
"mnist" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"sdata_in": [[], {"reference": "0"}] }, {"sdata_out": [[], {"reference": "1"}] }],[],""], 
"0": [ "stream<ap_axis<8, 1, 1, 1> >", {"hls_type": {"stream": [[[[],"2"]],"3"]}}], 
"2": [ "ap_axis<8, 1, 1, 1>", {"struct": [[],[{"D":[[], {"scalar": { "int": 8}}]},{"U":[[], {"scalar": { "int": 1}}]},{"TI":[[], {"scalar": { "int": 1}}]},{"TD":[[], {"scalar": { "int": 1}}]}],[{ "data": [[], "4"]},{ "keep": [[], "5"]},{ "strb": [[], "5"]},{ "user": [[], "5"]},{ "last": [[], "5"]},{ "id": [[], "5"]},{ "dest": [[], "5"]}],""]}], 
"4": [ "ap_int<8>", {"hls_type": {"ap_int": [[[[], {"scalar": { "int": 8}}]],""]}}], 
"5": [ "ap_uint<1>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 1}}]],""]}}], 
"1": [ "stream<ap_axis<32, 1, 1, 1> >", {"hls_type": {"stream": [[[[],"6"]],"3"]}}], 
"6": [ "ap_axis<32, 1, 1, 1>", {"struct": [[],[{"D":[[], {"scalar": { "int": 32}}]},{"U":[[], {"scalar": { "int": 1}}]},{"TI":[[], {"scalar": { "int": 1}}]},{"TD":[[], {"scalar": { "int": 1}}]}],[{ "data": [[], "7"]},{ "keep": [[], "8"]},{ "strb": [[], "8"]},{ "user": [[], "5"]},{ "last": [[], "5"]},{ "id": [[], "5"]},{ "dest": [[], "5"]}],""]}], 
"8": [ "ap_uint<4>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 4}}]],""]}}], 
"7": [ "ap_int<32>", {"hls_type": {"ap_int": [[[[], {"scalar": { "int": 32}}]],""]}}],
"3": ["hls", ""]
}}
set moduleName mnist
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {mnist}
set C_modelType { void 0 }
set C_modelArgList {
	{ sdata_in_V_data_V int 8 regular {axi_s 0 volatile  { sdata_in Data } }  }
	{ sdata_in_V_keep_V int 1 regular {axi_s 0 volatile  { sdata_in Keep } }  }
	{ sdata_in_V_strb_V int 1 regular {axi_s 0 volatile  { sdata_in Strb } }  }
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
	{ "Name" : "sdata_in_V_data_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "sdata_in.V.data.V","cData": "int8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "sdata_in_V_keep_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "sdata_in.V.keep.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "sdata_in_V_strb_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "sdata_in.V.strb.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "sdata_in_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "sdata_in.V.user.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "sdata_in_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "sdata_in.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "sdata_in_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "sdata_in.V.id.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "sdata_in_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "sdata_in.V.dest.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "sdata_out_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "sdata_out.V.data.V","cData": "int32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "sdata_out_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "sdata_out.V.keep.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "sdata_out_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "sdata_out.V.strb.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "sdata_out_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "sdata_out.V.user.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "sdata_out_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "sdata_out.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "sdata_out_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "sdata_out.V.id.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "sdata_out_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "sdata_out.V.dest.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ sdata_in_TDATA sc_in sc_lv 8 signal 0 } 
	{ sdata_in_TKEEP sc_in sc_lv 1 signal 1 } 
	{ sdata_in_TSTRB sc_in sc_lv 1 signal 2 } 
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
	{ "name": "sdata_in_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sdata_in_V_data_V", "role": "default" }} , 
 	{ "name": "sdata_in_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sdata_in_V_keep_V", "role": "default" }} , 
 	{ "name": "sdata_in_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sdata_in_V_strb_V", "role": "default" }} , 
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "134", "135", "139", "144", "145", "146", "147", "148", "149", "150", "151"],
		"CDFG" : "mnist",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"FunctionPipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"InputProcess" : [
			{"ID" : "1", "Name" : "unpacker_U0"}],
		"OutputProcess" : [
			{"ID" : "139", "Name" : "packer_U0"}],
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
					{"ID" : "139", "SubInstance" : "packer_U0", "Port" : "stream_out_V_data_V"}]},
			{"Name" : "sdata_out_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "packer_U0", "Port" : "stream_out_V_keep_V"}]},
			{"Name" : "sdata_out_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "packer_U0", "Port" : "stream_out_V_strb_V"}]},
			{"Name" : "sdata_out_V_user_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "packer_U0", "Port" : "stream_out_V_user_V"}]},
			{"Name" : "sdata_out_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "packer_U0", "Port" : "stream_out_V_last_V"}]},
			{"Name" : "sdata_out_V_id_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "packer_U0", "Port" : "stream_out_V_id_V"}]},
			{"Name" : "sdata_out_V_dest_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "packer_U0", "Port" : "stream_out_V_dest_V"}]},
			{"Name" : "L1_WEIGHTS_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "linear_activation_U0", "Port" : "L1_WEIGHTS_V"}]},
			{"Name" : "L1_BIAS_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "linear_activation_U0", "Port" : "L1_BIAS_V"}]},
			{"Name" : "L2_WEIGHTS_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "135", "SubInstance" : "linear_activation_1_U0", "Port" : "L2_WEIGHTS_V"}]},
			{"Name" : "L2_BIAS_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "135", "SubInstance" : "linear_activation_1_U0", "Port" : "L2_BIAS_V"}]}]},
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
			{"Name" : "stream_out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "144",
				"BlockSignal" : [
					{"Name" : "stream_out_V_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0", "Parent" : "0", "Child" : ["3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133"],
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
			{"Name" : "data_in_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "144",
				"BlockSignal" : [
					{"Name" : "data_in_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "134", "DependentChan" : "145",
				"BlockSignal" : [
					{"Name" : "data_out_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "L1_WEIGHTS_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L1_BIAS_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.L1_WEIGHTS_V_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.L1_BIAS_V_U", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mux_1287_32dEe_U9", "Parent" : "2"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U10", "Parent" : "2"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U11", "Parent" : "2"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U12", "Parent" : "2"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U13", "Parent" : "2"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U14", "Parent" : "2"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U15", "Parent" : "2"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U16", "Parent" : "2"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U17", "Parent" : "2"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U18", "Parent" : "2"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U19", "Parent" : "2"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U20", "Parent" : "2"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U21", "Parent" : "2"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U22", "Parent" : "2"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U23", "Parent" : "2"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U24", "Parent" : "2"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U25", "Parent" : "2"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U26", "Parent" : "2"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U27", "Parent" : "2"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U28", "Parent" : "2"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U29", "Parent" : "2"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U30", "Parent" : "2"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U31", "Parent" : "2"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U32", "Parent" : "2"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U33", "Parent" : "2"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U34", "Parent" : "2"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U35", "Parent" : "2"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U36", "Parent" : "2"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U37", "Parent" : "2"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U38", "Parent" : "2"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U39", "Parent" : "2"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U40", "Parent" : "2"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U41", "Parent" : "2"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U42", "Parent" : "2"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U43", "Parent" : "2"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U44", "Parent" : "2"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U45", "Parent" : "2"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U46", "Parent" : "2"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U47", "Parent" : "2"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U48", "Parent" : "2"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U49", "Parent" : "2"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U50", "Parent" : "2"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U51", "Parent" : "2"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U52", "Parent" : "2"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U53", "Parent" : "2"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U54", "Parent" : "2"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U55", "Parent" : "2"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U56", "Parent" : "2"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U57", "Parent" : "2"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U58", "Parent" : "2"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U59", "Parent" : "2"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U60", "Parent" : "2"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U61", "Parent" : "2"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U62", "Parent" : "2"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U63", "Parent" : "2"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U64", "Parent" : "2"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U65", "Parent" : "2"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U66", "Parent" : "2"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U67", "Parent" : "2"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U68", "Parent" : "2"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U69", "Parent" : "2"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U70", "Parent" : "2"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U71", "Parent" : "2"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U72", "Parent" : "2"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U73", "Parent" : "2"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U74", "Parent" : "2"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U75", "Parent" : "2"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U76", "Parent" : "2"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U77", "Parent" : "2"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U78", "Parent" : "2"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U79", "Parent" : "2"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U80", "Parent" : "2"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U81", "Parent" : "2"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U82", "Parent" : "2"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U83", "Parent" : "2"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U84", "Parent" : "2"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U85", "Parent" : "2"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U86", "Parent" : "2"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U87", "Parent" : "2"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U88", "Parent" : "2"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U89", "Parent" : "2"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U90", "Parent" : "2"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U91", "Parent" : "2"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U92", "Parent" : "2"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U93", "Parent" : "2"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U94", "Parent" : "2"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U95", "Parent" : "2"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U96", "Parent" : "2"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U97", "Parent" : "2"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U98", "Parent" : "2"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U99", "Parent" : "2"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U100", "Parent" : "2"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U101", "Parent" : "2"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U102", "Parent" : "2"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U103", "Parent" : "2"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U104", "Parent" : "2"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U105", "Parent" : "2"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U106", "Parent" : "2"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U107", "Parent" : "2"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U108", "Parent" : "2"},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U109", "Parent" : "2"},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U110", "Parent" : "2"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U111", "Parent" : "2"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U112", "Parent" : "2"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U113", "Parent" : "2"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U114", "Parent" : "2"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U115", "Parent" : "2"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U116", "Parent" : "2"},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U117", "Parent" : "2"},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U118", "Parent" : "2"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U119", "Parent" : "2"},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U120", "Parent" : "2"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U121", "Parent" : "2"},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U122", "Parent" : "2"},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U123", "Parent" : "2"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U124", "Parent" : "2"},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U125", "Parent" : "2"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U126", "Parent" : "2"},
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U127", "Parent" : "2"},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U128", "Parent" : "2"},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U129", "Parent" : "2"},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U130", "Parent" : "2"},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U131", "Parent" : "2"},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U132", "Parent" : "2"},
	{"ID" : "129", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U133", "Parent" : "2"},
	{"ID" : "130", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U134", "Parent" : "2"},
	{"ID" : "131", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U135", "Parent" : "2"},
	{"ID" : "132", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_eOg_U136", "Parent" : "2"},
	{"ID" : "133", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_U0.mnist_mac_muladd_fYi_U137", "Parent" : "2"},
	{"ID" : "134", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.relu_U0", "Parent" : "0",
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
			{"Name" : "data_in_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "145",
				"BlockSignal" : [
					{"Name" : "data_in_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "135", "DependentChan" : "146",
				"BlockSignal" : [
					{"Name" : "data_out_V_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "135", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.linear_activation_1_U0", "Parent" : "0", "Child" : ["136", "137", "138"],
		"CDFG" : "linear_activation_1",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"StartSource" : "134",
		"StartFifo" : "start_for_linear_ncg_U",
		"Port" : [
			{"Name" : "data_in_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "134", "DependentChan" : "146",
				"BlockSignal" : [
					{"Name" : "data_in_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "139", "DependentChan" : "147",
				"BlockSignal" : [
					{"Name" : "data_out_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "L2_WEIGHTS_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L2_BIAS_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "136", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_1_U0.L2_WEIGHTS_V_U", "Parent" : "135"},
	{"ID" : "137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_1_U0.L2_BIAS_V_U", "Parent" : "135"},
	{"ID" : "138", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.linear_activation_1_U0.mnist_mux_104_32_ibs_U147", "Parent" : "135"},
	{"ID" : "139", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.packer_U0", "Parent" : "0", "Child" : ["140", "141", "142", "143"],
		"CDFG" : "packer",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"StartSource" : "135",
		"StartFifo" : "start_for_packer_U0_U",
		"Port" : [
			{"Name" : "stream_in_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "135", "DependentChan" : "147",
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
	{"ID" : "140", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.packer_U0.packet_user_V_U", "Parent" : "139"},
	{"ID" : "141", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.packer_U0.packet_last_V_U", "Parent" : "139"},
	{"ID" : "142", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.packer_U0.packet_id_V_U", "Parent" : "139"},
	{"ID" : "143", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.packer_U0.packet_dest_V_U", "Parent" : "139"},
	{"ID" : "144", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_in_V_V_U", "Parent" : "0"},
	{"ID" : "145", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.l1_result_V_V_U", "Parent" : "0"},
	{"ID" : "146", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.l1_relu_V_V_U", "Parent" : "0"},
	{"ID" : "147", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_out_V_V_U", "Parent" : "0"},
	{"ID" : "148", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_linear_mb6_U", "Parent" : "0"},
	{"ID" : "149", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_relu_U0_U", "Parent" : "0"},
	{"ID" : "150", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_linear_ncg_U", "Parent" : "0"},
	{"ID" : "151", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_packer_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	mnist {
		sdata_in_V_data_V {Type I LastRead 1 FirstWrite -1}
		sdata_in_V_keep_V {Type I LastRead 1 FirstWrite -1}
		sdata_in_V_strb_V {Type I LastRead 1 FirstWrite -1}
		sdata_in_V_user_V {Type I LastRead 1 FirstWrite -1}
		sdata_in_V_last_V {Type I LastRead 1 FirstWrite -1}
		sdata_in_V_id_V {Type I LastRead 1 FirstWrite -1}
		sdata_in_V_dest_V {Type I LastRead 1 FirstWrite -1}
		sdata_out_V_data_V {Type O LastRead -1 FirstWrite 3}
		sdata_out_V_keep_V {Type O LastRead -1 FirstWrite 3}
		sdata_out_V_strb_V {Type O LastRead -1 FirstWrite 3}
		sdata_out_V_user_V {Type O LastRead -1 FirstWrite 3}
		sdata_out_V_last_V {Type O LastRead -1 FirstWrite 3}
		sdata_out_V_id_V {Type O LastRead -1 FirstWrite 3}
		sdata_out_V_dest_V {Type O LastRead -1 FirstWrite 3}
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
		data_out_V_V {Type O LastRead -1 FirstWrite 5}
		L1_WEIGHTS_V {Type I LastRead -1 FirstWrite -1}
		L1_BIAS_V {Type I LastRead -1 FirstWrite -1}}
	relu {
		data_in_V_V {Type I LastRead 1 FirstWrite -1}
		data_out_V_V {Type O LastRead -1 FirstWrite 1}}
	linear_activation_1 {
		data_in_V_V {Type I LastRead 2 FirstWrite -1}
		data_out_V_V {Type O LastRead -1 FirstWrite 5}
		L2_WEIGHTS_V {Type I LastRead -1 FirstWrite -1}
		L2_BIAS_V {Type I LastRead -1 FirstWrite -1}}
	packer {
		stream_in_V_V {Type I LastRead 3 FirstWrite -1}
		stream_out_V_data_V {Type O LastRead -1 FirstWrite 3}
		stream_out_V_keep_V {Type O LastRead -1 FirstWrite 3}
		stream_out_V_strb_V {Type O LastRead -1 FirstWrite 3}
		stream_out_V_user_V {Type O LastRead -1 FirstWrite 3}
		stream_out_V_last_V {Type O LastRead -1 FirstWrite 3}
		stream_out_V_id_V {Type O LastRead -1 FirstWrite 3}
		stream_out_V_dest_V {Type O LastRead -1 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "919", "Max" : "919"}
	, {"Name" : "Interval", "Min" : "919", "Max" : "919"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	sdata_in_V_data_V { axis {  { sdata_in_TDATA in_data 0 8 } } }
	sdata_in_V_keep_V { axis {  { sdata_in_TKEEP in_data 0 1 } } }
	sdata_in_V_strb_V { axis {  { sdata_in_TSTRB in_data 0 1 } } }
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
