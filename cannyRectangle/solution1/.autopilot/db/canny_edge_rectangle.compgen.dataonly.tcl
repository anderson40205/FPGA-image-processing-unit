# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_AXILiteS {
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
hist_hthr { 
	dir O
	width 8
	depth 1
	mode ap_vld
	offset 16
	offset_end 23
}
hist_lthr { 
	dir O
	width 8
	depth 1
	mode ap_vld
	offset 24
	offset_end 31
}
}
dict set axilite_register_dict AXILiteS $port_AXILiteS


