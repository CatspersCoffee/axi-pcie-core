##############################################################################
## This file is part of 'axi-pcie-core'.
## It is subject to the license terms in the LICENSE.txt file found in the 
## top-level directory of this distribution and at: 
##    https://confluence.slac.stanford.edu/display/ppareg/LICENSE.html. 
## No part of 'axi-pcie-core', including this file, 
## may be copied, modified, propagated, or distributed except according to 
## the terms contained in the LICENSE.txt file.
##############################################################################

###########
# QSFP[0] #
###########

set_property PACKAGE_PIN AV38 [get_ports { qsfp0RefClkP[0] }] ;# 156.25 MHz
set_property PACKAGE_PIN AV39 [get_ports { qsfp0RefClkN[0] }] ;# 156.25 MHz
set_property PACKAGE_PIN AU36 [get_ports { qsfp0RefClkP[1] }] ;# 125 MHz
set_property PACKAGE_PIN AU37 [get_ports { qsfp0RefClkN[1] }] ;# 125 MHz
set_property PACKAGE_PIN AP38 [get_ports { qsfp0TxP[3] }]
set_property PACKAGE_PIN AP43 [get_ports { qsfp0RxP[3] }]
set_property PACKAGE_PIN AP44 [get_ports { qsfp0RxN[3] }]
set_property PACKAGE_PIN AP39 [get_ports { qsfp0TxN[3] }]
set_property PACKAGE_PIN AR40 [get_ports { qsfp0TxP[2] }]
set_property PACKAGE_PIN AR45 [get_ports { qsfp0RxP[2] }]
set_property PACKAGE_PIN AR46 [get_ports { qsfp0RxN[2] }]
set_property PACKAGE_PIN AR41 [get_ports { qsfp0TxN[2] }]
set_property PACKAGE_PIN AT38 [get_ports { qsfp0TxP[1] }]
set_property PACKAGE_PIN AT43 [get_ports { qsfp0RxP[1] }]
set_property PACKAGE_PIN AT44 [get_ports { qsfp0RxN[1] }]
set_property PACKAGE_PIN AT39 [get_ports { qsfp0TxN[1] }]
set_property PACKAGE_PIN AU40 [get_ports { qsfp0TxP[0] }]
set_property PACKAGE_PIN AU45 [get_ports { qsfp0RxP[0] }]
set_property PACKAGE_PIN AU46 [get_ports { qsfp0RxN[0] }]
set_property PACKAGE_PIN AU41 [get_ports { qsfp0TxN[0] }]

###########
# QSFP[1] #
###########

set_property PACKAGE_PIN AR36 [get_ports { qsfp1RefClkP[0] }] ;# 156.25 MHz
set_property PACKAGE_PIN AR37 [get_ports { qsfp1RefClkN[0] }] ;# 156.25 MHz
set_property PACKAGE_PIN AN36 [get_ports { qsfp1RefClkP[1] }] ;# 125 MHz
set_property PACKAGE_PIN AN37 [get_ports { qsfp1RefClkN[1] }] ;# 125 MHz
set_property PACKAGE_PIN AK38 [get_ports { qsfp1TxP[3] }]
set_property PACKAGE_PIN AK43 [get_ports { qsfp1RxP[3] }]
set_property PACKAGE_PIN AK44 [get_ports { qsfp1RxN[3] }]
set_property PACKAGE_PIN AK39 [get_ports { qsfp1TxN[3] }]
set_property PACKAGE_PIN AL40 [get_ports { qsfp1TxP[2] }]
set_property PACKAGE_PIN AL45 [get_ports { qsfp1RxP[2] }]
set_property PACKAGE_PIN AL46 [get_ports { qsfp1RxN[2] }]
set_property PACKAGE_PIN AL41 [get_ports { qsfp1TxN[2] }]
set_property PACKAGE_PIN AM38 [get_ports { qsfp1TxP[1] }]
set_property PACKAGE_PIN AM43 [get_ports { qsfp1RxP[1] }]
set_property PACKAGE_PIN AM44 [get_ports { qsfp1RxN[1] }]
set_property PACKAGE_PIN AM39 [get_ports { qsfp1TxN[1] }]
set_property PACKAGE_PIN AN40 [get_ports { qsfp1TxP[0] }]
set_property PACKAGE_PIN AN45 [get_ports { qsfp1RxP[0] }]
set_property PACKAGE_PIN AN46 [get_ports { qsfp1RxN[0] }]
set_property PACKAGE_PIN AN41 [get_ports { qsfp1TxN[0] }]

##########
# Clocks #
##########

create_clock -period 6.400 -name qsfp0RefClkP0 [get_ports {qsfp0RefClkP[0]}]
create_clock -period 8.000 -name qsfp0RefClkP1 [get_ports {qsfp0RefClkP[1]}]
create_clock -period 6.400 -name qsfp1RefClkP0 [get_ports {qsfp1RefClkP[0]}]
create_clock -period 8.000 -name qsfp1RefClkP1 [get_ports {qsfp1RefClkP[1]}]

set_clock_groups -asynchronous -group [get_clocks {sysClk}] -group [get_clocks -include_generated_clocks {qsfp0RefClkP0}]
set_clock_groups -asynchronous -group [get_clocks {sysClk}] -group [get_clocks -include_generated_clocks {qsfp0RefClkP1}]
set_clock_groups -asynchronous -group [get_clocks {sysClk}] -group [get_clocks -include_generated_clocks {qsfp1RefClkP0}]
set_clock_groups -asynchronous -group [get_clocks {sysClk}] -group [get_clocks -include_generated_clocks {qsfp1RefClkP1}]

set_clock_groups -asynchronous -group [get_clocks -include_generated_clocks {userClkP}] -group [get_clocks -include_generated_clocks {qsfp0RefClkP0}]
set_clock_groups -asynchronous -group [get_clocks -include_generated_clocks {userClkP}] -group [get_clocks -include_generated_clocks {qsfp0RefClkP1}]
set_clock_groups -asynchronous -group [get_clocks -include_generated_clocks {userClkP}] -group [get_clocks -include_generated_clocks {qsfp1RefClkP0}]
set_clock_groups -asynchronous -group [get_clocks -include_generated_clocks {userClkP}] -group [get_clocks -include_generated_clocks {qsfp1RefClkP1}]

###########################
# Partial Reconfiguration #
###########################

set_property HD.RECONFIGURABLE 1 [get_cells {U_App}]
create_pblock {PB_APP}
add_cells_to_pblock [get_pblocks {PB_APP}]  [get_cells [list U_App]]
resize_pblock {PB_APP} -add CLOCKREGION_X0Y0:CLOCKREGION_X1Y9
resize_pblock {PB_APP} -add CLOCKREGION_X2Y4:CLOCKREGION_X3Y6
set_property SNAPPING_MODE ON [get_pblocks {PB_APP}]