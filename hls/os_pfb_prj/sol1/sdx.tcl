# ==============================================================
# File generated on Thu Oct 24 13:28:50 PDT 2019
# Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
# SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
# IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# ==============================================================
add_files -tb ../../data -cflags { -Wno-unknown-pragmas}
add_files -tb ../../sim.cpp -cflags { -Wno-unknown-pragmas}
add_files os_pfb.cpp
set_part xczu28dr-ffvg1517-2-e
create_clock -name default -period 10
config_dataflow -default_channel=fifo
config_dataflow -fifo_depth=1
config_dataflow -strict_mode=warning
