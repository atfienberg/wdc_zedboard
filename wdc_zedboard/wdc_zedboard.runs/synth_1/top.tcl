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
set_param chipscope.maxJobs 2
set_param xicom.use_bs_reader 1
create_project -in_memory -part xc7z020clg484-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Users/atfie/watchman-ne1/wdc_zedboard/wdc_zedboard/wdc_zedboard.cache/wt [current_project]
set_property parent.project_path C:/Users/atfie/watchman-ne1/wdc_zedboard/wdc_zedboard/wdc_zedboard.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part em.avnet.com:zed:part0:1.4 [current_project]
set_property ip_output_repo c:/Users/atfie/watchman-ne1/wdc_zedboard/wdc_zedboard/wdc_zedboard.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
set_property include_dirs {
  C:/Users/atfie/watchman-ne1/wdc_zedboard/hdl/inc/trigger_src
  C:/Users/atfie/watchman-ne1/wdc_zedboard/hdl/bundles/cuppa_trig_bundle
  C:/Users/atfie/watchman-ne1/wdc_zedboard/hdl/bundles/cuppa_wvb_conf_bundle
  C:/Users/atfie/watchman-ne1/wdc_zedboard/hdl/bundles/cuppa_wvb_hdr_bundle
} [current_fileset]
read_verilog -library xil_defaultlib {
  C:/Users/atfie/watchman-ne1/wdc_zedboard/hdl/ads4129_lvds/ads4129_lvds.v
  C:/Users/atfie/watchman-ne1/wdc_zedboard/hdl/cmp/cmp.v
  C:/Users/atfie/watchman-ne1/wdc_zedboard/hdl/crc16_8b_parallel/crc16_8b_parallel.v
  C:/Users/atfie/watchman-ne1/wdc_zedboard/hdl/crs_master/crs_master.v
  C:/Users/atfie/watchman-ne1/wdc_zedboard/hdl/cuppa/cuppa.v
  C:/Users/atfie/watchman-ne1/wdc_zedboard/hdl/bundles/cuppa_trig_bundle/cuppa_trig_bundle_fan_in.v
  C:/Users/atfie/watchman-ne1/wdc_zedboard/hdl/bundles/cuppa_trig_bundle/cuppa_trig_bundle_fan_out.v
  C:/Users/atfie/watchman-ne1/wdc_zedboard/hdl/cuppa_trigger/cuppa_trigger.v
  C:/Users/atfie/watchman-ne1/wdc_zedboard/hdl/bundles/cuppa_wvb_conf_bundle/cuppa_wvb_conf_bundle_fan_in.v
  C:/Users/atfie/watchman-ne1/wdc_zedboard/hdl/bundles/cuppa_wvb_conf_bundle/cuppa_wvb_conf_bundle_fan_out.v
  C:/Users/atfie/watchman-ne1/wdc_zedboard/hdl/bundles/cuppa_wvb_hdr_bundle/cuppa_wvb_hdr_bundle_0_fan_in.v
  C:/Users/atfie/watchman-ne1/wdc_zedboard/hdl/bundles/cuppa_wvb_hdr_bundle/cuppa_wvb_hdr_bundle_0_fan_out.v
  C:/Users/atfie/watchman-ne1/wdc_zedboard/hdl/err_mngr/err_mngr.v
  C:/Users/atfie/watchman-ne1/wdc_zedboard/hdl/ft232r_hs/ft232r_hs.v
  C:/Users/atfie/watchman-ne1/wdc_zedboard/hdl/ft232r_proc_buffered/ft232r_proc_buffered.v
  C:/Users/atfie/watchman-ne1/wdc_zedboard/hdl/iter_integer_linear_cal/iter_integer_linear_calc.v
  C:/Users/atfie/watchman-ne1/wdc_zedboard/hdl/n_channel_mux/n_channel_mux.v
  C:/Users/atfie/watchman-ne1/wdc_zedboard/hdl/negedge_detector/negedge_detector.v
  C:/Users/atfie/watchman-ne1/wdc_zedboard/hdl/posedge_detector/posedge_detector.v
  C:/Users/atfie/watchman-ne1/wdc_zedboard/hdl/pretrigger_buffer/pretrigger_buffer.v
  C:/Users/atfie/watchman-ne1/wdc_zedboard/hdl/rs232_des/rs232_des.v
  C:/Users/atfie/watchman-ne1/wdc_zedboard/hdl/rs232_ser/rs232_ser.v
  C:/Users/atfie/watchman-ne1/wdc_zedboard/hdl/serial_ck/serial_ck.v
  C:/Users/atfie/watchman-ne1/wdc_zedboard/hdl/serial_rx/serial_rx.v
  C:/Users/atfie/watchman-ne1/wdc_zedboard/hdl/serial_tx/serial_tx.v
  C:/Users/atfie/watchman-ne1/wdc_zedboard/hdl/spi_master/spi_master.v
  C:/Users/atfie/watchman-ne1/wdc_zedboard/hdl/sync/sync.v
  C:/Users/atfie/watchman-ne1/wdc_zedboard/hdl/task_reg/task_reg.v
  C:/Users/atfie/watchman-ne1/wdc_zedboard/hdl/uart_proc_hs/uart_proc_hs.v
  C:/Users/atfie/watchman-ne1/wdc_zedboard/hdl/waveform_acquisition/waveform_acquisition.v
  C:/Users/atfie/watchman-ne1/wdc_zedboard/hdl/waveform_buffer/waveform_buffer.v
  C:/Users/atfie/watchman-ne1/wdc_zedboard/hdl/waveform_buffer_storage/waveform_buffer_storage.v
  C:/Users/atfie/watchman-ne1/wdc_zedboard/hdl/waveform_buffer/wvb_overflow_ctrl.v
  C:/Users/atfie/watchman-ne1/wdc_zedboard/hdl/waveform_buffer/wvb_rd_addr_ctrl.v
  C:/Users/atfie/watchman-ne1/wdc_zedboard/hdl/wvb_rd_ctrl/wvb_rd_ctrl_fmt_0.v
  C:/Users/atfie/watchman-ne1/wdc_zedboard/hdl/wvb_reader/wvb_reader.v
  C:/Users/atfie/watchman-ne1/wdc_zedboard/hdl/wvb_wr_ctrl/wvb_wr_ctrl.v
  C:/Users/atfie/watchman-ne1/wdc_zedboard/hdl/wdc_zedboard_top.v
}
read_ip -quiet C:/Users/atfie/watchman-ne1/wdc_zedboard/wdc_zedboard/wdc_zedboard.srcs/sources_1/ip/DIG0_MMCM/DIG0_MMCM.xci
set_property used_in_implementation false [get_files -all c:/Users/atfie/watchman-ne1/wdc_zedboard/wdc_zedboard/wdc_zedboard.srcs/sources_1/ip/DIG0_MMCM/DIG0_MMCM_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/atfie/watchman-ne1/wdc_zedboard/wdc_zedboard/wdc_zedboard.srcs/sources_1/ip/DIG0_MMCM/DIG0_MMCM.xdc]
set_property used_in_implementation false [get_files -all c:/Users/atfie/watchman-ne1/wdc_zedboard/wdc_zedboard/wdc_zedboard.srcs/sources_1/ip/DIG0_MMCM/DIG0_MMCM_ooc.xdc]

