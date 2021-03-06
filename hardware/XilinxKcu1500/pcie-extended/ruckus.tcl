# Load RUCKUS environment and library
source -quiet $::env(RUCKUS_DIR)/vivado_proc.tcl
 
# Load local Source Code and Constraints
loadSource      -dir  "$::DIR_PATH/rtl"
loadConstraints -dir  "$::DIR_PATH/xdc"

# loadIpCore    -path "$::DIR_PATH/ip/XilinxKcu1500ExtendedPciePhy.xci"
loadSource      -path "$::DIR_PATH/ip/XilinxKcu1500ExtendedPciePhy.dcp"

loadConstraints -path "$::DIR_PATH/ip/XilinxKcu1500ExtendedPciePhy.xdc"
set_property PROCESSING_ORDER {EARLY}                                 [get_files {XilinxKcu1500ExtendedPciePhy.xdc}]
set_property SCOPED_TO_REF    {XilinxKcu1500ExtendedPciePhy_pcie3_ip} [get_files {XilinxKcu1500ExtendedPciePhy.xdc}]
set_property SCOPED_TO_CELLS  {inst}                                  [get_files {XilinxKcu1500ExtendedPciePhy.xdc}]
