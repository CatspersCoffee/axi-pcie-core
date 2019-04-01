##############################################################################
## This file is part of 'axi-pcie-core'.
## It is subject to the license terms in the LICENSE.txt file found in the 
## top-level directory of this distribution and at: 
##    https://confluence.slac.stanford.edu/display/ppareg/LICENSE.html. 
## No part of 'axi-pcie-core', including this file, 
## may be copied, modified, propagated, or distributed except according to 
## the terms contained in the LICENSE.txt file.
##############################################################################

set_property -dict { PACKAGE_PIN B9  IOSTANDARD LVCMOS33 } [get_ports { extRst }]

set_property -dict { PACKAGE_PIN C9  IOSTANDARD LVCMOS33 } [get_ports { led[0] }]
set_property -dict { PACKAGE_PIN D9  IOSTANDARD LVCMOS33 } [get_ports { led[1] }]
set_property -dict { PACKAGE_PIN E10 IOSTANDARD LVCMOS33 } [get_ports { led[2] }]
set_property -dict { PACKAGE_PIN E11 IOSTANDARD LVCMOS33 } [get_ports { led[3] }]
set_property -dict { PACKAGE_PIN F9  IOSTANDARD LVCMOS33 } [get_ports { led[4] }]
set_property -dict { PACKAGE_PIN F10 IOSTANDARD LVCMOS33 } [get_ports { led[5] }]
set_property -dict { PACKAGE_PIN G9  IOSTANDARD LVCMOS33 } [get_ports { led[6] }]
set_property -dict { PACKAGE_PIN G10 IOSTANDARD LVCMOS33 } [get_ports { led[7] }]

set_property -dict { PACKAGE_PIN AB14 IOSTANDARD LVCMOS33 } [get_ports { sfpTxDisL[0] }]
set_property -dict { PACKAGE_PIN AA14 IOSTANDARD LVCMOS33 } [get_ports { sfpTxDisL[1] }]
set_property -dict { PACKAGE_PIN AA15 IOSTANDARD LVCMOS33 } [get_ports { sfpTxDisL[2] }]
set_property -dict { PACKAGE_PIN Y15  IOSTANDARD LVCMOS33 } [get_ports { sfpTxDisL[3] }]

set_property PACKAGE_PIN N5 [get_ports sfpTxP[0]]
set_property PACKAGE_PIN N4 [get_ports sfpTxN[0]]
set_property PACKAGE_PIN M2 [get_ports sfpRxP[0]]
set_property PACKAGE_PIN M1 [get_ports sfpRxN[0]]

set_property PACKAGE_PIN L5 [get_ports sfpTxP[1]]
set_property PACKAGE_PIN L4 [get_ports sfpTxN[1]]
set_property PACKAGE_PIN K2 [get_ports sfpRxP[1]]
set_property PACKAGE_PIN K1 [get_ports sfpRxN[1]]

set_property PACKAGE_PIN J5 [get_ports sfpTxP[2]]
set_property PACKAGE_PIN J4 [get_ports sfpTxN[2]]
set_property PACKAGE_PIN H2 [get_ports sfpRxP[2]]
set_property PACKAGE_PIN H1 [get_ports sfpRxN[2]]

set_property PACKAGE_PIN G5 [get_ports sfpTxP[3]]
set_property PACKAGE_PIN G4 [get_ports sfpTxN[3]]
set_property PACKAGE_PIN F2 [get_ports sfpRxP[3]]
set_property PACKAGE_PIN F1 [get_ports sfpRxN[3]]

set_property PACKAGE_PIN M7 [get_ports sfpClk156P]
set_property PACKAGE_PIN M6 [get_ports sfpClk156N]


##############################################################################