read_ip -quiet C:/Users/atfie/watchman-ne1/wdc_zedboard/wdc_zedboard/wdc_zedboard.srcs/sources_1/ip/LCLK_MMCM/LCLK_MMCM.xci
set_property used_in_implementation false [get_files -all c:/Users/atfie/watchman-ne1/wdc_zedboard/wdc_zedboard/wdc_zedboard.srcs/sources_1/ip/LCLK_MMCM/LCLK_MMCM_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/atfie/watchman-ne1/wdc_zedboard/wdc_zedboard/wdc_zedboard.srcs/sources_1/ip/LCLK_MMCM/LCLK_MMCM.xdc]
set_property used_in_implementation false [get_files -all c:/Users/atfie/watchman-ne1/wdc_zedboard/wdc_zedboard/wdc_zedboard.srcs/sources_1/ip/LCLK_MMCM/LCLK_MMCM_ooc.xdc]

read_ip -quiet C:/Users/atfie/watchman-ne1/wdc_zedboard/wdc_zedboard/wdc_zedboard.srcs/sources_1/ip/SCRATCH_DPRAM/SCRATCH_DPRAM.xci
set_property used_in_implementation false [get_files -all c:/Users/atfie/watchman-ne1/wdc_zedboard/wdc_zedboard/wdc_zedboard.srcs/sources_1/ip/SCRATCH_DPRAM/SCRATCH_DPRAM_ooc.xdc]

