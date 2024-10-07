///////////////////////////////////////////////////////////////////////////////////////////
//  Copyright (c) 2009 Xilinx, Inc.
//
//   ____  ____
//  /   /\/   /
// /___/  \  /   This   document  contains  proprietary information  which   is
// \   \   \/    protected by  copyright. All rights  are reserved. No  part of
//  \   \        this  document may be photocopied, reproduced or translated to
//  /   /        another  program  language  without  prior written  consent of
// /___/   /\    XILINX Inc., San Jose, CA. 95125                              
// \   \  /  \ 
//  \___\/\___\
// 
//  Xilinx Template Revision:
//   $RCSfile: example_prime_top.ejava,v $
//   $Revision: 1.8 $
//   Modify $Date: 2012/09/21 11:25:54 $
//   Application : Virtex-6 IBERT
//   Version : 1.3
//
//  Description:
//   This file is an example top wrapper for the ibert design with the required
//   clock buffers. User logic can be instantiated in this wrapper along with 
//   the ibert design.
//

`timescale 1ns / 1ps
//***************************** Module ****************************
module example_ibert
  (
  //Input Declarations
  input IBERT_SYSCLOCK_P_IPAD,
  input IBERT_SYSCLOCK_N_IPAD,
  input X0Y12_RX_P_IPAD,
  input X0Y12_RX_N_IPAD,
  input X0Y13_RX_P_IPAD,
  input X0Y13_RX_N_IPAD,
  input X0Y14_RX_P_IPAD,
  input X0Y14_RX_N_IPAD,
  input X0Y15_RX_P_IPAD,
  input X0Y15_RX_N_IPAD,
  input Q3_CLK0_MGTREFCLK_P_IPAD,
  input Q3_CLK0_MGTREFCLK_N_IPAD,
  //Output Decalarations
  output X0Y12_TX_P_OPAD,
  output X0Y12_TX_N_OPAD,
  output X0Y13_TX_P_OPAD,
  output X0Y13_TX_N_OPAD,
  output X0Y14_TX_P_OPAD,
  output X0Y14_TX_N_OPAD,
  output X0Y15_TX_P_OPAD,
  output X0Y15_TX_N_OPAD
  );

  //local signals declaration
  wire q3_clk0_mgtrefclk;
  wire [35:0] control0;
  wire ibert_sysclock;
  //User Signals
  //Icon core instance
  icon_kintex7 U_ICON
    ( 
    .CONTROL0(control0));

  // Ibert Core Wrapper Instance
  ibert U_IBERT
    (
    .X0Y12_TX_P_OPAD(X0Y12_TX_P_OPAD),
    .X0Y12_TX_N_OPAD(X0Y12_TX_N_OPAD),
    .X0Y13_TX_P_OPAD(X0Y13_TX_P_OPAD),
    .X0Y13_TX_N_OPAD(X0Y13_TX_N_OPAD),
    .X0Y14_TX_P_OPAD(X0Y14_TX_P_OPAD),
    .X0Y14_TX_N_OPAD(X0Y14_TX_N_OPAD),
    .X0Y15_TX_P_OPAD(X0Y15_TX_P_OPAD),
    .X0Y15_TX_N_OPAD(X0Y15_TX_N_OPAD),
    .X0Y12_RX_P_IPAD(X0Y12_RX_P_IPAD),
    .X0Y12_RX_N_IPAD(X0Y12_RX_N_IPAD),
    .X0Y13_RX_P_IPAD(X0Y13_RX_P_IPAD),
    .X0Y13_RX_N_IPAD(X0Y13_RX_N_IPAD),
    .X0Y14_RX_P_IPAD(X0Y14_RX_P_IPAD),
    .X0Y14_RX_N_IPAD(X0Y14_RX_N_IPAD),
    .X0Y15_RX_P_IPAD(X0Y15_RX_P_IPAD),
    .X0Y15_RX_N_IPAD(X0Y15_RX_N_IPAD),
    .Q3_CLK0_MGTREFCLK_I(q3_clk0_mgtrefclk),
    .CONTROL(control0),
    .IBERT_SYSCLOCK_I(ibert_sysclock)
    );

  // GT Refclock Instances
  IBUFDS_GTE2 U_Q3_CLK0_MGTREFCLK
   (
   .O(q3_clk0_mgtrefclk),
   .ODIV2(),
   .CEB(1'b0),
   .I(Q3_CLK0_MGTREFCLK_P_IPAD),
   .IB(Q3_CLK0_MGTREFCLK_N_IPAD)
   );
  // Sysclock Source
  IBUFDS
   #(.DIFF_TERM("FALSE"))
  U_SYSCLOCK_IBUFDS
    (
    .O(ibert_sysclock),
    .I(IBERT_SYSCLOCK_P_IPAD),
    .IB(IBERT_SYSCLOCK_N_IPAD)
    );


endmodule
