# Load RUCKUS environment and library
source -quiet $::env(RUCKUS_DIR)/vivado_proc.tcl

## Check for version 2017.2 of Vivado (or later)
if { [VersionCheck 2017.2] < 0 } {exit -1}

# Check for valid FPGA part number
if { $::env(PRJ_PART) != "xcku115-flvb2104-2-e" } {
   puts "\n\nERROR: PRJ_PART was not defined as xcku115-flvb2104-2-e in the Makefile\n\n"; exit -1
}

if { [info exists ::env(NUM_MIG_CORES)] != 1 } {
   puts "\n\nERROR: NUM_MIG_CORES is not defined in $::env(PROJ_DIR)/Makefile\n\n"; exit -1
}

if { [info exists ::env(PCIE_GEN_NUM)] != 1 } {
   puts "\n\nERROR: PCIE_GEN_SEL is not defined in $::env(PROJ_DIR)/Makefile\n\n"; exit -1
}

# Place and Route strategies 
set_property STRATEGY Performance_ExplorePostRoutePhysOpt [get_runs impl_1]

# Set the board part
set projBoardPart "xilinx.com:kcu1500:part0:1.0"
set_property board_part $projBoardPart [current_project]

# Load local Source Code and Constraints
loadSource      -dir  "$::DIR_PATH/core/"
loadSource      -path "$::DIR_PATH/mig/MigXbar.vhd"
loadConstraints -path "$::DIR_PATH/xdc/XilinxKcu1500Core.xdc"
loadConstraints -path "$::DIR_PATH/xdc/XilinxKcu1500App.xdc"

# Load IP Cores
loadIpCore -path "$::DIR_PATH/ip/AxiPcieCrossbarIpCore.xci"
loadIpCore -path "$::DIR_PATH/ip/Ddr4WithEcc.xci"
loadIpCore -path "$::DIR_PATH/ip/Ddr4WithoutEcc.xci"
loadIpCore -path "$::DIR_PATH/ip/DdrXbar.xci"

# Select either GEN2 or GEN3 PCIe
if { $::env(PCIE_GEN_NUM)  == "GEN2" } {
   loadIpCore -path "$::DIR_PATH/ip/PcieGen2/XilinxKcu1500PciePhy.xci"
} elseif { $::env(PCIE_GEN_NUM)  == "GEN3" } {
   loadIpCore -path "$::DIR_PATH/ip/PcieGen3/XilinxKcu1500PciePhy.xci"
} else {
   puts "\n\nERROR: PCIE_GEN_NUM = $::env(PCIE_GEN_NUM) is not valid."
   puts "It must be either GEN2 or GEN3"
   puts "Please fix this in $::env(PROJ_DIR)/Makefile\n\n"; exit -1
}

# Load MIG configuration based on Makefile constraints
if { $::env(NUM_MIG_CORES)  == 0 } {

   loadSource      -path "$::DIR_PATH/mig/Mig0Empty.vhd"
   loadSource      -path "$::DIR_PATH/mig/Mig1Empty.vhd"
   loadSource      -path "$::DIR_PATH/mig/Mig2Empty.vhd"
   loadSource      -path "$::DIR_PATH/mig/Mig3Empty.vhd"

   loadConstraints -path "$::DIR_PATH/xdc/XilinxKcu1500Mig0Empty.xdc"
   loadConstraints -path "$::DIR_PATH/xdc/XilinxKcu1500Mig1Empty.xdc"
   loadConstraints -path "$::DIR_PATH/xdc/XilinxKcu1500Mig2Empty.xdc"
   loadConstraints -path "$::DIR_PATH/xdc/XilinxKcu1500Mig3Empty.xdc"

} elseif { $::env(NUM_MIG_CORES)  == 1 } {

   loadSource      -path "$::DIR_PATH/mig/Mig0Empty.vhd"
   loadSource      -path "$::DIR_PATH/mig/Mig1Empty.vhd"
   loadSource      -path "$::DIR_PATH/mig/Mig2Empty.vhd"
   loadSource      -path "$::DIR_PATH/mig/Mig3.vhd"

   loadConstraints -path "$::DIR_PATH/xdc/XilinxKcu1500Mig0Empty.xdc"
   loadConstraints -path "$::DIR_PATH/xdc/XilinxKcu1500Mig1Empty.xdc"
   loadConstraints -path "$::DIR_PATH/xdc/XilinxKcu1500Mig2Empty.xdc"
   loadConstraints -path "$::DIR_PATH/xdc/XilinxKcu1500Mig3.xdc"

} elseif { $::env(NUM_MIG_CORES)  == 2 } {

   loadSource      -path "$::DIR_PATH/mig/Mig0Empty.vhd"
   loadSource      -path "$::DIR_PATH/mig/Mig1Empty.vhd"
   loadSource      -path "$::DIR_PATH/mig/Mig2.vhd"
   loadSource      -path "$::DIR_PATH/mig/Mig3.vhd"

   loadConstraints -path "$::DIR_PATH/xdc/XilinxKcu1500Mig0Empty.xdc"
   loadConstraints -path "$::DIR_PATH/xdc/XilinxKcu1500Mig1Empty.xdc"
   loadConstraints -path "$::DIR_PATH/xdc/XilinxKcu1500Mig2.xdc"
   loadConstraints -path "$::DIR_PATH/xdc/XilinxKcu1500Mig3.xdc"

} elseif { $::env(NUM_MIG_CORES)  == 3 } {

   loadSource      -path "$::DIR_PATH/mig/Mig0Empty.vhd"
   loadSource      -path "$::DIR_PATH/mig/Mig1.vhd"
   loadSource      -path "$::DIR_PATH/mig/Mig2.vhd"
   loadSource      -path "$::DIR_PATH/mig/Mig3.vhd"

   loadConstraints -path "$::DIR_PATH/xdc/XilinxKcu1500Mig0Empty.xdc"
   loadConstraints -path "$::DIR_PATH/xdc/XilinxKcu1500Mig1.xdc"
   loadConstraints -path "$::DIR_PATH/xdc/XilinxKcu1500Mig2.xdc"
   loadConstraints -path "$::DIR_PATH/xdc/XilinxKcu1500Mig3.xdc"

} elseif { $::env(NUM_MIG_CORES)  == 4 } {

   loadSource      -path "$::DIR_PATH/mig/Mig0.vhd"
   loadSource      -path "$::DIR_PATH/mig/Mig1.vhd"
   loadSource      -path "$::DIR_PATH/mig/Mig2.vhd"
   loadSource      -path "$::DIR_PATH/mig/Mig3.vhd"

   loadConstraints -path "$::DIR_PATH/xdc/XilinxKcu1500Mig0.xdc"
   loadConstraints -path "$::DIR_PATH/xdc/XilinxKcu1500Mig1.xdc"
   loadConstraints -path "$::DIR_PATH/xdc/XilinxKcu1500Mig2.xdc"
   loadConstraints -path "$::DIR_PATH/xdc/XilinxKcu1500Mig3.xdc"

} else {
   puts "\n\nERROR: NUM_MIG_CORES = $::env(NUM_MIG_CORES) is not valid."
   puts "It must be between 0 to 4"
   puts "Please fix this in $::env(PROJ_DIR)/Makefile\n\n"; exit -1
}