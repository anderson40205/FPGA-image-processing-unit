set moduleName canny_edge_rectangle
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {canny_edge_rectangle}
set C_modelType { void 0 }
set C_modelArgList {
	{ axis_in_data_V int 24 regular {axi_s 0 volatile  { axis_in Data } }  }
	{ axis_in_last_V int 1 unused {axi_s 0 ""  { axis_in Last } }  }
	{ axis_out_data_V int 24 regular {axi_s 1 volatile  { axis_out Data } }  }
	{ axis_out_last_V int 1 regular {axi_s 1 volatile  { axis_out Last } }  }
	{ hist_hthr int 8 regular {axi_slave 1}  }
	{ hist_lthr int 8 regular {axi_slave 1}  }
	{ bh uint 8 regular  }
	{ bl uint 8 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "axis_in_data_V", "interface" : "axis", "bitwidth" : 24, "direction" : "READONLY", "bitSlice":[{"low":0,"up":23,"cElement": [{"cName": "axis_in.data.V","cData": "uint24","bit_use": { "low": 0,"up": 23},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "axis_in_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "axis_in.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "axis_out_data_V", "interface" : "axis", "bitwidth" : 24, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":23,"cElement": [{"cName": "axis_out.data.V","cData": "uint24","bit_use": { "low": 0,"up": 23},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "axis_out_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "axis_out.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "hist_hthr", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_vld","bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "hist_hthr","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "offset" : {"out":16}, "offset_end" : {"out":23}} , 
 	{ "Name" : "hist_lthr", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_vld","bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "hist_lthr","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "offset" : {"out":24}, "offset_end" : {"out":31}} , 
 	{ "Name" : "bh", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "bh","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "bl", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "bl","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 30
set portList { 
	{ s_axi_AXILiteS_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_AWADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_AXILiteS_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_AXILiteS_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_AXILiteS_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_ARADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_AXILiteS_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_AXILiteS_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_AXILiteS_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_BRESP sc_out sc_lv 2 signal -1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
	{ axis_in_TDATA sc_in sc_lv 24 signal 0 } 
	{ axis_in_TLAST sc_in sc_lv 1 signal 1 } 
	{ axis_out_TDATA sc_out sc_lv 24 signal 2 } 
	{ axis_out_TLAST sc_out sc_lv 1 signal 3 } 
	{ bh sc_in sc_lv 8 signal 6 } 
	{ bl sc_in sc_lv 8 signal 7 } 
	{ axis_in_TVALID sc_in sc_logic 1 invld 0 } 
	{ axis_in_TREADY sc_out sc_logic 1 inacc 0 } 
	{ axis_out_TVALID sc_out sc_logic 1 outvld 3 } 
	{ axis_out_TREADY sc_in sc_logic 1 outacc 3 } 
}
set NewPortList {[ 
	{ "name": "s_axi_AXILiteS_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWADDR" },"address":[{"name":"canny_edge_rectangle","role":"start","value":"0","valid_bit":"0"},{"name":"canny_edge_rectangle","role":"continue","value":"0","valid_bit":"4"},{"name":"canny_edge_rectangle","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_AXILiteS_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWVALID" } },
	{ "name": "s_axi_AXILiteS_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWREADY" } },
	{ "name": "s_axi_AXILiteS_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WVALID" } },
	{ "name": "s_axi_AXILiteS_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WREADY" } },
	{ "name": "s_axi_AXILiteS_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WDATA" } },
	{ "name": "s_axi_AXILiteS_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WSTRB" } },
	{ "name": "s_axi_AXILiteS_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARADDR" },"address":[{"name":"canny_edge_rectangle","role":"start","value":"0","valid_bit":"0"},{"name":"canny_edge_rectangle","role":"done","value":"0","valid_bit":"1"},{"name":"canny_edge_rectangle","role":"idle","value":"0","valid_bit":"2"},{"name":"canny_edge_rectangle","role":"ready","value":"0","valid_bit":"3"},{"name":"canny_edge_rectangle","role":"auto_start","value":"0","valid_bit":"7"},{"name":"hist_hthr","role":"data","value":"16"}, {"name":"hist_hthr","role":"valid","value":"20","valid_bit":"0"},{"name":"hist_lthr","role":"data","value":"24"}, {"name":"hist_lthr","role":"valid","value":"28","valid_bit":"0"}] },
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
 	{ "name": "axis_in_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "axis_in_data_V", "role": "default" }} , 
 	{ "name": "axis_in_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "axis_in_last_V", "role": "default" }} , 
 	{ "name": "axis_out_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "axis_out_data_V", "role": "default" }} , 
 	{ "name": "axis_out_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "axis_out_last_V", "role": "default" }} , 
 	{ "name": "bh", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bh", "role": "default" }} , 
 	{ "name": "bl", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bl", "role": "default" }} , 
 	{ "name": "axis_in_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "axis_in_data_V", "role": "default" }} , 
 	{ "name": "axis_in_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "axis_in_data_V", "role": "default" }} , 
 	{ "name": "axis_out_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "axis_out_last_V", "role": "default" }} , 
 	{ "name": "axis_out_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "axis_out_last_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "9", "11", "18", "21", "22", "23", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48"],
		"CDFG" : "canny_edge_rectangle",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2103846", "EstimateLatencyMax" : "2103846",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "2", "Name" : "canny_edge_rectangle_1_2_U0", "ReadyCount" : "canny_edge_rectangle_1_2_U0_ap_ready_count"},
			{"ID" : "5", "Name" : "AXIS2GrayArray_U0", "ReadyCount" : "AXIS2GrayArray_U0_ap_ready_count"}],
		"OutputProcess" : [
			{"ID" : "4", "Name" : "Block_proc_U0"},
			{"ID" : "25", "Name" : "GrayArray2AXIS_U0"}],
		"Port" : [
			{"Name" : "axis_in_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "AXIS2GrayArray_U0", "Port" : "axis_src_data_V"}]},
			{"Name" : "axis_in_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "axis_out_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "GrayArray2AXIS_U0", "Port" : "axis_dst_data_V"}]},
			{"Name" : "axis_out_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "GrayArray2AXIS_U0", "Port" : "axis_dst_last_V"}]},
			{"Name" : "hist_hthr", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "Block_proc_U0", "Port" : "hist_hthr"}]},
			{"Name" : "hist_lthr", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "Block_proc_U0", "Port" : "hist_lthr"}]},
			{"Name" : "bh", "Type" : "None", "Direction" : "I"},
			{"Name" : "bl", "Type" : "None", "Direction" : "I"},
			{"Name" : "fifo1", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "AXIS2GrayArray_U0", "Port" : "fifo1"},
					{"ID" : "9", "SubInstance" : "GaussianBlur_U0", "Port" : "fifo1"}]},
			{"Name" : "fifo2", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "Sobel_1920u_1080u_U0", "Port" : "fifo2"},
					{"ID" : "9", "SubInstance" : "GaussianBlur_U0", "Port" : "fifo2"}]},
			{"Name" : "fifo3_value", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "Sobel_1920u_1080u_U0", "Port" : "fifo3_value"},
					{"ID" : "18", "SubInstance" : "NonMaxSuppression_U0", "Port" : "fifo3_value"}]},
			{"Name" : "fifo3_grad", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "Sobel_1920u_1080u_U0", "Port" : "fifo3_grad"},
					{"ID" : "18", "SubInstance" : "NonMaxSuppression_U0", "Port" : "fifo3_grad"}]},
			{"Name" : "fifo4", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "ZeroPadding_U0", "Port" : "fifo4"},
					{"ID" : "18", "SubInstance" : "NonMaxSuppression_U0", "Port" : "fifo4"}]},
			{"Name" : "fifo5", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "ZeroPadding_U0", "Port" : "fifo5"},
					{"ID" : "22", "SubInstance" : "HystThreshold_U0", "Port" : "fifo5"}]},
			{"Name" : "fifo6", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "HystThreshold_U0", "Port" : "fifo6"},
					{"ID" : "23", "SubInstance" : "HystThresholdComp_U0", "Port" : "fifo6"}]},
			{"Name" : "fifo7", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "HystThresholdComp_U0", "Port" : "fifo7"},
					{"ID" : "25", "SubInstance" : "GrayArray2AXIS_U0", "Port" : "fifo7"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.canny_edge_rectangle_AXILiteS_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.canny_edge_rectangle_1_2_U0", "Parent" : "0",
		"CDFG" : "canny_edge_rectangle_1_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "bh", "Type" : "None", "Direction" : "I"},
			{"Name" : "bl", "Type" : "None", "Direction" : "I"},
			{"Name" : "bh_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "26",
				"BlockSignal" : [
					{"Name" : "bh_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bl_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "27",
				"BlockSignal" : [
					{"Name" : "bl_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.canny_edge_rectangle_2_U0", "Parent" : "0",
		"CDFG" : "canny_edge_rectangle_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "2",
		"StartFifo" : "start_for_canny_eocq_U",
		"Port" : [
			{"Name" : "bh", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "26",
				"BlockSignal" : [
					{"Name" : "bh_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bl", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "27",
				"BlockSignal" : [
					{"Name" : "bl_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bh_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "4", "DependentChan" : "28",
				"BlockSignal" : [
					{"Name" : "bh_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bh_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "22", "DependentChan" : "29",
				"BlockSignal" : [
					{"Name" : "bh_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bl_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "4", "DependentChan" : "30",
				"BlockSignal" : [
					{"Name" : "bl_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bl_out2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "22", "DependentChan" : "31",
				"BlockSignal" : [
					{"Name" : "bl_out2_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Block_proc_U0", "Parent" : "0",
		"CDFG" : "Block_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "3",
		"StartFifo" : "start_for_Block_ppcA_U",
		"Port" : [
			{"Name" : "bh", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "28",
				"BlockSignal" : [
					{"Name" : "bh_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "hist_hthr", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bl", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "30",
				"BlockSignal" : [
					{"Name" : "bl_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "hist_lthr", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.AXIS2GrayArray_U0", "Parent" : "0", "Child" : ["6", "7", "8"],
		"CDFG" : "AXIS2GrayArray",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2077921", "EstimateLatencyMax" : "2077921",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "axis_src_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "axis_in_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "9", "DependentChan" : "32",
				"BlockSignal" : [
					{"Name" : "fifo1_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AXIS2GrayArray_U0.canny_edge_rectanbkb_U15", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AXIS2GrayArray_U0.canny_edge_rectancud_U16", "Parent" : "5"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AXIS2GrayArray_U0.canny_edge_rectandEe_U17", "Parent" : "5"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_U0", "Parent" : "0", "Child" : ["10"],
		"CDFG" : "GaussianBlur",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2079001", "EstimateLatencyMax" : "2079001",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "5",
		"StartFifo" : "start_for_GaussiarcU_U",
		"Port" : [
			{"Name" : "fifo1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "32",
				"BlockSignal" : [
					{"Name" : "fifo1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "11", "DependentChan" : "33",
				"BlockSignal" : [
					{"Name" : "fifo2_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_U0.line_buf_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Sobel_1920u_1080u_U0", "Parent" : "0", "Child" : ["12", "13", "14", "15", "16", "17"],
		"CDFG" : "Sobel_1920u_1080u_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2103841", "EstimateLatencyMax" : "2103841",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "9",
		"StartFifo" : "start_for_Sobel_1sc4_U",
		"Port" : [
			{"Name" : "fifo2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "33",
				"BlockSignal" : [
					{"Name" : "fifo2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo3_value", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "18", "DependentChan" : "34",
				"BlockSignal" : [
					{"Name" : "fifo3_value_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo3_grad", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "18", "DependentChan" : "35",
				"BlockSignal" : [
					{"Name" : "fifo3_grad_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Sobel_1920u_1080u_U0.line_buf_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Sobel_1920u_1080u_U0.canny_edge_rectang8j_U26", "Parent" : "11"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Sobel_1920u_1080u_U0.canny_edge_rectanhbi_U27", "Parent" : "11"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Sobel_1920u_1080u_U0.canny_edge_rectanibs_U28", "Parent" : "11"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Sobel_1920u_1080u_U0.canny_edge_rectanjbC_U29", "Parent" : "11"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Sobel_1920u_1080u_U0.canny_edge_rectankbM_U30", "Parent" : "11"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.NonMaxSuppression_U0", "Parent" : "0", "Child" : ["19", "20"],
		"CDFG" : "NonMaxSuppression",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2077921", "EstimateLatencyMax" : "2077921",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "11",
		"StartFifo" : "start_for_NonMaxStde_U",
		"Port" : [
			{"Name" : "fifo3_value", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "11", "DependentChan" : "34",
				"BlockSignal" : [
					{"Name" : "fifo3_value_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo3_grad", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "11", "DependentChan" : "35",
				"BlockSignal" : [
					{"Name" : "fifo3_grad_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "21", "DependentChan" : "36",
				"BlockSignal" : [
					{"Name" : "fifo4_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.NonMaxSuppression_U0.line_buf_value_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.NonMaxSuppression_U0.line_buf_grad_U", "Parent" : "18"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ZeroPadding_U0", "Parent" : "0",
		"CDFG" : "ZeroPadding",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2076841", "EstimateLatencyMax" : "2076841",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "18",
		"StartFifo" : "start_for_ZeroPadudo_U",
		"Port" : [
			{"Name" : "fifo4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "18", "DependentChan" : "36",
				"BlockSignal" : [
					{"Name" : "fifo4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo5", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "22", "DependentChan" : "37",
				"BlockSignal" : [
					{"Name" : "fifo5_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HystThreshold_U0", "Parent" : "0",
		"CDFG" : "HystThreshold",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2077921", "EstimateLatencyMax" : "2077921",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "3",
		"StartFifo" : "start_for_HystThrqcK_U",
		"Port" : [
			{"Name" : "hthr", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "29",
				"BlockSignal" : [
					{"Name" : "hthr_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "lthr", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "31",
				"BlockSignal" : [
					{"Name" : "lthr_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo5", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "37",
				"BlockSignal" : [
					{"Name" : "fifo5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo6", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "23", "DependentChan" : "38",
				"BlockSignal" : [
					{"Name" : "fifo6_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HystThresholdComp_U0", "Parent" : "0", "Child" : ["24"],
		"CDFG" : "HystThresholdComp",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2077921", "EstimateLatencyMax" : "2077921",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "22",
		"StartFifo" : "start_for_HystThrvdy_U",
		"Port" : [
			{"Name" : "fifo6", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "22", "DependentChan" : "38",
				"BlockSignal" : [
					{"Name" : "fifo6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo7", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "25", "DependentChan" : "39",
				"BlockSignal" : [
					{"Name" : "fifo7_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.HystThresholdComp_U0.line_buf_U", "Parent" : "23"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.GrayArray2AXIS_U0", "Parent" : "0",
		"CDFG" : "GrayArray2AXIS",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2077921", "EstimateLatencyMax" : "2077921",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "23",
		"StartFifo" : "start_for_GrayArrwdI_U",
		"Port" : [
			{"Name" : "axis_dst_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "axis_out_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "axis_dst_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "fifo7", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "23", "DependentChan" : "39",
				"BlockSignal" : [
					{"Name" : "fifo7_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bh_c2_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bl_c3_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bh_c_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bh_c1_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bl_c_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bl_c2_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo1_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo2_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo3_value_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo3_grad_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo4_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo5_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo6_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo7_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_canny_eocq_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_Block_ppcA_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_HystThrqcK_U", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_GaussiarcU_U", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_Sobel_1sc4_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_NonMaxStde_U", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_ZeroPadudo_U", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_HystThrvdy_U", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_GrayArrwdI_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	canny_edge_rectangle {
		axis_in_data_V {Type I LastRead 2 FirstWrite -1}
		axis_in_last_V {Type I LastRead -1 FirstWrite -1}
		axis_out_data_V {Type O LastRead -1 FirstWrite 3}
		axis_out_last_V {Type O LastRead -1 FirstWrite 3}
		hist_hthr {Type O LastRead -1 FirstWrite 0}
		hist_lthr {Type O LastRead -1 FirstWrite 0}
		bh {Type I LastRead 9 FirstWrite -1}
		bl {Type I LastRead 9 FirstWrite -1}
		fifo1 {Type IO LastRead -1 FirstWrite -1}
		fifo2 {Type IO LastRead -1 FirstWrite -1}
		fifo3_value {Type IO LastRead -1 FirstWrite -1}
		fifo3_grad {Type IO LastRead -1 FirstWrite -1}
		fifo4 {Type IO LastRead -1 FirstWrite -1}
		fifo5 {Type IO LastRead -1 FirstWrite -1}
		fifo6 {Type IO LastRead -1 FirstWrite -1}
		fifo7 {Type IO LastRead -1 FirstWrite -1}}
	canny_edge_rectangle_1_2 {
		bh {Type I LastRead 0 FirstWrite -1}
		bl {Type I LastRead 0 FirstWrite -1}
		bh_out {Type O LastRead -1 FirstWrite 0}
		bl_out {Type O LastRead -1 FirstWrite 0}}
	canny_edge_rectangle_2 {
		bh {Type I LastRead 0 FirstWrite -1}
		bl {Type I LastRead 0 FirstWrite -1}
		bh_out {Type O LastRead -1 FirstWrite 0}
		bh_out1 {Type O LastRead -1 FirstWrite 0}
		bl_out {Type O LastRead -1 FirstWrite 0}
		bl_out2 {Type O LastRead -1 FirstWrite 0}}
	Block_proc {
		bh {Type I LastRead 0 FirstWrite -1}
		hist_hthr {Type O LastRead -1 FirstWrite 0}
		bl {Type I LastRead 0 FirstWrite -1}
		hist_lthr {Type O LastRead -1 FirstWrite 0}}
	AXIS2GrayArray {
		axis_src_data_V {Type I LastRead 2 FirstWrite -1}
		fifo1 {Type O LastRead -1 FirstWrite 4}}
	GaussianBlur {
		fifo1 {Type I LastRead 3 FirstWrite -1}
		fifo2 {Type O LastRead -1 FirstWrite 5}}
	Sobel_1920u_1080u_s {
		fifo2 {Type I LastRead 3 FirstWrite -1}
		fifo3_value {Type O LastRead -1 FirstWrite 28}
		fifo3_grad {Type O LastRead -1 FirstWrite 28}}
	NonMaxSuppression {
		fifo3_value {Type I LastRead 3 FirstWrite -1}
		fifo3_grad {Type I LastRead 3 FirstWrite -1}
		fifo4 {Type O LastRead -1 FirstWrite 4}}
	ZeroPadding {
		fifo4 {Type I LastRead 3 FirstWrite -1}
		fifo5 {Type O LastRead -1 FirstWrite 3}}
	HystThreshold {
		hthr {Type I LastRead 0 FirstWrite -1}
		lthr {Type I LastRead 0 FirstWrite -1}
		fifo5 {Type I LastRead 3 FirstWrite -1}
		fifo6 {Type O LastRead -1 FirstWrite 4}}
	HystThresholdComp {
		fifo6 {Type I LastRead 3 FirstWrite -1}
		fifo7 {Type O LastRead -1 FirstWrite 4}}
	GrayArray2AXIS {
		axis_dst_data_V {Type O LastRead -1 FirstWrite 3}
		axis_dst_last_V {Type O LastRead -1 FirstWrite 3}
		fifo7 {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2103846", "Max" : "2103846"}
	, {"Name" : "Interval", "Min" : "2103842", "Max" : "2103842"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	axis_in_data_V { axis {  { axis_in_TDATA in_data 0 24 }  { axis_in_TVALID in_vld 0 1 }  { axis_in_TREADY in_acc 1 1 } } }
	axis_in_last_V { axis {  { axis_in_TLAST in_data 0 1 } } }
	axis_out_data_V { axis {  { axis_out_TDATA out_data 1 24 } } }
	axis_out_last_V { axis {  { axis_out_TLAST out_data 1 1 }  { axis_out_TVALID out_vld 1 1 }  { axis_out_TREADY out_acc 0 1 } } }
	bh { ap_none {  { bh in_data 0 8 } } }
	bl { ap_none {  { bl in_data 0 8 } } }
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
