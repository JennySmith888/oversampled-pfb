# This script segment is generated automatically by AutoPilot

set id 1
set name os_pfb_faddfsub_32ns_32ns_32_4_full_dsp_1
set corename simcore_faddfsub
set op faddfsub
set stage_num 4
set max_latency -1
set registered_input 1
set impl_style full_dsp
set Futype4reduceCEFanout 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 32
set in0_signed 0
set in1_width 32
set in1_signed 0
set opcode_width 2
set opcode_signed 0
set ce_width 1
set ce_signed 0
set out_width 32
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_faddfsub] == "ap_gen_simcore_faddfsub"} {
eval "ap_gen_simcore_faddfsub { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    style ${impl_style} \
    Futype4reduceCEFanout ${Futype4reduceCEFanout} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    opcode_width ${opcode_width} \
    opcode_signed ${opcode_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_faddfsub, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op faddfsub
set corename FAddSub
if {${::AESL::PGuard_autocg_gen} && (${::AESL::PGuard_autocg_fpip} || ${::AESL::PGuard_autocg_fpv6en} || ${::AESL::PGuard_autocg_hpen})} {
if {[info proc ::AESL_LIB_XILINX_FPV6::fpv6_gen] == "::AESL_LIB_XILINX_FPV6::fpv6_gen"} {
eval "::AESL_LIB_XILINX_FPV6::fpv6_gen { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    style ${impl_style} \
    Futype4reduceCEFanout ${Futype4reduceCEFanout} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    opcode_width ${opcode_width} \
    opcode_signed ${opcode_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_XILINX_FPV6::fpv6_gen, check your platform lib"
}
}


set id 2
set name os_pfb_fadd_32ns_32ns_32_4_full_dsp_1
set corename simcore_fadd
set op fadd
set stage_num 4
set max_latency -1
set registered_input 1
set impl_style full_dsp
set Futype4reduceCEFanout 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 32
set in0_signed 0
set in1_width 32
set in1_signed 0
set ce_width 1
set ce_signed 0
set out_width 32
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fadd] == "ap_gen_simcore_fadd"} {
eval "ap_gen_simcore_fadd { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    style ${impl_style} \
    Futype4reduceCEFanout ${Futype4reduceCEFanout} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_fadd, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op fadd
set corename FAddSub
if {${::AESL::PGuard_autocg_gen} && (${::AESL::PGuard_autocg_fpip} || ${::AESL::PGuard_autocg_fpv6en} || ${::AESL::PGuard_autocg_hpen})} {
if {[info proc ::AESL_LIB_XILINX_FPV6::fpv6_gen] == "::AESL_LIB_XILINX_FPV6::fpv6_gen"} {
eval "::AESL_LIB_XILINX_FPV6::fpv6_gen { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    style ${impl_style} \
    Futype4reduceCEFanout ${Futype4reduceCEFanout} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_XILINX_FPV6::fpv6_gen, check your platform lib"
}
}


set id 3
set name os_pfb_fmul_32ns_32ns_32_2_max_dsp_1
set corename simcore_fmul
set op fmul
set stage_num 2
set max_latency -1
set registered_input 1
set impl_style max_dsp
set Futype4reduceCEFanout 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 32
set in0_signed 0
set in1_width 32
set in1_signed 0
set ce_width 1
set ce_signed 0
set out_width 32
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fmul] == "ap_gen_simcore_fmul"} {
eval "ap_gen_simcore_fmul { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    style ${impl_style} \
    Futype4reduceCEFanout ${Futype4reduceCEFanout} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_fmul, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op fmul
set corename FMul
if {${::AESL::PGuard_autocg_gen} && (${::AESL::PGuard_autocg_fpip} || ${::AESL::PGuard_autocg_fpv6en} || ${::AESL::PGuard_autocg_hpen})} {
if {[info proc ::AESL_LIB_XILINX_FPV6::fpv6_gen] == "::AESL_LIB_XILINX_FPV6::fpv6_gen"} {
eval "::AESL_LIB_XILINX_FPV6::fpv6_gen { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    style ${impl_style} \
    Futype4reduceCEFanout ${Futype4reduceCEFanout} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_XILINX_FPV6::fpv6_gen, check your platform lib"
}
}


# Memory (RAM/ROM)  definition:
set ID 10
set hasByteEnable 0
set MemName polyphase_filter_filter_state_M_real
set CoreName ap_simcore_mem
set PortList { 2 3 }
set DataWd 32
set AddrRange 256
set AddrWd 8
set impl_style block
set TrueReset 0
set IsROM 0
set ROMData { }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 1.237
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName RAM
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_RAM] == "::AESL_LIB_VIRTEX::xil_gen_RAM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_RAM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_RAM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 11
set hasByteEnable 0
set MemName polyphase_filter_h
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 32
set AddrRange 256
set AddrWd 8
set TrueReset 0
set IsROM 1
set ROMData { "10110111000000011001001010100010" "10110111111011110011101110101000" "10111000011100011011100011101100" "10111000101110100110010101001101" "10111000111100010000011110100110" "10111001000001011101010001101011" "10111000111110000100000100101011" "10111000101001001100000010100010" "00100001000010101011001001100001" "00111001000000101010010000011011" "00111001100111011110001011111111" "00111010000010111110111111111101" "00111010010110000010100011100101" "00111010100110011011101110101000" "00111010110011100111110011111011" "00111011000001001100000111000110" "00111011001001001100100110100011" "00111011010001101000001110110010" "00111011011010001110101111100111" "00111011100001010110100000001001" "00111011100101010110101010100000" "00111011101000111011111111100011" "00111011101011111001110110111101" "00111011101110000011010000001110" "00111011101111001011000111100010" "00111011101111000100110010001100" "00111011101101100100011010111001" "00111011101010011111011100011111" "00111011100101101101000001100111" "00111011011110001100111011011110" "00111011001101001111010101101011" "00111010110000111101111001100111" "10100010110111011001101110101101" "10111010111000000100011011111101" "10111011011011010100111101111001" "10111011101110101110111100010100" "10111100000000011110101111110011" "10111100001010000000101101001100" "10111100010011110001001111001111" "10111100011101100010100101010010" "10111100100011100010110100011111" "10111100101000000101000100001110" "10111100101100001111011110111010" "10111100101111111001010001101011" "10111100110010111001100101011100" "10111100110101000111101110111000" "10111100110110011011011011110110" "10111100110110101100111111111010" "10111100110101110101100110000011" "10111100110011101111011010101000" "10111100110000010110000001010010" "10111100101011100110011001111011" "10111100100101011111001111110011" "10111100011100000010001100010011" "10111100001010011100111000110000" "10111011101100101111011010111000" "00100011100101000001001011101000" "00111011110000110001010000111100" "00111100010010011100011000011101" "00111100100110111000101101110111" "00111100110100111101000111011001" "00111101000001100101011011111100" "00111101001000101000000000101000" "00111101001111011100101100111101" "00111101010101111001011110010111" "00111101011011110100000001111010" "00111101100000100000111111110101" "00111101100010101100100100011100" "00111101100100010111110010010101" "00111101100101011101111111000011" "00111101100101111010111010001101" "00111101100101101010110011111000" "00111101100100101010100011111111" "00111101100010110111101111111111" "00111101100000010000110010011000" "00111101011001101001111101010110" "00111101010001001001001101111000" "00111101000111000001111110111100" "00111100110110110010000010000010" "00111100011001010101001011010110" "10100011111110110101100101010000" "10111100011101101110000010011101" "10111100111111011111100000011110" "10111101010000101101001111010101" "10111101100001000001010100010000" "10111101101001101110011101000101" "10111101110010010011110011001101" "10111101111010100110100001101110" "10111110000001001101101100010110" "10111110000100110011011001011001" "10111110000111111110100011101110" "10111110001010101001010110000101" "10111110001100101110001000110011" "10111110001110000111011100100101" "10111110001110110000001010010011" "10111110001110100011100011111100" "10111110001101011101011101000101" "10111110001011011010001100111100" "10111110001000010110110110110001" "10111110000100010001001110000011" "10111101111110001111110001010000" "10111101110001110100100011100100" "10111101100011010001100010000010" "10111101000101010010011011011001" "00100100001001010101011100001011" "00111101001001000111101100001010" "00111101101010111010001101111010" "00111110000001011100100111100110" "00111110001110001010101010000110" "00111110011011100000101010000101" "00111110100100101011101010011101" "00111110101011110011010111100011" "00111110110011000011001101010001" "00111110111010010110101110011000" "00111111000000110100101010001000" "00111111000100011011001000011100" "00111111000111111100011001110110" "00111111001011010110000110100010" "00111111001110100101111010011010" "00111111010001101001100101010010" "00111111010100011110111110010101" "00111111010111000100000100110101" "00111111011001010111000011010110" "00111111011011010110001111111110" "00111111011101000000001111001101" "00111111011110010011110011101111" "00111111011111010000000000101110" "00111111011111110100001010001001" "00111111011111111111110110010011" "00111111011111110010111100000001" "00111111011111001101100101110011" "00111111011110010000001110111000" "00111111011100111011100100010111" "00111111011011010000100100101001" "00111111011001010000011101100100" "00111111010110111100101100011101" "00111111010100010110111011001110" "00111111010001100001000000111000" "00111111001110011100111110001001" "00111111001011001100111100011000" "00111111000111110011001011110000" "00111111000100010010000000111010" "00111111000000101011110011011000" "00111110111010000101110101010011" "00111110110010110011011010111101" "00111110101011100100111100110011" "00111110100100011110110111000000" "00111110011011001010101100111111" "00111110001101111000101011110100" "00111110000001001110111010111111" "00111101101010100111110001101000" "00111101001000110101001011010001" "00100100001001000001111110011010" "10111101000101000000000101110100" "10111101100010111111011100100111" "10111101110001011001111101100001" "10111101111101101101001100110001" "10111110000011111100010100000101" "10111110000111111110101110001110" "10111110001010111111010010001000" "10111110001101000000010001100100" "10111110001110000100101001010001" "10111110001110010000000011000101" "10111110001101100110101110100101" "10111110001100001101010111101001" "10111110001010001001000111100010" "10111110000111011111011001010101" "10111110000100010101110101110000" "10111110000000110010001101111001" "10111101111001110100100111110001" "10111101110001100111101110000111" "10111101101001001000110110011001" "10111101100000100010101101111100" "10111101001111111110110110100110" "10111100111110100001011000010001" "10111100011100110000000000111101" "10100101011111110001101000110010" "00111100011000011000011101101111" "00111100110101110110011111000110" "00111101000110010110011100101010" "00111101010000010000111111100101" "00111101011000100110010011100101" "00111101011111010011111100001011" "00111101100010001100101111000100" "00111101100011111100001100101111" "00111101100100111001111111010101" "00111101100101001000100010101011" "00111101100100101010111111010000" "00111101100011100101000011111100" "00111101100001111010111111101010" "00111101011111100010110011000001" "00111101011010011010010100110000" "00111101010100100110101010011011" "00111101001110010010000001001000" "00111101000111100110100000011011" "00111101000000101101111101000011" "00111100110011100011011111010001" "00111100100101110101010010110000" "00111100010001000010110000010100" "00111011101111011000011110100000" "00100100110100011011010011101101" "10111011101011011001111000001000" "10111100001001001001101101010101" "10111100011010001001100101000111" "10111100100100010010000001001110" "10111100101010001010010010011010" "10111100101110101101010001000111" "10111100110001111100011010011110" "10111100110011111010110010110001" "10111100110100101100111100010000" "10111100110100011000101000000001" "10111100110011000100100111110000" "10111100110000111000100010000000" "10111100101101111100011110111000" "10111100101010011000111111100111" "10111100100110010110101100001011" "10111100100001111110000110101100" "10111100011010101111000111100110" "10111100010001010101110000101011" "10111100000111111110101111000011" "10111011111101101110010101001111" "10111011101100010101001110110101" "10111011011000001011100100111110" "10111010110100111111110111101111" "10100011111100011100101111010110" "00111010101110000110011010111001" "00111011001010011111111000010110" "00111011011010010011000000000101" "00111011100011001111111011010111" "00111011100111100111101001111111" "00111011101010010111100101100001" "00111011101011101000100111101100" "00111011101011100101010000100110" "00111011101010011001001001001011" "00111011101000010000101000100110" "00111011100101011000010111001110" "00111011100001111100110110101010" "00111011011100010100010011010001" "00111011010100010110111110011111" "00111011001100010110000100110110" "00111011000100100011011001001110" "00111010111010011011100101000010" "00111010101101000010001010000111" "00111010100001001011101111100111" "00111010001110000110100111010000" "00111001111010110111000101001010" "00111001100000101001111100100100" "00111000110100111101011011110001" "00100010001110101000001100011000" "10111000011111000111011101010000" "10111000101101101000001001011111" "10111000101110011111101000001001" "10111000100110100101010000101011" "10111000010100011100010010011111" "10110111110101101110101011110110" "10110110111011110100010011011001" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 1.237
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 12
set hasByteEnable 0
set MemName polyphase_filter_shift_states
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 5
set AddrRange 4
set AddrWd 2
set TrueReset 0
set IsROM 1
set ROMData { "00000" "01000" "10000" "11000" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 1.237
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 13
set hasByteEnable 0
set MemName polyphase_filter_temp_M_real
set CoreName ap_simcore_mem
set PortList { 2 3 }
set DataWd 32
set AddrRange 32
set AddrWd 5
set impl_style block
set TrueReset 0
set HasInitializer 0
set IsROM 0
set ROMData {}
set NumOfStage 2
set MaxLatency -1
set DelayBudget 1.237
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName RAM
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_RAM] == "::AESL_LIB_VIRTEX::xil_gen_RAM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_RAM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_RAM, check your platform lib"
  }
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 14 \
    name in_r \
    reset_level 1 \
    sync_rst true \
    corename {} \
    metadata {  } \
    op interface \
    ports { in_r_TDATA { I 64 vector } in_r_TVALID { I 1 bit } in_r_TREADY { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'in_r'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 15 \
    name filter_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_filter_out \
    op interface \
    ports { filter_out_din { O 64 vector } filter_out_full_n { I 1 bit } filter_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 16 \
    name ifft_config_data_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ifft_config_data_V \
    op interface \
    ports { ifft_config_data_V_din { O 8 vector } ifft_config_data_V_full_n { I 1 bit } ifft_config_data_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


