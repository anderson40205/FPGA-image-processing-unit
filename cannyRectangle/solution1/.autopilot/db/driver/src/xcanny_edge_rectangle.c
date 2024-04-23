// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xcanny_edge_rectangle.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XCanny_edge_rectangle_CfgInitialize(XCanny_edge_rectangle *InstancePtr, XCanny_edge_rectangle_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Axilites_BaseAddress = ConfigPtr->Axilites_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XCanny_edge_rectangle_Start(XCanny_edge_rectangle *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCanny_edge_rectangle_ReadReg(InstancePtr->Axilites_BaseAddress, XCANNY_EDGE_RECTANGLE_AXILITES_ADDR_AP_CTRL) & 0x80;
    XCanny_edge_rectangle_WriteReg(InstancePtr->Axilites_BaseAddress, XCANNY_EDGE_RECTANGLE_AXILITES_ADDR_AP_CTRL, Data | 0x01);
}

u32 XCanny_edge_rectangle_IsDone(XCanny_edge_rectangle *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCanny_edge_rectangle_ReadReg(InstancePtr->Axilites_BaseAddress, XCANNY_EDGE_RECTANGLE_AXILITES_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XCanny_edge_rectangle_IsIdle(XCanny_edge_rectangle *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCanny_edge_rectangle_ReadReg(InstancePtr->Axilites_BaseAddress, XCANNY_EDGE_RECTANGLE_AXILITES_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XCanny_edge_rectangle_IsReady(XCanny_edge_rectangle *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCanny_edge_rectangle_ReadReg(InstancePtr->Axilites_BaseAddress, XCANNY_EDGE_RECTANGLE_AXILITES_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XCanny_edge_rectangle_EnableAutoRestart(XCanny_edge_rectangle *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCanny_edge_rectangle_WriteReg(InstancePtr->Axilites_BaseAddress, XCANNY_EDGE_RECTANGLE_AXILITES_ADDR_AP_CTRL, 0x80);
}

void XCanny_edge_rectangle_DisableAutoRestart(XCanny_edge_rectangle *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCanny_edge_rectangle_WriteReg(InstancePtr->Axilites_BaseAddress, XCANNY_EDGE_RECTANGLE_AXILITES_ADDR_AP_CTRL, 0);
}

u32 XCanny_edge_rectangle_Get_hist_hthr(XCanny_edge_rectangle *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCanny_edge_rectangle_ReadReg(InstancePtr->Axilites_BaseAddress, XCANNY_EDGE_RECTANGLE_AXILITES_ADDR_HIST_HTHR_DATA);
    return Data;
}

u32 XCanny_edge_rectangle_Get_hist_hthr_vld(XCanny_edge_rectangle *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCanny_edge_rectangle_ReadReg(InstancePtr->Axilites_BaseAddress, XCANNY_EDGE_RECTANGLE_AXILITES_ADDR_HIST_HTHR_CTRL);
    return Data & 0x1;
}

u32 XCanny_edge_rectangle_Get_hist_lthr(XCanny_edge_rectangle *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCanny_edge_rectangle_ReadReg(InstancePtr->Axilites_BaseAddress, XCANNY_EDGE_RECTANGLE_AXILITES_ADDR_HIST_LTHR_DATA);
    return Data;
}

u32 XCanny_edge_rectangle_Get_hist_lthr_vld(XCanny_edge_rectangle *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCanny_edge_rectangle_ReadReg(InstancePtr->Axilites_BaseAddress, XCANNY_EDGE_RECTANGLE_AXILITES_ADDR_HIST_LTHR_CTRL);
    return Data & 0x1;
}

void XCanny_edge_rectangle_InterruptGlobalEnable(XCanny_edge_rectangle *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCanny_edge_rectangle_WriteReg(InstancePtr->Axilites_BaseAddress, XCANNY_EDGE_RECTANGLE_AXILITES_ADDR_GIE, 1);
}

void XCanny_edge_rectangle_InterruptGlobalDisable(XCanny_edge_rectangle *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCanny_edge_rectangle_WriteReg(InstancePtr->Axilites_BaseAddress, XCANNY_EDGE_RECTANGLE_AXILITES_ADDR_GIE, 0);
}

void XCanny_edge_rectangle_InterruptEnable(XCanny_edge_rectangle *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XCanny_edge_rectangle_ReadReg(InstancePtr->Axilites_BaseAddress, XCANNY_EDGE_RECTANGLE_AXILITES_ADDR_IER);
    XCanny_edge_rectangle_WriteReg(InstancePtr->Axilites_BaseAddress, XCANNY_EDGE_RECTANGLE_AXILITES_ADDR_IER, Register | Mask);
}

void XCanny_edge_rectangle_InterruptDisable(XCanny_edge_rectangle *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XCanny_edge_rectangle_ReadReg(InstancePtr->Axilites_BaseAddress, XCANNY_EDGE_RECTANGLE_AXILITES_ADDR_IER);
    XCanny_edge_rectangle_WriteReg(InstancePtr->Axilites_BaseAddress, XCANNY_EDGE_RECTANGLE_AXILITES_ADDR_IER, Register & (~Mask));
}

void XCanny_edge_rectangle_InterruptClear(XCanny_edge_rectangle *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCanny_edge_rectangle_WriteReg(InstancePtr->Axilites_BaseAddress, XCANNY_EDGE_RECTANGLE_AXILITES_ADDR_ISR, Mask);
}

u32 XCanny_edge_rectangle_InterruptGetEnabled(XCanny_edge_rectangle *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCanny_edge_rectangle_ReadReg(InstancePtr->Axilites_BaseAddress, XCANNY_EDGE_RECTANGLE_AXILITES_ADDR_IER);
}

u32 XCanny_edge_rectangle_InterruptGetStatus(XCanny_edge_rectangle *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCanny_edge_rectangle_ReadReg(InstancePtr->Axilites_BaseAddress, XCANNY_EDGE_RECTANGLE_AXILITES_ADDR_ISR);
}

