############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project os_pfb_prj
set_top os_pfb
add_files os_pfb.cpp
add_files -tb data -cflags "-Wno-unknown-pragmas"
add_files -tb sim.cpp -cflags "-Wno-unknown-pragmas"
open_solution "sol1"
set_part {xczu28dr-ffvg1517-2-e}
create_clock -period 10 -name default
config_dataflow -default_channel fifo -fifo_depth 1 -strict_mode warning
#source "./os_pfb_prj/sol1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
