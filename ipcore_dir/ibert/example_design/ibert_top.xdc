################################################################################
#  Copyright (c) 2009 Xilinx, Inc.
#
#   ____  ____
#  /   /\/   /
# /___/  \  /   This   document  contains  proprietary information  which   is
# \   \   \/    protected by  copyright. All rights  are reserved. No  part of
#  \   \        this  document may be photocopied, reproduced or translated to
#  /   /        another  program  language  without  prior written  consent of
# /___/   /\    XILINX Inc., San Jose, CA. 95125                              
# \   \  /  \ 
#  \___\/\___\
# 
#  Xilinx Template Revision:
#   $RCSfile: ibert_core_xdc.ejava,v $
#   $Revision: 1.4.14.1 $
#   Modify $Date: 2012/11/19 18:12:59 $
#   Application : Kintex-7 IBERT
#   Version : 1.3
#
#  Project Information:
#   Device:  xc7k325t
#   Package: ffg900
#


#-------------------------------------------------------------------------------------
# JTAG interface Constraints 
#-------------------------------------------------------------------------------------
create_clock -name D_CLK -period 30 -waveform {15 30} [get_nets U_IBERT/U0/U_IBERT_CORE/ma_dclk]

#-------------------------------------------------------------------------------------
# GT Clock Constraints 
#-------------------------------------------------------------------------------------
# Input REFCLK constratins
# QUAD 3
create_clock -name Q3_CLK0_MGTREFCLK_P_IPAD -period 8.0 [get_ports Q3_CLK0_MGTREFCLK_P_IPAD]


# GT PLL output constraints
# GT X0Y12
create_clock -name U_IBERT/U0/U_IBERT_CORE/U_GTCPX_X0Y12/gt_rxoutclk -period 4.0 [get_pins U_IBERT/U0/U_IBERT_CORE/U_GTCPX_X0Y12/U_GT_CHANNEL_X0Y12/gtxe2_i_x0y12/RXOUTCLK]
create_clock -name U_IBERT/U0/U_IBERT_CORE/U_GTCPX_X0Y12/gt_txoutclk -period 4.0 [get_pins U_IBERT/U0/U_IBERT_CORE/U_GTCPX_X0Y12/U_GT_CHANNEL_X0Y12/gtxe2_i_x0y12/TXOUTCLK]
# GT X0Y13
create_clock -name U_IBERT/U0/U_IBERT_CORE/U_GTCPX_X0Y13/gt_rxoutclk -period 4.0 [get_pins U_IBERT/U0/U_IBERT_CORE/U_GTCPX_X0Y13/U_GT_CHANNEL_X0Y13/gtxe2_i_x0y13/RXOUTCLK]
create_clock -name U_IBERT/U0/U_IBERT_CORE/U_GTCPX_X0Y13/gt_txoutclk -period 4.0 [get_pins U_IBERT/U0/U_IBERT_CORE/U_GTCPX_X0Y13/U_GT_CHANNEL_X0Y13/gtxe2_i_x0y13/TXOUTCLK]
# GT X0Y14
create_clock -name U_IBERT/U0/U_IBERT_CORE/U_GTCPX_X0Y14/gt_rxoutclk -period 4.0 [get_pins U_IBERT/U0/U_IBERT_CORE/U_GTCPX_X0Y14/U_GT_CHANNEL_X0Y14/gtxe2_i_x0y14/RXOUTCLK]
create_clock -name U_IBERT/U0/U_IBERT_CORE/U_GTCPX_X0Y14/gt_txoutclk -period 4.0 [get_pins U_IBERT/U0/U_IBERT_CORE/U_GTCPX_X0Y14/U_GT_CHANNEL_X0Y14/gtxe2_i_x0y14/TXOUTCLK]
# GT X0Y15
create_clock -name U_IBERT/U0/U_IBERT_CORE/U_GTCPX_X0Y15/gt_rxoutclk -period 4.0 [get_pins U_IBERT/U0/U_IBERT_CORE/U_GTCPX_X0Y15/U_GT_CHANNEL_X0Y15/gtxe2_i_x0y15/RXOUTCLK]
create_clock -name U_IBERT/U0/U_IBERT_CORE/U_GTCPX_X0Y15/gt_txoutclk -period 4.0 [get_pins U_IBERT/U0/U_IBERT_CORE/U_GTCPX_X0Y15/U_GT_CHANNEL_X0Y15/gtxe2_i_x0y15/TXOUTCLK]
#-------------------------------------------------------------------------------------
# System Clock Timing Constraints and PIN LOCs (if applicable) 
#-------------------------------------------------------------------------------------
set_property IOSTANDARD LVDS [get_ports IBERT_SYSCLOCK_P_IPAD]
set_property IOSTANDARD LVDS [get_ports IBERT_SYSCLOCK_N_IPAD]
set_property PACKAGE_PIN AD12 [get_ports IBERT_SYSCLOCK_P_IPAD]
set_property PACKAGE_PIN AD11 [get_ports IBERT_SYSCLOCK_N_IPAD]
create_clock -name ibert_sysclock -period 5.0 [get_pins U_SYSCLOCK_IBUFDS/O]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_pins U_IBERT/U0/U_IBERT_CORE/U_MA_DCLK_DIVIDER/mmcm_adv_inst/CLKIN1]


#-------------------------------------------------------------------------------------
# GT LOC constraint 
#-------------------------------------------------------------------------------------
set_property LOC GTXE2_CHANNEL_X0Y12 [get_cells U_IBERT/U0/U_IBERT_CORE/U_GTCPX_X0Y12/U_GT_CHANNEL_X0Y12/gtxe2_i_x0y12]
set_property LOC GTXE2_CHANNEL_X0Y13 [get_cells U_IBERT/U0/U_IBERT_CORE/U_GTCPX_X0Y13/U_GT_CHANNEL_X0Y13/gtxe2_i_x0y13]
set_property LOC GTXE2_CHANNEL_X0Y14 [get_cells U_IBERT/U0/U_IBERT_CORE/U_GTCPX_X0Y14/U_GT_CHANNEL_X0Y14/gtxe2_i_x0y14]
set_property LOC GTXE2_CHANNEL_X0Y15 [get_cells U_IBERT/U0/U_IBERT_CORE/U_GTCPX_X0Y15/U_GT_CHANNEL_X0Y15/gtxe2_i_x0y15]
set_property LOC GTXE2_COMMON_X0Y3 [get_cells U_IBERT/U0/U_IBERT_CORE/U_GTCCPX_QUAD3/U_GTXE2_COMN_QUAD3/gtxe2_comm]
#-------------------------------------------------------------------------------------
# GT REFCLK PIN LOCs 
#-------------------------------------------------------------------------------------
set_property PACKAGE_PIN C8 [get_ports Q3_CLK0_MGTREFCLK_P_IPAD]
set_property PACKAGE_PIN C7 [get_ports Q3_CLK0_MGTREFCLK_N_IPAD]
#-------------------------------------------------------------------------------------
# RXOUTCLK OUTPUT PIN LOCs (if enabled) 
#-------------------------------------------------------------------------------------
set_clock_groups -group [get_clocks D_CLK] -group [get_clocks *gt_*xoutclk] -asynchronous
set_clock_groups -group [get_clocks D_CLK] -group [get_clocks *MGTREFCLK*] -asynchronous
