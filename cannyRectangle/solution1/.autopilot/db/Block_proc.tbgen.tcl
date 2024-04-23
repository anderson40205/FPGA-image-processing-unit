set moduleName Block_proc
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
set C_modelName {Block__proc}
set C_modelType { void 0 }
set C_modelArgList {
	{ bh int 8 regular {fifo 0}  }
	{ hist_hthr int 8 regular {pointer 1}  }
	{ bl int 8 regular {fifo 0}  }
	{ hist_lthr int 8 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "bh", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "hist_hthr", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bl", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "hist_lthr", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ bh_dout sc_in sc_lv 8 signal 0 } 
	{ bh_empty_n sc_in sc_logic 1 signal 0 } 
	{ bh_read sc_out sc_logic 1 signal 0 } 
	{ hist_hthr sc_out sc_lv 8 signal 1 } 
	{ hist_hthr_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ bl_dout sc_in sc_lv 8 signal 2 } 
	{ bl_empty_n sc_in sc_logic 1 signal 2 } 
	{ bl_read sc_out sc_logic 1 signal 2 } 
	{ hist_lthr sc_out sc_lv 8 signal 3 } 
	{ hist_lthr_ap_vld sc_out sc_logic 1 outvld 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "bh_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bh", "role": "dout" }} , 
 	{ "name": "bh_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bh", "role": "empty_n" }} , 
 	{ "name": "bh_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bh", "role": "read" }} , 
 	{ "name": "hist_hthr", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "hist_hthr", "role": "default" }} , 
 	{ "name": "hist_hthr_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "hist_hthr", "role": "ap_vld" }} , 
 	{ "name": "bl_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bl", "role": "dout" }} , 
 	{ "name": "bl_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bl", "role": "empty_n" }} , 
 	{ "name": "bl_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bl", "role": "read" }} , 
 	{ "name": "hist_lthr", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "hist_lthr", "role": "default" }} , 
 	{ "name": "hist_lthr_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "hist_lthr", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
		"Port" : [
			{"Name" : "bh", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "bh_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "hist_hthr", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bl", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "bl_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "hist_lthr", "Type" : "Vld", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	Block_proc {
		bh {Type I LastRead 0 FirstWrite -1}
		hist_hthr {Type O LastRead -1 FirstWrite 0}
		bl {Type I LastRead 0 FirstWrite -1}
		hist_lthr {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	bh { ap_fifo {  { bh_dout fifo_data 0 8 }  { bh_empty_n fifo_status 0 1 }  { bh_read fifo_update 1 1 } } }
	hist_hthr { ap_vld {  { hist_hthr out_data 1 8 }  { hist_hthr_ap_vld out_vld 1 1 } } }
	bl { ap_fifo {  { bl_dout fifo_data 0 8 }  { bl_empty_n fifo_status 0 1 }  { bl_read fifo_update 1 1 } } }
	hist_lthr { ap_vld {  { hist_lthr out_data 1 8 }  { hist_lthr_ap_vld out_vld 1 1 } } }
}
