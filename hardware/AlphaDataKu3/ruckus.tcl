# Load RUCKUS environment and library
source -quiet $::env(RUCKUS_DIR)/vivado_proc.tcl

# Set the target language for Verilog (removes warning messages in PCIe IP core)
set_property target_language Verilog [current_project]

# Check for valid FPGA part number
if { $::env(PRJ_PART) != "XCKU060-FFVA1156-2-E" } {
   puts "\n\nERROR: PRJ_PART was not defined as XCKU060-FFVA1156-2-E in the Makefile\n\n"; exit -1
}

# Check for version 2018.2 of Vivado (or later)
if { [VersionCheck 2018.2] < 0 } {exit -1}

# Set the board part
set_property board_part alpha-data.com:adm-pcie3-ku3:part0:1.0 [current_project]

# Load shared source code
loadRuckusTcl "$::DIR_PATH/../../shared"

# Load local Source Code and Constraints
loadSource      -dir  "$::DIR_PATH/rtl"
loadConstraints -path "$::DIR_PATH/xdc/AlphaDataKu3Core.xdc"
loadConstraints -path "$::DIR_PATH/xdc/AlphaDataKu3App.xdc"

# Load the primary PCIe core
loadRuckusTcl "$::DIR_PATH/pcie"
