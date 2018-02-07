# Load RUCKUS environment and library
source -quiet $::env(RUCKUS_DIR)/vivado_proc.tcl

# Check for submodule tagging
if { [SubmoduleCheck {ruckus} {1.5.8} ] < 0 } {exit -1}
if { [SubmoduleCheck {surf}   {1.6.4} ] < 0 } {exit -1}

# Check for version 2017.4 of Vivado (or later)
if { [VersionCheck 2017.4] < 0 } {exit -1}

# Load ruckus files
loadRuckusTcl "$::DIR_PATH/core"
loadRuckusTcl "$::DIR_PATH/hardware"
