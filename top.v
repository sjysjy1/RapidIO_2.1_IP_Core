`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:35:15 04/22/2016 
// Design Name: 
// Module Name:    top 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module top(
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
	
	input IBERT_SYSCLOCK_I_p,
	input IBERT_SYSCLOCK_I_n,
	
	input Q3_CLK0_MGTREFCLK_P,
	input Q3_CLK0_MGTREFCLK_N
	);

IBUFDS #( 
.DIFF_TERM("FALSE"),  
.IOSTANDARD("DEFAULT")  
) IBUFDS_inst2 ( 
.O(IBERT_SYSCLOCK_I), 
.I(IBERT_SYSCLOCK_I_p),  
.IB(IBERT_SYSCLOCK_I_n)  
); 

  wire Q3_CLK0_MGTREFCLK_I;
  IBUFDS_GTE2 U_Q3_CLK0_MGTREFCLK
   (
   .O(Q3_CLK0_MGTREFCLK_I),
   .ODIV2(),
   .CEB(1'b0),
   .I(Q3_CLK0_MGTREFCLK_P),
   .IB(Q3_CLK0_MGTREFCLK_N)
   );
   
   
wire [0:35] CONTROL;
ibert ibert_u (
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
    .Q3_CLK1_MGTREFCLK_I(), // IN
    .IBERT_SYSCLOCK_I(IBERT_SYSCLOCK_I) // IN
);

icon_core icon_core_u(
   .CONTROL0(CONTROL) 
   );
endmodule
