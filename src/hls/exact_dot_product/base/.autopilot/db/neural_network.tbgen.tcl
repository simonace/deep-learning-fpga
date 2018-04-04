set C_TypeInfoList {{ 
"neural_network" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"mem": [[],{ "pointer": "0"}] }, {"out": [[],{ "pointer": "0"}] }, {"w1_offset": [[], {"scalar": "unsigned int"}] }, {"b1_offset": [[], {"scalar": "unsigned int"}] }, {"w2_offset": [[], {"scalar": "unsigned int"}] }, {"b2_offset": [[], {"scalar": "unsigned int"}] }, {"input_offset": [[], {"scalar": "unsigned int"}] }, {"result_offset": [[], {"scalar": "unsigned int"}] }],[],""], 
"0": [ "data_t", {"typedef": [[[],"1"],""]}], 
"1": [ "ap_uint<16>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 16}}]],""]}}]
}}
set moduleName neural_network
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {neural_network}
set C_modelType { void 0 }
set C_modelArgList {
	{ mem_V int 16 regular {axi_master 0}  }
	{ out_V int 16 regular {axi_master 1}  }
	{ w1_offset int 32 regular {axi_slave 0}  }
	{ b1_offset int 32 regular {axi_slave 0}  }
	{ w2_offset int 32 regular {axi_slave 0}  }
	{ b2_offset int 32 regular {axi_slave 0}  }
	{ input_offset int 32 regular {axi_slave 0}  }
	{ result_offset int 32 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "mem_V", "interface" : "axi_master", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "mem.V","cData": "uint16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 8347049,"step" : 1}]}]}]} , 
 	{ "Name" : "out_V", "interface" : "axi_master", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "out.V","cData": "uint16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 9,"step" : 1}]}]}]} , 
 	{ "Name" : "w1_offset", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "w1_offset","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "b1_offset", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "b1_offset","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "w2_offset", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "w2_offset","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":32}, "offset_end" : {"in":39}} , 
 	{ "Name" : "b2_offset", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "b2_offset","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":40}, "offset_end" : {"in":47}} , 
 	{ "Name" : "input_offset", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "input_offset","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":48}, "offset_end" : {"in":55}} , 
 	{ "Name" : "result_offset", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "result_offset","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":56}, "offset_end" : {"in":63}} ]}