set_property PACKAGE_PIN AD20 [get_ports { fmcHpcLaP[0] }]
set_property PACKAGE_PIN AE20 [get_ports { fmcHpcLaN[0] }]
set_property PACKAGE_PIN AC19 [get_ports { fmcHpcLaP[1] }]
set_property PACKAGE_PIN AD19 [get_ports { fmcHpcLaN[1] }]
set_property PACKAGE_PIN Y17  [get_ports { fmcHpcLaP[2] }]
set_property PACKAGE_PIN AA17 [get_ports { fmcHpcLaN[2] }]
set_property PACKAGE_PIN AB17 [get_ports { fmcHpcLaP[3] }]
set_property PACKAGE_PIN AC17 [get_ports { fmcHpcLaN[3] }]
set_property PACKAGE_PIN AA20 [get_ports { fmcHpcLaP[4] }]
set_property PACKAGE_PIN AB20 [get_ports { fmcHpcLaN[4] }]
set_property PACKAGE_PIN AA19 [get_ports { fmcHpcLaP[5] }]
set_property PACKAGE_PIN AB19 [get_ports { fmcHpcLaN[5] }]
set_property PACKAGE_PIN Y20  [get_ports { fmcHpcLaP[6] }]
set_property PACKAGE_PIN Y21  [get_ports { fmcHpcLaN[6] }]
set_property PACKAGE_PIN AD16 [get_ports { fmcHpcLaP[7] }]
set_property PACKAGE_PIN AE16 [get_ports { fmcHpcLaN[7] }]
set_property PACKAGE_PIN AE17 [get_ports { fmcHpcLaP[8] }]
set_property PACKAGE_PIN AF17 [get_ports { fmcHpcLaN[8] }]
set_property PACKAGE_PIN AC18 [get_ports { fmcHpcLaP[9] }]
set_property PACKAGE_PIN AD18 [get_ports { fmcHpcLaN[9] }]
set_property PACKAGE_PIN AF18 [get_ports { fmcHpcLaP[10] }]
set_property PACKAGE_PIN AF19 [get_ports { fmcHpcLaN[10] }]
set_property PACKAGE_PIN Y18  [get_ports { fmcHpcLaP[11] }]
set_property PACKAGE_PIN AA18 [get_ports { fmcHpcLaN[11] }]
set_property PACKAGE_PIN AC22 [get_ports { fmcHpcLaP[12] }]
set_property PACKAGE_PIN AC23 [get_ports { fmcHpcLaN[12] }]
set_property PACKAGE_PIN AD23 [get_ports { fmcHpcLaP[13] }]
set_property PACKAGE_PIN AE23 [get_ports { fmcHpcLaN[13] }]
set_property PACKAGE_PIN AE22 [get_ports { fmcHpcLaP[14] }]
set_property PACKAGE_PIN AF22 [get_ports { fmcHpcLaN[14] }]
set_property PACKAGE_PIN AB24 [get_ports { fmcHpcLaP[15] }]
set_property PACKAGE_PIN AC24 [get_ports { fmcHpcLaN[15] }]
set_property PACKAGE_PIN AD24 [get_ports { fmcHpcLaP[16] }]
set_property PACKAGE_PIN AD25 [get_ports { fmcHpcLaN[16] }]
set_property PACKAGE_PIN AD21 [get_ports { fmcHpcLaP[17] }]
set_property PACKAGE_PIN AE21 [get_ports { fmcHpcLaN[17] }]
set_property PACKAGE_PIN AA22 [get_ports { fmcHpcLaP[18] }]
set_property PACKAGE_PIN AB22 [get_ports { fmcHpcLaN[18] }]
set_property PACKAGE_PIN AC26 [get_ports { fmcHpcLaP[19] }]
set_property PACKAGE_PIN AD26 [get_ports { fmcHpcLaN[19] }]
set_property PACKAGE_PIN AF24 [get_ports { fmcHpcLaP[20] }]
set_property PACKAGE_PIN AF25 [get_ports { fmcHpcLaN[20] }]
set_property PACKAGE_PIN AB25 [get_ports { fmcHpcLaP[21] }]
set_property PACKAGE_PIN AB26 [get_ports { fmcHpcLaN[21] }]
set_property PACKAGE_PIN AE25 [get_ports { fmcHpcLaP[22] }]
set_property PACKAGE_PIN AE26 [get_ports { fmcHpcLaN[22] }]

set_property -dict { IOSTANDARD LVCMOS18 } [get_ports { fmcHpcLaP[*] }]
set_property -dict { IOSTANDARD LVCMOS18 } [get_ports { fmcHpcLaN[*] }]

##############################################################################

####################
# Timing Constraints
####################

create_clock -name sfpClk156P -period 6.400 [get_ports {sfpClk156P}]

set_clock_groups -asynchronous -group [get_clocks {dmaClk}] -group [get_clocks -include_generated_clocks {sfpClk156P}]
