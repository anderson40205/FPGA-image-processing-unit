set moduleName canny_edge_rectangle_2
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 1
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {canny_edge_rectangle.2}
set C_modelType { void 0 }
set C_modelArgList {
	{ bh int 8 regular {fifo 0}  }
	{ bl int 8 regular {fifo 0}  }
	{ bh_out int 8 regular {fifo 1}  }
	{ bh_out1 int 8 regular {fifo 1}  }
	{ bl_out int 8 regular {fifo 1}  }
	{ bl_out2 int 8 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "bh", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "bl", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "bh_out", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bh_out1", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bl_out", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bl_out2", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 28
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
	{ bh_dout sc_in sc_lv 8 signal 0 } 
	{ bh_empty_n sc_in sc_logic 1 signal 0 } 
	{ bh_read sc_out sc_logic 1 signal 0 } 
	{ bl_dout sc_in sc_lv 8 signal 1 } 
	{ bl_empty_n sc_in sc_logic 1 signal 1 } 
	{ bl_read sc_out sc_logic 1 signal 1 } 
	{ bh_out_din sc_out sc_lv 8 signal 2 } 
	{ bh_out_full_n sc_in sc_logic 1 signal 2 } 
	{ bh_out_write sc_out sc_logic 1 signal 2 } 
	{ bh_out1_din sc_out sc_lv 8 signal 3 } 
	{ bh_out1_full_n sc_in sc_logic 1 signal 3 } 
	{ bh_out1_write sc_out sc_logic 1 signal 3 } 
	{ bl_out_din sc_out sc_lv 8 signal 4 } 
	{ bl_out_full_n sc_in sc_logic 1 signal 4 } 
	{ bl_out_write sc_out sc_logic 1 signal 4 } 
	{ bl_out2_din sc_out sc_lv 8 signal 5 } 
	{ bl_out2_full_n sc_in sc_logic 1 signal 5 } 
	{ bl_out2_write sc_out sc_logic 1 signal 5 } 
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
 	{ "name": "bh_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bh", "role": "dout" }} , 
 	{ "name": "bh_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bh", "role": "empty_n" }} , 
 	{ "name": "bh_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bh", "role": "read" }} , 
 	{ "name": "bl_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bl", "role": "dout" }} , 
 	{ "name": "bl_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bl", "role": "empty_n" }} , 
 	{ "name": "bl_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bl", "role": "read" }} , 
 	{ "name": "bh_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bh_out", "role": "din" }} , 
 	{ "name": "bh_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bh_out", "role": "full_n" }} , 
 	{ "name": "bh_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bh_out", "role": "write" }} , 
 	{ "name": "bh_out1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bh_out1", "role": "din" }} , 
 	{ "name": "bh_out1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bh_out1", "role": "full_n" }} , 
 	{ "name": "bh_out1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bh_out1", "role": "write" }} , 
 	{ "name": "bl_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bl_out", "role": "din" }} , 
 	{ "name": "bl_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bl_out", "role": "full_n" }} , 
 	{ "name": "bl_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bl_out", "role": "write" }} , 
 	{ "name": "bl_out2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bl_out2", "role": "din" }} , 
 	{ "name": "bl_out2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bl_out2", "role": "full_n" }} , 
 	{ "name": "bl_out2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bl_out2", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
		"Port" : [
			{"Name" : "bh", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "bh_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bl", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "bl_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bh_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "bh_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bh_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "bh_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bl_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "bl_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bl_out2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "bl_out2_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	canny_edge_rectangle_2 {
		bh {Type I LastRead 0 FirstWrite -1}
		bl {Type I LastRead 0 FirstWrite -1}
		bh_out {Type O LastRead -1 FirstWrite 0}
		bh_out1 {Type O LastRead -1 FirstWrite 0}
		bl_out {Type O LastRead -1 FirstWrite 0}
		bl_out2 {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	bh { ap_fifo {  { bh_dout fifo_data 0 8 }  { bh_empty_n fifo_status 0 1 }  { bh_read fifo_update 1 1 } } }
	bl { ap_fifo {  { bl_dout fifo_data 0 8 }  { bl_empty_n fifo_status 0 1 }  { bl_read fifo_update 1 1 } } }
	bh_out { ap_fifo {  { bh_out_din fifo_data 1 8 }  { bh_out_full_n fifo_status 0 1 }  { bh_out_write fifo_update 1 1 } } }
	bh_out1 { ap_fifo {  { bh_out1_din fifo_data 1 8 }  { bh_out1_full_n fifo_status 0 1 }  { bh_out1_write fifo_update 1 1 } } }
	bl_out { ap_fifo {  { bl_out_din fifo_data 1 8 }  { bl_out_full_n fifo_status 0 1 }  { bl_out_write fifo_update 1 1 } } }
	bl_out2 { ap_fifo {  { bl_out2_din fifo_data 1 8 }  { bl_out2_full_n fifo_status 0 1 }  { bl_out2_write fifo_update 1 1 } } }
}