# RTL Port declarations: 
set portNum 110
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_mem_V_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_mem_V_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_mem_V_AWADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_mem_V_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_mem_V_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_mem_V_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_mem_V_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_mem_V_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_mem_V_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_mem_V_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_mem_V_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_mem_V_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_mem_V_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_mem_V_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_mem_V_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_mem_V_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_mem_V_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_mem_V_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_mem_V_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_mem_V_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_mem_V_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_mem_V_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_mem_V_ARADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_mem_V_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_mem_V_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_mem_V_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_mem_V_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_mem_V_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_mem_V_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_mem_V_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_mem_V_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_mem_V_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_mem_V_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_mem_V_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_mem_V_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_mem_V_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_mem_V_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_mem_V_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_mem_V_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_mem_V_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_mem_V_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_mem_V_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_mem_V_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_mem_V_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_mem_V_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_out_V_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_out_V_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_out_V_AWADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_out_V_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_out_V_AWLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_out_V_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_out_V_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_out_V_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_out_V_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_out_V_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_out_V_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_out_V_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_out_V_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_out_V_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_out_V_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_out_V_WDATA sc_out sc_lv 32 signal 1 } 
	{ m_axi_out_V_WSTRB sc_out sc_lv 4 signal 1 } 
	{ m_axi_out_V_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_out_V_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_out_V_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_out_V_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_out_V_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_out_V_ARADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_out_V_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_out_V_ARLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_out_V_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_out_V_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_out_V_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_out_V_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_out_V_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_out_V_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_out_V_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_out_V_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_out_V_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_out_V_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_out_V_RDATA sc_in sc_lv 32 signal 1 } 
	{ m_axi_out_V_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_out_V_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_out_V_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_out_V_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_out_V_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_out_V_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_out_V_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_out_V_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_out_V_BUSER sc_in sc_lv 1 signal 1 } 
	{ s_axi_AXILiteS_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_AWADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_AXILiteS_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_AXILiteS_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_AXILiteS_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_ARADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_AXILiteS_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_AXILiteS_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_AXILiteS_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_AXILiteS_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWADDR" },"address":[{"name":"neural_network","role":"start","value":"0","valid_bit":"0"},{"name":"neural_network","role":"continue","value":"0","valid_bit":"4"},{"name":"neural_network","role":"auto_start","value":"0","valid_bit":"7"},{"name":"w1_offset","role":"data","value":"16"},{"name":"b1_offset","role":"data","value":"24"},{"name":"w2_offset","role":"data","value":"32"},{"name":"b2_offset","role":"data","value":"40"},{"name":"input_offset","role":"data","value":"48"},{"name":"result_offset","role":"data","value":"56"}] },
	{ "name": "s_axi_AXILiteS_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWVALID" } },
	{ "name": "s_axi_AXILiteS_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWREADY" } },
	{ "name": "s_axi_AXILiteS_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WVALID" } },
	{ "name": "s_axi_AXILiteS_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WREADY" } },
	{ "name": "s_axi_AXILiteS_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WDATA" } },
	{ "name": "s_axi_AXILiteS_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WSTRB" } },
	{ "name": "s_axi_AXILiteS_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARADDR" },"address":[{"name":"neural_network","role":"start","value":"0","valid_bit":"0"},{"name":"neural_network","role":"done","value":"0","valid_bit":"1"},{"name":"neural_network","role":"idle","value":"0","valid_bit":"2"},{"name":"neural_network","role":"ready","value":"0","valid_bit":"3"},{"name":"neural_network","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_AXILiteS_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARVALID" } },
	{ "name": "s_axi_AXILiteS_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARREADY" } },
	{ "name": "s_axi_AXILiteS_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RVALID" } },
	{ "name": "s_axi_AXILiteS_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RREADY" } },
	{ "name": "s_axi_AXILiteS_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RDATA" } },
	{ "name": "s_axi_AXILiteS_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RRESP" } },
	{ "name": "s_axi_AXILiteS_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BVALID" } },
	{ "name": "s_axi_AXILiteS_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BREADY" } },
	{ "name": "s_axi_AXILiteS_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_mem_V_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem_V", "role": "AWVALID" }} , 
 	{ "name": "m_axi_mem_V_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem_V", "role": "AWREADY" }} , 
 	{ "name": "m_axi_mem_V_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mem_V", "role": "AWADDR" }} , 
 	{ "name": "m_axi_mem_V_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mem_V", "role": "AWID" }} , 
 	{ "name": "m_axi_mem_V_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "mem_V", "role": "AWLEN" }} , 
 	{ "name": "m_axi_mem_V_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mem_V", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_mem_V_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mem_V", "role": "AWBURST" }} , 
 	{ "name": "m_axi_mem_V_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mem_V", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_mem_V_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mem_V", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_mem_V_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mem_V", "role": "AWPROT" }} , 
 	{ "name": "m_axi_mem_V_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mem_V", "role": "AWQOS" }} , 
 	{ "name": "m_axi_mem_V_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mem_V", "role": "AWREGION" }} , 
 	{ "name": "m_axi_mem_V_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mem_V", "role": "AWUSER" }} , 
 	{ "name": "m_axi_mem_V_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem_V", "role": "WVALID" }} , 
 	{ "name": "m_axi_mem_V_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem_V", "role": "WREADY" }} , 
 	{ "name": "m_axi_mem_V_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mem_V", "role": "WDATA" }} , 
 	{ "name": "m_axi_mem_V_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mem_V", "role": "WSTRB" }} , 
 	{ "name": "m_axi_mem_V_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem_V", "role": "WLAST" }} , 
 	{ "name": "m_axi_mem_V_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mem_V", "role": "WID" }} , 
 	{ "name": "m_axi_mem_V_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mem_V", "role": "WUSER" }} , 
 	{ "name": "m_axi_mem_V_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem_V", "role": "ARVALID" }} , 
 	{ "name": "m_axi_mem_V_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem_V", "role": "ARREADY" }} , 
 	{ "name": "m_axi_mem_V_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mem_V", "role": "ARADDR" }} , 
 	{ "name": "m_axi_mem_V_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mem_V", "role": "ARID" }} , 
 	{ "name": "m_axi_mem_V_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "mem_V", "role": "ARLEN" }} , 
 	{ "name": "m_axi_mem_V_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mem_V", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_mem_V_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mem_V", "role": "ARBURST" }} , 
 	{ "name": "m_axi_mem_V_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mem_V", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_mem_V_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mem_V", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_mem_V_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mem_V", "role": "ARPROT" }} , 
 	{ "name": "m_axi_mem_V_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mem_V", "role": "ARQOS" }} , 
 	{ "name": "m_axi_mem_V_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mem_V", "role": "ARREGION" }} , 
 	{ "name": "m_axi_mem_V_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mem_V", "role": "ARUSER" }} , 
 	{ "name": "m_axi_mem_V_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem_V", "role": "RVALID" }} , 
 	{ "name": "m_axi_mem_V_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem_V", "role": "RREADY" }} , 
 	{ "name": "m_axi_mem_V_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mem_V", "role": "RDATA" }} , 
 	{ "name": "m_axi_mem_V_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem_V", "role": "RLAST" }} , 
 	{ "name": "m_axi_mem_V_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mem_V", "role": "RID" }} , 
 	{ "name": "m_axi_mem_V_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mem_V", "role": "RUSER" }} , 
 	{ "name": "m_axi_mem_V_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mem_V", "role": "RRESP" }} , 
 	{ "name": "m_axi_mem_V_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem_V", "role": "BVALID" }} , 
 	{ "name": "m_axi_mem_V_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem_V", "role": "BREADY" }} , 
 	{ "name": "m_axi_mem_V_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mem_V", "role": "BRESP" }} , 
 	{ "name": "m_axi_mem_V_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mem_V", "role": "BID" }} , 
 	{ "name": "m_axi_mem_V_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mem_V", "role": "BUSER" }} , 
 	{ "name": "m_axi_out_V_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_V", "role": "AWVALID" }} , 
 	{ "name": "m_axi_out_V_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_V", "role": "AWREADY" }} , 
 	{ "name": "m_axi_out_V_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_V", "role": "AWADDR" }} , 
 	{ "name": "m_axi_out_V_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_V", "role": "AWID" }} , 
 	{ "name": "m_axi_out_V_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_V", "role": "AWLEN" }} , 
 	{ "name": "m_axi_out_V_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "out_V", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_out_V_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_V", "role": "AWBURST" }} , 
 	{ "name": "m_axi_out_V_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_V", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_out_V_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_V", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_out_V_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "out_V", "role": "AWPROT" }} , 
 	{ "name": "m_axi_out_V_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_V", "role": "AWQOS" }} , 
 	{ "name": "m_axi_out_V_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_V", "role": "AWREGION" }} , 
 	{ "name": "m_axi_out_V_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_V", "role": "AWUSER" }} , 
 	{ "name": "m_axi_out_V_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_V", "role": "WVALID" }} , 
 	{ "name": "m_axi_out_V_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_V", "role": "WREADY" }} , 
 	{ "name": "m_axi_out_V_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_V", "role": "WDATA" }} , 
 	{ "name": "m_axi_out_V_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_V", "role": "WSTRB" }} , 
 	{ "name": "m_axi_out_V_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_V", "role": "WLAST" }} , 
 	{ "name": "m_axi_out_V_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_V", "role": "WID" }} , 
 	{ "name": "m_axi_out_V_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_V", "role": "WUSER" }} , 
 	{ "name": "m_axi_out_V_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_V", "role": "ARVALID" }} , 
 	{ "name": "m_axi_out_V_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_V", "role": "ARREADY" }} , 
 	{ "name": "m_axi_out_V_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_V", "role": "ARADDR" }} , 
 	{ "name": "m_axi_out_V_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_V", "role": "ARID" }} , 
 	{ "name": "m_axi_out_V_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_V", "role": "ARLEN" }} , 
 	{ "name": "m_axi_out_V_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "out_V", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_out_V_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_V", "role": "ARBURST" }} , 
 	{ "name": "m_axi_out_V_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_V", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_out_V_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_V", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_out_V_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "out_V", "role": "ARPROT" }} , 
 	{ "name": "m_axi_out_V_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_V", "role": "ARQOS" }} , 
 	{ "name": "m_axi_out_V_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_V", "role": "ARREGION" }} , 
 	{ "name": "m_axi_out_V_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_V", "role": "ARUSER" }} , 
 	{ "name": "m_axi_out_V_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_V", "role": "RVALID" }} , 
 	{ "name": "m_axi_out_V_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_V", "role": "RREADY" }} , 
 	{ "name": "m_axi_out_V_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_V", "role": "RDATA" }} , 
 	{ "name": "m_axi_out_V_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_V", "role": "RLAST" }} , 
 	{ "name": "m_axi_out_V_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_V", "role": "RID" }} , 
 	{ "name": "m_axi_out_V_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_V", "role": "RUSER" }} , 
 	{ "name": "m_axi_out_V_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_V", "role": "RRESP" }} , 
 	{ "name": "m_axi_out_V_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_V", "role": "BVALID" }} , 
 	{ "name": "m_axi_out_V_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_V", "role": "BREADY" }} , 
 	{ "name": "m_axi_out_V_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "out_V", "role": "BRESP" }} , 
 	{ "name": "m_axi_out_V_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_V", "role": "BID" }} , 
 	{ "name": "m_axi_out_V_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_V", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "17", "20", "23", "26"],
		"CDFG" : "neural_network",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "mem_V", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "mem_V_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "mem_V_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "out_V", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out_V_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "out_V_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "out_V_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "w1_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b1_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "w2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "b2_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "result_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.neural_network_AXILiteS_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.neural_network_mem_V_m_axi_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.neural_network_out_V_m_axi_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_1_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_2_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bias_1_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bias_2_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accums_1_m_cr_V_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.accums_2_m_cr_V_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.inputs_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.l1_result_V_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.l2_result_V_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_get_result_fu_1664", "Parent" : "0",
		"CDFG" : "get_result",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"FunctionPipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "CompleteRegister_m_cr_V_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_multiply_accumulate_fu_1669", "Parent" : "0", "Child" : ["15", "16"],
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
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_multiply_accumulate_fu_1669.neural_network_adbkb_U1", "Parent" : "14"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_multiply_accumulate_fu_1669.neural_network_mucud_U2", "Parent" : "14"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_multiply_accumulate_fu_1677", "Parent" : "0", "Child" : ["18", "19"],
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
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_multiply_accumulate_fu_1677.neural_network_adbkb_U1", "Parent" : "17"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_multiply_accumulate_fu_1677.neural_network_mucud_U2", "Parent" : "17"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_multiply_accumulate_fu_1685", "Parent" : "0", "Child" : ["21", "22"],
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
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_multiply_accumulate_fu_1685.neural_network_adbkb_U1", "Parent" : "20"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_multiply_accumulate_fu_1685.neural_network_mucud_U2", "Parent" : "20"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_multiply_accumulate_fu_1693", "Parent" : "0", "Child" : ["24", "25"],
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
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_multiply_accumulate_fu_1693.neural_network_adbkb_U1", "Parent" : "23"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_multiply_accumulate_fu_1693.neural_network_mucud_U2", "Parent" : "23"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.neural_network_urmb6_U9", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	neural_network {
		mem_V {Type I LastRead 83 FirstWrite -1}
		out_V {Type O LastRead 66 FirstWrite 67}
		w1_offset {Type I LastRead 0 FirstWrite -1}
		b1_offset {Type I LastRead 0 FirstWrite -1}
		w2_offset {Type I LastRead 0 FirstWrite -1}
		b2_offset {Type I LastRead 0 FirstWrite -1}
		input_offset {Type I LastRead 0 FirstWrite -1}
		result_offset {Type I LastRead 0 FirstWrite -1}}
	get_result {
		CompleteRegister_m_cr_V_read {Type I LastRead 0 FirstWrite -1}}
	multiply_accumulate {
		CompleteRegister_m_cr_V_read {Type I LastRead 0 FirstWrite -1}
		in1_V {Type I LastRead 0 FirstWrite -1}
		in2_V {Type I LastRead 0 FirstWrite -1}}
	multiply_accumulate {
		CompleteRegister_m_cr_V_read {Type I LastRead 0 FirstWrite -1}
		in1_V {Type I LastRead 0 FirstWrite -1}
		in2_V {Type I LastRead 0 FirstWrite -1}}
	multiply_accumulate {
		CompleteRegister_m_cr_V_read {Type I LastRead 0 FirstWrite -1}
		in1_V {Type I LastRead 0 FirstWrite -1}
		in2_V {Type I LastRead 0 FirstWrite -1}}
	multiply_accumulate {
		CompleteRegister_m_cr_V_read {Type I LastRead 0 FirstWrite -1}
		in1_V {Type I LastRead 0 FirstWrite -1}
		in2_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "808720", "Max" : "808720"}
	, {"Name" : "Interval", "Min" : "808721", "Max" : "808721"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
	{"Pipeline" : "3", "EnableSignal" : "ap_enable_pp3"}
	{"Pipeline" : "4", "EnableSignal" : "ap_enable_pp4"}
	{"Pipeline" : "5", "EnableSignal" : "ap_enable_pp5"}
	{"Pipeline" : "6", "EnableSignal" : "ap_enable_pp6"}
]}

