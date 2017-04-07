-------------------------------------------------------------------------------
-- File       : AxiPciePkg.vhd
-- Company    : SLAC National Accelerator Laboratory
-- Created    : 2017-03-06
-- Last update: 2017-04-06
-------------------------------------------------------------------------------
-- Description: Package file for AXI PCIe Core
-------------------------------------------------------------------------------
-- This file is part of 'axi-pcie-core'.
-- It is subject to the license terms in the LICENSE.txt file found in the 
-- top-level directory of this distribution and at: 
--    https://confluence.slac.stanford.edu/display/ppareg/LICENSE.html. 
-- No part of 'axi-pcie-core', including this file, 
-- may be copied, modified, propagated, or distributed except according to 
-- the terms contained in the LICENSE.txt file.
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

use work.StdRtlPkg.all;
use work.AxiStreamPkg.all;

package AxiPciePkg is

   -- System Clock Frequency
   constant SYS_CLK_FREQ_C : real := 125.0E+6;  -- units of Hz

   -- Type of Xilinx Device
   constant XIL_DEVICE_C : string := "7SERIES";

   -- DMA AXI Stream Configuration
   constant DMA_AXIS_CONFIG_C : AxiStreamConfigType := (
      TSTRB_EN_C    => false,
      TDATA_BYTES_C => 16,
      TDEST_BITS_C  => 8,
      TID_BITS_C    => 0,
      TKEEP_MODE_C  => TKEEP_COMP_C,
      TUSER_BITS_C  => 4,
      TUSER_MODE_C  => TUSER_FIRST_LAST_C);

end package AxiPciePkg;