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
//   $RCSfile: example_prime_top_bb_vivado.ejava,v $
//   $Revision: 1.1 $
//   Modify $Date: 2012/11/05 11:22:56 $
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
// Black box declaration

// Black box declaration
module vivado_ibert
  (
  output X0Y12_TX_P_OPAD,
  output X0Y12_TX_N_OPAD,
  output X0Y13_TX_P_OPAD,
  output X0Y13_TX_N_OPAD,
  output X0Y14_TX_P_OPAD,
  output X0Y14_TX_N_OPAD,
  output X0Y15_TX_P_OPAD,
  output X0Y15_TX_N_OPAD,
  input X0Y12_RX_P_IPAD,
  input X0Y12_RX_N_IPAD,
  input X0Y13_RX_P_IPAD,
  input X0Y13_RX_N_IPAD,
  input X0Y14_RX_P_IPAD,
  input X0Y14_RX_N_IPAD,
  input X0Y15_RX_P_IPAD,
  input X0Y15_RX_N_IPAD,
  input Q3_CLK0_MGTREFCLK_I,
  inout [35:0] CONTROL,
  input IBERT_SYSCLOCK_I
  );
endmodule
module icon_kintex7
  (
  inout [35:0] CONTROL0);
endmodule

