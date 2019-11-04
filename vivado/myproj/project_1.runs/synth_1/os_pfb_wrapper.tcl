# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param power.enableLutRouteBelPower 1
set_param power.enableCarry8RouteBelPower 1
set_param power.enableUnconnectedCarry8PinPower 1
set_param power.BramSDPPropagationFix 1
create_project -in_memory -part xczu28dr-ffvg1517-2-e

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /home/jpsmith/git-repos/oversampled-pfb/vivado/myproj/project_1.cache/wt [current_project]
set_property parent.project_path /home/jpsmith/git-repos/oversampled-pfb/vivado/myproj/project_1.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part xilinx.com:zcu111:part0:1.1 [current_project]
set_property ip_repo_paths /home/jpsmith/git-repos/oversampled-pfb/hls/os_pfb_prj/sol1/impl/ip [current_project]
update_ip_catalog
set_property ip_output_repo /home/jpsmith/git-repos/oversampled-pfb/vivado/myproj/project_1.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib /home/jpsmith/git-repos/oversampled-pfb/vivado/myproj/project_1.srcs/sources_1/bd/os_pfb/hdl/os_pfb_wrapper.v
add_files /home/jpsmith/git-repos/oversampled-pfb/vivado/myproj/project_1.srcs/sources_1/bd/os_pfb/os_pfb.bd
set_property used_in_implementation false [get_files -all /home/jpsmith/git-repos/oversampled-pfb/vivado/myproj/project_1.srcs/sources_1/bd/os_pfb/ip/os_pfb_axi_dma_0_0/os_pfb_axi_dma_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jpsmith/git-repos/oversampled-pfb/vivado/myproj/project_1.srcs/sources_1/bd/os_pfb/ip/os_pfb_axi_dma_0_0/os_pfb_axi_dma_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/jpsmith/git-repos/oversampled-pfb/vivado/myproj/project_1.srcs/sources_1/bd/os_pfb/ip/os_pfb_axi_dma_0_0/os_pfb_axi_dma_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/jpsmith/git-repos/oversampled-pfb/vivado/myproj/project_1.srcs/sources_1/bd/os_pfb/ip/os_pfb_axi_smc_0/bd_0/ip/ip_1/bd_f276_psr_aclk_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/jpsmith/git-repos/oversampled-pfb/vivado/myproj/project_1.srcs/sources_1/bd/os_pfb/ip/os_pfb_axi_smc_0/bd_0/ip/ip_1/bd_f276_psr_aclk_0.xdc]
set_property used_in_implementation false [get_files -all /home/jpsmith/git-repos/oversampled-pfb/vivado/myproj/project_1.srcs/sources_1/bd/os_pfb/ip/os_pfb_axi_smc_0/bd_0/ip/ip_2/bd_f276_arsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jpsmith/git-repos/oversampled-pfb/vivado/myproj/project_1.srcs/sources_1/bd/os_pfb/ip/os_pfb_axi_smc_0/bd_0/ip/ip_3/bd_f276_rsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jpsmith/git-repos/oversampled-pfb/vivado/myproj/project_1.srcs/sources_1/bd/os_pfb/ip/os_pfb_axi_smc_0/bd_0/ip/ip_4/bd_f276_awsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jpsmith/git-repos/oversampled-pfb/vivado/myproj/project_1.srcs/sources_1/bd/os_pfb/ip/os_pfb_axi_smc_0/bd_0/ip/ip_5/bd_f276_wsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jpsmith/git-repos/oversampled-pfb/vivado/myproj/project_1.srcs/sources_1/bd/os_pfb/ip/os_pfb_axi_smc_0/bd_0/ip/ip_6/bd_f276_bsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jpsmith/git-repos/oversampled-pfb/vivado/myproj/project_1.srcs/sources_1/bd/os_pfb/ip/os_pfb_axi_smc_0/bd_0/ip/ip_10/bd_f276_s00a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jpsmith/git-repos/oversampled-pfb/vivado/myproj/project_1.srcs/sources_1/bd/os_pfb/ip/os_pfb_axi_smc_0/bd_0/ip/ip_11/bd_f276_sarn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jpsmith/git-repos/oversampled-pfb/vivado/myproj/project_1.srcs/sources_1/bd/os_pfb/ip/os_pfb_axi_smc_0/bd_0/ip/ip_12/bd_f276_srn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jpsmith/git-repos/oversampled-pfb/vivado/myproj/project_1.srcs/sources_1/bd/os_pfb/ip/os_pfb_axi_smc_0/bd_0/ip/ip_16/bd_f276_s01a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jpsmith/git-repos/oversampled-pfb/vivado/myproj/project_1.srcs/sources_1/bd/os_pfb/ip/os_pfb_axi_smc_0/bd_0/ip/ip_17/bd_f276_sawn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jpsmith/git-repos/oversampled-pfb/vivado/myproj/project_1.srcs/sources_1/bd/os_pfb/ip/os_pfb_axi_smc_0/bd_0/ip/ip_18/bd_f276_swn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jpsmith/git-repos/oversampled-pfb/vivado/myproj/project_1.srcs/sources_1/bd/os_pfb/ip/os_pfb_axi_smc_0/bd_0/ip/ip_19/bd_f276_sbn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jpsmith/git-repos/oversampled-pfb/vivado/myproj/project_1.srcs/sources_1/bd/os_pfb/ip/os_pfb_axi_smc_0/bd_0/ip/ip_20/bd_f276_m00s2a_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jpsmith/git-repos/oversampled-pfb/vivado/myproj/project_1.srcs/sources_1/bd/os_pfb/ip/os_pfb_axi_smc_0/bd_0/ip/ip_21/bd_f276_m00arn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jpsmith/git-repos/oversampled-pfb/vivado/myproj/project_1.srcs/sources_1/bd/os_pfb/ip/os_pfb_axi_smc_0/bd_0/ip/ip_22/bd_f276_m00rn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jpsmith/git-repos/oversampled-pfb/vivado/myproj/project_1.srcs/sources_1/bd/os_pfb/ip/os_pfb_axi_smc_0/bd_0/ip/ip_23/bd_f276_m00awn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jpsmith/git-repos/oversampled-pfb/vivado/myproj/project_1.srcs/sources_1/bd/os_pfb/ip/os_pfb_axi_smc_0/bd_0/ip/ip_24/bd_f276_m00wn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jpsmith/git-repos/oversampled-pfb/vivado/myproj/project_1.srcs/sources_1/bd/os_pfb/ip/os_pfb_axi_smc_0/bd_0/ip/ip_25/bd_f276_m00bn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jpsmith/git-repos/oversampled-pfb/vivado/myproj/project_1.srcs/sources_1/bd/os_pfb/ip/os_pfb_axi_smc_0/ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jpsmith/git-repos/oversampled-pfb/vivado/myproj/project_1.srcs/sources_1/bd/os_pfb/ip/os_pfb_os_pfb_0/constraints/os_pfb_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jpsmith/git-repos/oversampled-pfb/vivado/myproj/project_1.srcs/sources_1/bd/os_pfb/ip/os_pfb_xbar_0/os_pfb_xbar_0_ooc.xdc]
set_property used_in_synthesis false [get_files -all /home/jpsmith/git-repos/oversampled-pfb/vivado/myproj/project_1.srcs/sources_1/bd/os_pfb/ip/os_pfb_auto_ds_0/os_pfb_auto_ds_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/jpsmith/git-repos/oversampled-pfb/vivado/myproj/project_1.srcs/sources_1/bd/os_pfb/ip/os_pfb_auto_ds_0/os_pfb_auto_ds_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/jpsmith/git-repos/oversampled-pfb/vivado/myproj/project_1.srcs/sources_1/bd/os_pfb/ip/os_pfb_auto_ds_0/os_pfb_auto_ds_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jpsmith/git-repos/oversampled-pfb/vivado/myproj/project_1.srcs/sources_1/bd/os_pfb/ip/os_pfb_auto_pc_0/os_pfb_auto_pc_0_ooc.xdc]
set_property used_in_synthesis false [get_files -all /home/jpsmith/git-repos/oversampled-pfb/vivado/myproj/project_1.srcs/sources_1/bd/os_pfb/ip/os_pfb_auto_ds_1/os_pfb_auto_ds_1_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/jpsmith/git-repos/oversampled-pfb/vivado/myproj/project_1.srcs/sources_1/bd/os_pfb/ip/os_pfb_auto_ds_1/os_pfb_auto_ds_1_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/jpsmith/git-repos/oversampled-pfb/vivado/myproj/project_1.srcs/sources_1/bd/os_pfb/ip/os_pfb_auto_ds_1/os_pfb_auto_ds_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jpsmith/git-repos/oversampled-pfb/vivado/myproj/project_1.srcs/sources_1/bd/os_pfb/ip/os_pfb_auto_pc_1/os_pfb_auto_pc_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jpsmith/git-repos/oversampled-pfb/vivado/myproj/project_1.srcs/sources_1/bd/os_pfb/ip/os_pfb_rst_ps8_0_99M_0/os_pfb_rst_ps8_0_99M_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/jpsmith/git-repos/oversampled-pfb/vivado/myproj/project_1.srcs/sources_1/bd/os_pfb/ip/os_pfb_rst_ps8_0_99M_0/os_pfb_rst_ps8_0_99M_0.xdc]
set_property used_in_implementation false [get_files -all /home/jpsmith/git-repos/oversampled-pfb/vivado/myproj/project_1.srcs/sources_1/bd/os_pfb/ip/os_pfb_rst_ps8_0_99M_0/os_pfb_rst_ps8_0_99M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jpsmith/git-repos/oversampled-pfb/vivado/myproj/project_1.srcs/sources_1/bd/os_pfb/ip/os_pfb_zynq_ultra_ps_e_0_0/os_pfb_zynq_ultra_ps_e_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/jpsmith/git-repos/oversampled-pfb/vivado/myproj/project_1.srcs/sources_1/bd/os_pfb/ip/os_pfb_zynq_ultra_ps_e_0_0/os_pfb_zynq_ultra_ps_e_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/jpsmith/git-repos/oversampled-pfb/vivado/myproj/project_1.srcs/sources_1/bd/os_pfb/os_pfb_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top os_pfb_wrapper -part xczu28dr-ffvg1517-2-e


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef os_pfb_wrapper.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file os_pfb_wrapper_utilization_synth.rpt -pb os_pfb_wrapper_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
