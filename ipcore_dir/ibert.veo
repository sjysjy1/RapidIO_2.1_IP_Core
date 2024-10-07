///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 2016 Xilinx, Inc.
// All Rights Reserved
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor     : Xilinx
// \   \   \/     Version    : 14.5
//  \   \         Application: Xilinx CORE Generator
//  /   /         Filename   : ibert.veo
// /___/   /\     Timestamp  : Fri Apr 22 17:46:22 中国标准时间 2016
// \   \  /  \
//  \___\/\___\
//
// Design Name: ISE Instantiation template
///////////////////////////////////////////////////////////////////////////////

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
ibert YourInstanceName (
    .X0Y12_TX_P_OPAD(X0Y12_TX_P_OPAD), // OUT
    .X0Y12_TX_N_OPAD(X0Y12_TX_N_OPAD), // OUT
    .X0Y13_TX_P_OPAD(X0Y13_TX_P_OPAD), // OUT
    .X0Y13_TX_N_OPAD(X0Y13_TX_N_OPAD), // OUT
    .X0Y14_TX_P_OPAD(X0Y14_TX_P_OPAD), // OUT
    .X0Y14_TX_N_OPAD(X0Y14_TX_N_OPAD), // OUT
    .X0Y15_TX_P_OPAD(X0Y15_TX_P_OPAD), // OUT
    .X0Y15_TX_N_OPAD(X0Y15_TX_N_OPAD), // OUT
    .CONTROL(CONTROL), // INOUT BUS [35:0]
    .X0Y12_RX_P_IPAD(X0Y12_RX_P_IPAD), // IN
    .X0Y12_RX_N_IPAD(X0Y12_RX_N_IPAD), // IN
    .X0Y13_RX_P_IPAD(X0Y13_RX_P_IPAD), // IN
    .X0Y13_RX_N_IPAD(X0Y13_RX_N_IPAD), // IN
    .X0Y14_RX_P_IPAD(X0Y14_RX_P_IPAD), // IN
    .X0Y14_RX_N_IPAD(X0Y14_RX_N_IPAD), // IN
    .X0Y15_RX_P_IPAD(X0Y15_RX_P_IPAD), // IN
    .X0Y15_RX_N_IPAD(X0Y15_RX_N_IPAD), // IN
    .Q3_CLK0_MGTREFCLK_I(Q3_CLK0_MGTREFCLK_I), // IN
    .Q3_CLK1_MGTREFCLK_I(Q3_CLK1_MGTREFCLK_I), // IN
    .IBERT_SYSCLOCK_I(IBERT_SYSCLOCK_I) // IN
);

// INST_TAG_END ------ End INSTANTIATION Template ---------

