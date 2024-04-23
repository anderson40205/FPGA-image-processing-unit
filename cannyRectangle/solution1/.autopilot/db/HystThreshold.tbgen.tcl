set moduleName HystThreshold
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {HystThreshold}
set C_modelType { void 0 }
set C_modelArgList {
	{ hthr int 8 regular {fifo 0}  }
	{ lthr int 8 regular {fifo 0}  }
	{ fifo5 int 8 regular {fifo 0 volatile } {global 0}  }
	{ fifo6 int 8 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "hthr", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "lthr", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "fifo5", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "fifo5","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 2073599,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "fifo6", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "fifo6","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 2073599,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 22
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
	{ hthr_dout sc_in sc_lv 8 signal 0 } 
	{ hthr_empty_n sc_in sc_logic 1 signal 0 } 
	{ hthr_read sc_out sc_logic 1 signal 0 } 
	{ lthr_dout sc_in sc_lv 8 signal 1 } 
	{ lthr_empty_n sc_in sc_logic 1 signal 1 } 
	{ lthr_read sc_out sc_logic 1 signal 1 } 
	{ fifo5_dout sc_in sc_lv 8 signal 2 } 
	{ fifo5_empty_n sc_in sc_logic 1 signal 2 } 
	{ fifo5_read sc_out sc_logic 1 signal 2 } 
	{ fifo6_din sc_out sc_lv 8 signal 3 } 
	{ fifo6_full_n sc_in sc_logic 1 signal 3 } 
	{ fifo6_write sc_out sc_logic 1 signal 3 } 
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
 	{ "name": "hthr_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "hthr", "role": "dout" }} , 
 	{ "name": "hthr_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hthr", "role": "empty_n" }} , 
 	{ "name": "hthr_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hthr", "role": "read" }} , 
 	{ "name": "lthr_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "lthr", "role": "dout" }} , 
 	{ "name": "lthr_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lthr", "role": "empty_n" }} , 
 	{ "name": "lthr_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lthr", "role": "read" }} , 
 	{ "name": "fifo5_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "fifo5", "role": "dout" }} , 
 	{ "name": "fifo5_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo5", "role": "empty_n" }} , 
 	{ "name": "fifo5_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo5", "role": "read" }} , 
 	{ "name": "fifo6_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "fifo6", "role": "din" }} , 
 	{ "name": "fifo6_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo6", "role": "full_n" }} , 
 	{ "name": "fifo6_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo6", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
		"Port" : [
			{"Name" : "hthr", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "hthr_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "lthr", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "lthr_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo5", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "fifo5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fifo6", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "fifo6_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	HystThreshold {
		hthr {Type I LastRead 0 FirstWrite -1}
		lthr {Type I LastRead 0 FirstWrite -1}
		fifo5 {Type I LastRead 3 FirstWrite -1}
		fifo6 {Type O LastRead -1 FirstWrite 4}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2077921", "Max" : "2077921"}
	, {"Name" : "Interval", "Min" : "2077921", "Max" : "2077921"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	hthr { ap_fifo {  { hthr_dout fifo_data 0 8 }  { hthr_empty_n fifo_status 0 1 }  { hthr_read fifo_update 1 1 } } }
	lthr { ap_fifo {  { lthr_dout fifo_data 0 8 }  { lthr_empty_n fifo_status 0 1 }  { lthr_read fifo_update 1 1 } } }
	fifo5 { ap_fifo {  { fifo5_dout fifo_data 0 8 }  { fifo5_empty_n fifo_status 0 1 }  { fifo5_read fifo_update 1 1 } } }
	fifo6 { ap_fifo {  { fifo6_din fifo_data 1 8 }  { fifo6_full_n fifo_status 0 1 }  { fifo6_write fifo_update 1 1 } } }
}
