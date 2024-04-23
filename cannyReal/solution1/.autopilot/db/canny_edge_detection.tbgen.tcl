set moduleName canny_edge_detection
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
set C_modelName {canny_edge_detection}
set C_modelType { void 0 }
set C_modelArgList {
	{ axis_in_data_V int 24 regular {axi_s 0 volatile  { axis_in Data } }  }
	{ axis_in_last_V int 1 unused {axi_s 0 ""  { axis_in Last } }  }
	{ axis_out_data_V int 24 regular {axi_s 1 volatile  { axis_out Data } }  }
	{ axis_out_last_V int 1 regular {axi_s 1 volatile  { axis_out Last } }  }
	{ hist_hthr uint 8 regular {axi_slave 0}  }
	{ hist_lthr uint 8 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "axis_in_data_V", "interface" : "axis", "bitwidth" : 24, "direction" : "READONLY", "bitSlice":[{"low":0,"up":23,"cElement": [{"cName": "axis_in.data.V","cData": "uint24","bit_use": { "low": 0,"up": 23},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "axis_in_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "axis_in.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "axis_out_data_V", "interface" : "axis", "bitwidth" : 24, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":23,"cElement": [{"cName": "axis_out.data.V","cData": "uint24","bit_use": { "low": 0,"up": 23},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "axis_out_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "axis_out.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "hist_hthr", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "hist_hthr","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "hist_lthr", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "hist_lthr","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":24}, "offset_end" : {"in":31}} ]}
# RTL Port declarations: 
set portNum 28
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
	{ axis_in_TVALID sc_in sc_logic 1 invld 0 } 
	{ axis_in_TREADY sc_out sc_logic 1 inacc 0 } 
	{ axis_out_TVALID sc_out sc_logic 1 outvld 3 } 
	{ axis_out_TREADY sc_in sc_logic 1 outacc 3 } 
}
set NewPortList {[ 
	{ "name": "s_axi_AXILiteS_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWADDR" },"address":[{"name":"canny_edge_detection","role":"start","value":"0","valid_bit":"0"},{"name":"canny_edge_detection","role":"continue","value":"0","valid_bit":"4"},{"name":"canny_edge_detection","role":"auto_start","value":"0","valid_bit":"7"},{"name":"hist_hthr","role":"data","value":"16"},{"name":"hist_lthr","role":"data","value":"24"}] },
	{ "name": "s_axi_AXILiteS_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWVALID" } },
	{ "name": "s_axi_AXILiteS_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWREADY" } },
	{ "name": "s_axi_AXILiteS_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WVALID" } },
	{ "name": "s_axi_AXILiteS_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WREADY" } },
	{ "name": "s_axi_AXILiteS_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WDATA" } },
	{ "name": "s_axi_AXILiteS_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WSTRB" } },
	{ "name": "s_axi_AXILiteS_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARADDR" },"address":[{"name":"canny_edge_detection","role":"start","value":"0","valid_bit":"0"},{"name":"canny_edge_detection","role":"done","value":"0","valid_bit":"1"},{"name":"canny_edge_detection","role":"idle","value":"0","valid_bit":"2"},{"name":"canny_edge_detection","role":"ready","value":"0","valid_bit":"3"},{"name":"canny_edge_detection","role":"auto_start","value":"0","valid_bit":"7"}] },
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
 	{ "name": "axis_in_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "axis_in_data_V", "role": "default" }} , 
 	{ "name": "axis_in_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "axis_in_data_V", "role": "default" }} , 
 	{ "name": "axis_out_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "axis_out_last_V", "role": "default" }} , 
 	{ "name": "axis_out_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "axis_out_last_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "7", "9", "16", "19", "20", "21", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42"],
		"CDFG" : "canny_edge_detection",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "276999", "EstimateLatencyMax" : "276999",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "2", "Name" : "canny_edge_detection_1_1_U0", "ReadyCount" : "canny_edge_detection_1_1_U0_ap_ready_count"},
			{"ID" : "3", "Name" : "AXIS2GrayArray66_U0", "ReadyCount" : "AXIS2GrayArray66_U0_ap_ready_count"}],
		"OutputProcess" : [
			{"ID" : "23", "Name" : "GrayArray2AXIS_U0"}],
		"Port" : [
			{"Name" : "axis_in_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "AXIS2GrayArray66_U0", "Port" : "axis_src_data_V"}]},
			{"Name" : "axis_in_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "axis_out_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "GrayArray2AXIS_U0", "Port" : "axis_dst_data_V"}]},
			{"Name" : "axis_out_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "GrayArray2AXIS_U0", "Port" : "axis_dst_last_V"}]},
			{"Name" : "hist_hthr", "Type" : "None", "Direction" : "I"},
			{"Name" : "hist_lthr", "Type" : "None", "Direction" : "I"},
			{"Name" : "fifo1", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "GaussianBlur_U0", "Port" : "fifo1"},
					{"ID" : "3", "SubInstance" : "AXIS2GrayArray66_U0", "Port" : "fifo1"}]},
			{"Name" : "fifo2", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "GaussianBlur_U0", "Port" : "fifo2"},
					{"ID" : "9", "SubInstance" : "Sobel_512u_512u_U0", "Port" : "fifo2"}]},
			{"Name" : "fifo3_value", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "Sobel_512u_512u_U0", "Port" : "fifo3_value"},
					{"ID" : "16", "SubInstance" : "NonMaxSuppression_U0", "Port" : "fifo3_value"}]},
			{"Name" : "fifo3_grad", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "Sobel_512u_512u_U0", "Port" : "fifo3_grad"},
					{"ID" : "16", "SubInstance" : "NonMaxSuppression_U0", "Port" : "fifo3_grad"}]},
			{"Name" : "fifo4", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "NonMaxSuppression_U0", "Port" : "fifo4"},
					{"ID" : "19", "SubInstance" : "ZeroPadding_U0", "Port" : "fifo4"}]},
			{"Name" : "fifo5", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "HystThreshold_U0", "Port" : "fifo5"},
					{"ID" : "19", "SubInstance" : "ZeroPadding_U0", "Port" : "fifo5"}]},
			{"Name" : "fifo6", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "HystThresholdComp_U0", "Port" : "fifo6"},
					{"ID" : "20", "SubInstance" : "HystThreshold_U0", "Port" : "fifo6"}]},
			{"Name" : "fifo7", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "GrayArray2AXIS_U0", "Port" : "fifo7"},
					{"ID" : "21", "SubInstance" : "HystThresholdComp_U0", "Port" : "fifo7"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.canny_edge_detection_AXILiteS_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.canny_edge_detection_1_1_U0", "Parent" : "0",
		"CDFG" : "canny_edge_detection_1_1",
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
			{"Name" : "hist_hthr", "Type" : "None", "Direction" : "I"},
			{"Name" : "hist_lthr", "Type" : "None", "Direction" : "I"},
			{"Name" : "hist_hthr_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "24",
				"BlockSignal" : [
					{"Name" : "hist_hthr_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "hist_lthr_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "25",
				"BlockSignal" : [
					{"Name" : "hist_lthr_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.AXIS2GrayArray66_U0", "Parent" : "0", "Child" : ["4", "5", "6"],
		"CDFG" : "AXIS2GrayArray66",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "264193", "EstimateLatencyMax" : "264193",
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
			{"Name" : "hist_hthr", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "24",
				"BlockSignal" : [
					{"Name" : "hist_hthr_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "hist_lthr", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "25",
				"BlockSignal" : [
					{"Name" : "hist_lthr_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "hist_hthr_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "20", "DependentChan" : "26",
				"BlockSignal" : [
					{"Name" : "hist_hthr_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "hist_lthr_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "20", "DependentChan" : "27",
				"BlockSignal" : [
					{"Name" : "hist_lthr_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "7", "DependentChan" : "28",
				"BlockSignal" : [
					{"Name" : "fifo1_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AXIS2GrayArray66_U0.canny_edge_detectbkb_U5", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AXIS2GrayArray66_U0.canny_edge_detectcud_U6", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.AXIS2GrayArray66_U0.canny_edge_detectdEe_U7", "Parent" : "3"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_U0", "Parent" : "0", "Child" : ["8"],
		"CDFG" : "GaussianBlur",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "264705", "EstimateLatencyMax" : "264705",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "3",
		"StartFifo" : "start_for_Gaussiaocq_U",
		"Port" : [
			{"Name" : "fifo1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "28",
				"BlockSignal" : [
					{"Name" : "fifo1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "9", "DependentChan" : "29",
				"BlockSignal" : [
					{"Name" : "fifo2_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.GaussianBlur_U0.line_buf_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Sobel_512u_512u_U0", "Parent" : "0", "Child" : ["10", "11", "12", "13", "14", "15"],
		"CDFG" : "Sobel_512u_512u_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "276993", "EstimateLatencyMax" : "276993",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "7",
		"StartFifo" : "start_for_Sobel_5qcK_U",
		"Port" : [
			{"Name" : "fifo2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "29",
				"BlockSignal" : [
					{"Name" : "fifo2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo3_value", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "16", "DependentChan" : "30",
				"BlockSignal" : [
					{"Name" : "fifo3_value_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo3_grad", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "16", "DependentChan" : "31",
				"BlockSignal" : [
					{"Name" : "fifo3_grad_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Sobel_512u_512u_U0.line_buf_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Sobel_512u_512u_U0.canny_edge_detectg8j_U20", "Parent" : "9"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Sobel_512u_512u_U0.canny_edge_detecthbi_U21", "Parent" : "9"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Sobel_512u_512u_U0.canny_edge_detectibs_U22", "Parent" : "9"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Sobel_512u_512u_U0.canny_edge_detectjbC_U23", "Parent" : "9"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Sobel_512u_512u_U0.canny_edge_detectkbM_U24", "Parent" : "9"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.NonMaxSuppression_U0", "Parent" : "0", "Child" : ["17", "18"],
		"CDFG" : "NonMaxSuppression",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "264193", "EstimateLatencyMax" : "264193",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "9",
		"StartFifo" : "start_for_NonMaxSrcU_U",
		"Port" : [
			{"Name" : "fifo3_value", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "30",
				"BlockSignal" : [
					{"Name" : "fifo3_value_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo3_grad", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "31",
				"BlockSignal" : [
					{"Name" : "fifo3_grad_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "19", "DependentChan" : "32",
				"BlockSignal" : [
					{"Name" : "fifo4_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.NonMaxSuppression_U0.line_buf_value_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.NonMaxSuppression_U0.line_buf_grad_U", "Parent" : "16"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ZeroPadding_U0", "Parent" : "0",
		"CDFG" : "ZeroPadding",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "263681", "EstimateLatencyMax" : "263681",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "16",
		"StartFifo" : "start_for_ZeroPadsc4_U",
		"Port" : [
			{"Name" : "fifo4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "16", "DependentChan" : "32",
				"BlockSignal" : [
					{"Name" : "fifo4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo5", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "20", "DependentChan" : "33",
				"BlockSignal" : [
					{"Name" : "fifo5_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HystThreshold_U0", "Parent" : "0",
		"CDFG" : "HystThreshold",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "264193", "EstimateLatencyMax" : "264193",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "3",
		"StartFifo" : "start_for_HystThrpcA_U",
		"Port" : [
			{"Name" : "hthr", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "26",
				"BlockSignal" : [
					{"Name" : "hthr_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "lthr", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "27",
				"BlockSignal" : [
					{"Name" : "lthr_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo5", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "19", "DependentChan" : "33",
				"BlockSignal" : [
					{"Name" : "fifo5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo6", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "21", "DependentChan" : "34",
				"BlockSignal" : [
					{"Name" : "fifo6_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.HystThresholdComp_U0", "Parent" : "0", "Child" : ["22"],
		"CDFG" : "HystThresholdComp",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "264193", "EstimateLatencyMax" : "264193",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "20",
		"StartFifo" : "start_for_HystThrtde_U",
		"Port" : [
			{"Name" : "fifo6", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "20", "DependentChan" : "34",
				"BlockSignal" : [
					{"Name" : "fifo6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo7", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "23", "DependentChan" : "35",
				"BlockSignal" : [
					{"Name" : "fifo7_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.HystThresholdComp_U0.line_buf_U", "Parent" : "21"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.GrayArray2AXIS_U0", "Parent" : "0",
		"CDFG" : "GrayArray2AXIS",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "264193", "EstimateLatencyMax" : "264193",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "21",
		"StartFifo" : "start_for_GrayArrudo_U",
		"Port" : [
			{"Name" : "axis_dst_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "axis_out_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "axis_dst_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "fifo7", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "35",
				"BlockSignal" : [
					{"Name" : "fifo7_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hist_hthr_c1_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hist_lthr_c2_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hist_hthr_c_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hist_lthr_c_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo1_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo2_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo3_value_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo3_grad_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo4_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo5_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo6_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo7_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_Gaussiaocq_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_HystThrpcA_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_Sobel_5qcK_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_NonMaxSrcU_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_ZeroPadsc4_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_HystThrtde_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_GrayArrudo_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	canny_edge_detection {
		axis_in_data_V {Type I LastRead 2 FirstWrite -1}
		axis_in_last_V {Type I LastRead -1 FirstWrite -1}
		axis_out_data_V {Type O LastRead -1 FirstWrite 3}
		axis_out_last_V {Type O LastRead -1 FirstWrite 3}
		hist_hthr {Type I LastRead 0 FirstWrite -1}
		hist_lthr {Type I LastRead 0 FirstWrite -1}
		fifo1 {Type IO LastRead -1 FirstWrite -1}
		fifo2 {Type IO LastRead -1 FirstWrite -1}
		fifo3_value {Type IO LastRead -1 FirstWrite -1}
		fifo3_grad {Type IO LastRead -1 FirstWrite -1}
		fifo4 {Type IO LastRead -1 FirstWrite -1}
		fifo5 {Type IO LastRead -1 FirstWrite -1}
		fifo6 {Type IO LastRead -1 FirstWrite -1}
		fifo7 {Type IO LastRead -1 FirstWrite -1}}
	canny_edge_detection_1_1 {
		hist_hthr {Type I LastRead 0 FirstWrite -1}
		hist_lthr {Type I LastRead 0 FirstWrite -1}
		hist_hthr_out {Type O LastRead -1 FirstWrite 0}
		hist_lthr_out {Type O LastRead -1 FirstWrite 0}}
	AXIS2GrayArray66 {
		axis_src_data_V {Type I LastRead 2 FirstWrite -1}
		hist_hthr {Type I LastRead 0 FirstWrite -1}
		hist_lthr {Type I LastRead 0 FirstWrite -1}
		hist_hthr_out {Type O LastRead -1 FirstWrite 0}
		hist_lthr_out {Type O LastRead -1 FirstWrite 0}
		fifo1 {Type O LastRead -1 FirstWrite 4}}
	GaussianBlur {
		fifo1 {Type I LastRead 3 FirstWrite -1}
		fifo2 {Type O LastRead -1 FirstWrite 5}}
	Sobel_512u_512u_s {
		fifo2 {Type I LastRead 3 FirstWrite -1}
		fifo3_value {Type O LastRead -1 FirstWrite 29}
		fifo3_grad {Type O LastRead -1 FirstWrite 29}}
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
	{"Name" : "Latency", "Min" : "276999", "Max" : "276999"}
	, {"Name" : "Interval", "Min" : "276994", "Max" : "276994"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	axis_in_data_V { axis {  { axis_in_TDATA in_data 0 24 }  { axis_in_TVALID in_vld 0 1 }  { axis_in_TREADY in_acc 1 1 } } }
	axis_in_last_V { axis {  { axis_in_TLAST in_data 0 1 } } }
	axis_out_data_V { axis {  { axis_out_TDATA out_data 1 24 } } }
	axis_out_last_V { axis {  { axis_out_TLAST out_data 1 1 }  { axis_out_TVALID out_vld 1 1 }  { axis_out_TREADY out_acc 0 1 } } }
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
