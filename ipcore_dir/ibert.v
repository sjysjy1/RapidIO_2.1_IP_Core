///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 2016 Xilinx, Inc.
// All Rights Reserved
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor     : Xilinx
// \   \   \/     Version    : 14.5
//  \   \         Application: Xilinx CORE Generator
//  /   /         Filename   : ibert.v
// /___/   /\     Timestamp  : Fri Apr 22 17:46:22 中国标准时间 2016
// \   \  /  \
//  \___\/\___\
//
// Design Name: Verilog Synthesis Wrapper
///////////////////////////////////////////////////////////////////////////////
// This wrapper is used to integrate with Project Navigator and PlanAhead

`timescale 1ns/1ps

module ibert(
    X0Y12_TX_P_OPAD,
    X0Y12_TX_N_OPAD,
    X0Y13_TX_P_OPAD,
    X0Y13_TX_N_OPAD,
    X0Y14_TX_P_OPAD,
    X0Y14_TX_N_OPAD,
    X0Y15_TX_P_OPAD,
    X0Y15_TX_N_OPAD,
    CONTROL,
    X0Y12_RX_P_IPAD,
    X0Y12_RX_N_IPAD,
    X0Y13_RX_P_IPAD,
    X0Y13_RX_N_IPAD,
    X0Y14_RX_P_IPAD,
    X0Y14_RX_N_IPAD,
    X0Y15_RX_P_IPAD,
    X0Y15_RX_N_IPAD,
    Q3_CLK0_MGTREFCLK_I,
    Q3_CLK1_MGTREFCLK_I,
    IBERT_SYSCLOCK_I) /* synthesis syn_black_box syn_noprune=1 */;


output X0Y12_TX_P_OPAD;
output X0Y12_TX_N_OPAD;
output X0Y13_TX_P_OPAD;
output X0Y13_TX_N_OPAD;
output X0Y14_TX_P_OPAD;
output X0Y14_TX_N_OPAD;
output X0Y15_TX_P_OPAD;
output X0Y15_TX_N_OPAD;
inout [35 : 0] CONTROL;
input X0Y12_RX_P_IPAD;
input X0Y12_RX_N_IPAD;
input X0Y13_RX_P_IPAD;
input X0Y13_RX_N_IPAD;
input X0Y14_RX_P_IPAD;
input X0Y14_RX_N_IPAD;
input X0Y15_RX_P_IPAD;
input X0Y15_RX_N_IPAD;
input Q3_CLK0_MGTREFCLK_I;
input Q3_CLK1_MGTREFCLK_I;
input IBERT_SYSCLOCK_I;

endmodule