set Spec2ImplPortList { 
	mem_V { m_axi {  { m_axi_mem_V_AWVALID VALID 1 1 }  { m_axi_mem_V_AWREADY READY 0 1 }  { m_axi_mem_V_AWADDR ADDR 1 32 }  { m_axi_mem_V_AWID ID 1 1 }  { m_axi_mem_V_AWLEN LEN 1 8 }  { m_axi_mem_V_AWSIZE SIZE 1 3 }  { m_axi_mem_V_AWBURST BURST 1 2 }  { m_axi_mem_V_AWLOCK LOCK 1 2 }  { m_axi_mem_V_AWCACHE CACHE 1 4 }  { m_axi_mem_V_AWPROT PROT 1 3 }  { m_axi_mem_V_AWQOS QOS 1 4 }  { m_axi_mem_V_AWREGION REGION 1 4 }  { m_axi_mem_V_AWUSER USER 1 1 }  { m_axi_mem_V_WVALID VALID 1 1 }  { m_axi_mem_V_WREADY READY 0 1 }  { m_axi_mem_V_WDATA DATA 1 32 }  { m_axi_mem_V_WSTRB STRB 1 4 }  { m_axi_mem_V_WLAST LAST 1 1 }  { m_axi_mem_V_WID ID 1 1 }  { m_axi_mem_V_WUSER USER 1 1 }  { m_axi_mem_V_ARVALID VALID 1 1 }  { m_axi_mem_V_ARREADY READY 0 1 }  { m_axi_mem_V_ARADDR ADDR 1 32 }  { m_axi_mem_V_ARID ID 1 1 }  { m_axi_mem_V_ARLEN LEN 1 8 }  { m_axi_mem_V_ARSIZE SIZE 1 3 }  { m_axi_mem_V_ARBURST BURST 1 2 }  { m_axi_mem_V_ARLOCK LOCK 1 2 }  { m_axi_mem_V_ARCACHE CACHE 1 4 }  { m_axi_mem_V_ARPROT PROT 1 3 }  { m_axi_mem_V_ARQOS QOS 1 4 }  { m_axi_mem_V_ARREGION REGION 1 4 }  { m_axi_mem_V_ARUSER USER 1 1 }  { m_axi_mem_V_RVALID VALID 0 1 }  { m_axi_mem_V_RREADY READY 1 1 }  { m_axi_mem_V_RDATA DATA 0 32 }  { m_axi_mem_V_RLAST LAST 0 1 }  { m_axi_mem_V_RID ID 0 1 }  { m_axi_mem_V_RUSER USER 0 1 }  { m_axi_mem_V_RRESP RESP 0 2 }  { m_axi_mem_V_BVALID VALID 0 1 }  { m_axi_mem_V_BREADY READY 1 1 }  { m_axi_mem_V_BRESP RESP 0 2 }  { m_axi_mem_V_BID ID 0 1 }  { m_axi_mem_V_BUSER USER 0 1 } } }
	out_V { m_axi {  { m_axi_out_V_AWVALID VALID 1 1 }  { m_axi_out_V_AWREADY READY 0 1 }  { m_axi_out_V_AWADDR ADDR 1 32 }  { m_axi_out_V_AWID ID 1 1 }  { m_axi_out_V_AWLEN LEN 1 8 }  { m_axi_out_V_AWSIZE SIZE 1 3 }  { m_axi_out_V_AWBURST BURST 1 2 }  { m_axi_out_V_AWLOCK LOCK 1 2 }  { m_axi_out_V_AWCACHE CACHE 1 4 }  { m_axi_out_V_AWPROT PROT 1 3 }  { m_axi_out_V_AWQOS QOS 1 4 }  { m_axi_out_V_AWREGION REGION 1 4 }  { m_axi_out_V_AWUSER USER 1 1 }  { m_axi_out_V_WVALID VALID 1 1 }  { m_axi_out_V_WREADY READY 0 1 }  { m_axi_out_V_WDATA DATA 1 32 }  { m_axi_out_V_WSTRB STRB 1 4 }  { m_axi_out_V_WLAST LAST 1 1 }  { m_axi_out_V_WID ID 1 1 }  { m_axi_out_V_WUSER USER 1 1 }  { m_axi_out_V_ARVALID VALID 1 1 }  { m_axi_out_V_ARREADY READY 0 1 }  { m_axi_out_V_ARADDR ADDR 1 32 }  { m_axi_out_V_ARID ID 1 1 }  { m_axi_out_V_ARLEN LEN 1 8 }  { m_axi_out_V_ARSIZE SIZE 1 3 }  { m_axi_out_V_ARBURST BURST 1 2 }  { m_axi_out_V_ARLOCK LOCK 1 2 }  { m_axi_out_V_ARCACHE CACHE 1 4 }  { m_axi_out_V_ARPROT PROT 1 3 }  { m_axi_out_V_ARQOS QOS 1 4 }  { m_axi_out_V_ARREGION REGION 1 4 }  { m_axi_out_V_ARUSER USER 1 1 }  { m_axi_out_V_RVALID VALID 0 1 }  { m_axi_out_V_RREADY READY 1 1 }  { m_axi_out_V_RDATA DATA 0 32 }  { m_axi_out_V_RLAST LAST 0 1 }  { m_axi_out_V_RID ID 0 1 }  { m_axi_out_V_RUSER USER 0 1 }  { m_axi_out_V_RRESP RESP 0 2 }  { m_axi_out_V_BVALID VALID 0 1 }  { m_axi_out_V_BREADY READY 1 1 }  { m_axi_out_V_BRESP RESP 0 2 }  { m_axi_out_V_BID ID 0 1 }  { m_axi_out_V_BUSER USER 0 1 } } }
}

set busDeadlockParameterList { 
	{ mem_V { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
	{ out_V { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ mem_V 1 }
	{ out_V 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ mem_V 1 }
	{ out_V 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