read_ip -quiet C:/Users/atfie/watchman-ne1/wdc_zedboard/wdc_zedboard/wdc_zedboard.srcs/sources_1/ip/FIFO_2048_32/FIFO_2048_32.xci
set_property used_in_implementation false [get_files -all c:/Users/atfie/watchman-ne1/wdc_zedboard/wdc_zedboard/wdc_zedboard.srcs/sources_1/ip/FIFO_2048_32/FIFO_2048_32.xdc]
set_property used_in_implementation false [get_files -all c:/Users/atfie/watchman-ne1/wdc_zedboard/wdc_zedboard/wdc_zedboard.srcs/sources_1/ip/FIFO_2048_32/FIFO_2048_32_ooc.xdc]

read_ip -quiet C:/Users/atfie/watchman-ne1/wdc_zedboard/wdc_zedboard/wdc_zedboard.srcs/sources_1/ip/DIST_BUFFER_64_28/DIST_BUFFER_64_28.xci
set_property used_in_implementation false [get_files -all c:/Users/atfie/watchman-ne1/wdc_zedboard/wdc_zedboard/wdc_zedboard.srcs/sources_1/ip/DIST_BUFFER_64_28/DIST_BUFFER_64_28_ooc.xdc]

read_ip -quiet C:/Users/atfie/watchman-ne1/wdc_zedboard/wdc_zedboard/wdc_zedboard.srcs/sources_1/ip/BUFFER_32K_28/BUFFER_32K_28.xci
set_property used_in_implementation false [get_files -all c:/Users/atfie/watchman-ne1/wdc_zedboard/wdc_zedboard/wdc_zedboard.srcs/sources_1/ip/BUFFER_32K_28/BUFFER_32K_28_ooc.xdc]

read_ip -quiet C:/Users/atfie/watchman-ne1/wdc_zedboard/wdc_zedboard/wdc_zedboard.srcs/sources_1/ip/FIFO_1024_87/FIFO_1024_87.xci
set_property used_in_implementation false [get_files -all c:/Users/atfie/watchman-ne1/wdc_zedboard/wdc_zedboard/wdc_zedboard.srcs/sources_1/ip/FIFO_1024_87/FIFO_1024_87.xdc]
set_property used_in_implementation false [get_files -all c:/Users/atfie/watchman-ne1/wdc_zedboard/wdc_zedboard/wdc_zedboard.srcs/sources_1/ip/FIFO_1024_87/FIFO_1024_87_ooc.xdc]

read_ip -quiet C:/Users/atfie/watchman-ne1/wdc_zedboard/wdc_zedboard/wdc_zedboard.srcs/sources_1/ip/DIRECT_RDOUT_DPRAM/DIRECT_RDOUT_DPRAM.xci
set_property used_in_implementation false [get_files -all c:/Users/atfie/watchman-ne1/wdc_zedboard/wdc_zedboard/wdc_zedboard.srcs/sources_1/ip/DIRECT_RDOUT_DPRAM/DIRECT_RDOUT_DPRAM_ooc.xdc]

read_ip -quiet C:/Users/atfie/watchman-ne1/wdc_zedboard/wdc_zedboard/wdc_zedboard.srcs/sources_1/ip/ADC_SELECT_IO/ADC_SELECT_IO.xci
set_property used_in_implementation false [get_files -all c:/Users/atfie/watchman-ne1/wdc_zedboard/wdc_zedboard/wdc_zedboard.srcs/sources_1/ip/ADC_SELECT_IO/ADC_SELECT_IO_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/atfie/watchman-ne1/wdc_zedboard/wdc_zedboard/wdc_zedboard.srcs/sources_1/ip/ADC_SELECT_IO/ADC_SELECT_IO.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/atfie/watchman-ne1/wdc_zedboard/wdc_zedboard/wdc_zedboard.srcs/constrs_1/new/pin_assign.xdc
set_property used_in_implementation false [get_files C:/Users/atfie/watchman-ne1/wdc_zedboard/wdc_zedboard/wdc_zedboard.srcs/constrs_1/new/pin_assign.xdc]

read_xdc C:/Users/atfie/watchman-ne1/wdc_zedboard/hdl/manual_io_constr.xdc
set_property used_in_implementation false [get_files C:/Users/atfie/watchman-ne1/wdc_zedboard/hdl/manual_io_constr.xdc]

read_xdc C:/Users/atfie/watchman-ne1/wdc_zedboard/hdl/timing.xdc
set_property used_in_implementation false [get_files C:/Users/atfie/watchman-ne1/wdc_zedboard/hdl/timing.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top top -part xc7z020clg484-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef top.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file top_utilization_synth.rpt -pb top_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
