// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xcanny_edge_rectangle.h"

extern XCanny_edge_rectangle_Config XCanny_edge_rectangle_ConfigTable[];

XCanny_edge_rectangle_Config *XCanny_edge_rectangle_LookupConfig(u16 DeviceId) {
	XCanny_edge_rectangle_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XCANNY_EDGE_RECTANGLE_NUM_INSTANCES; Index++) {
		if (XCanny_edge_rectangle_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XCanny_edge_rectangle_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XCanny_edge_rectangle_Initialize(XCanny_edge_rectangle *InstancePtr, u16 DeviceId) {
	XCanny_edge_rectangle_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XCanny_edge_rectangle_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XCanny_edge_rectangle_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

