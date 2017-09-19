# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7k325tffg676-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Projects/srio_test/srio_test/srio_test.cache/wt [current_project]
set_property parent.project_path C:/Projects/srio_test/srio_test/srio_test.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo c:/Projects/srio_test/srio_test/srio_test.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
add_files -quiet c:/Projects/srio_test/srio_test/srio_test.srcs/sources_1/ip/vio_0/vio_0.dcp
set_property used_in_implementation false [get_files c:/Projects/srio_test/srio_test/srio_test.srcs/sources_1/ip/vio_0/vio_0.dcp]
add_files -quiet C:/Projects/srio_test/srio_test/srio_test.srcs/sources_1/ip/ila_0/ila_0.dcp
set_property used_in_implementation false [get_files C:/Projects/srio_test/srio_test/srio_test.srcs/sources_1/ip/ila_0/ila_0.dcp]
read_verilog -library xil_defaultlib {
  C:/Projects/srio_test/srio_test/srio_test.srcs/sources_1/new/srio_response.v
  C:/Projects/srio_test/srio_test/srio_test.srcs/sources_1/new/srio_example_test.v
}
read_ip -quiet C:/Projects/srio_test/srio_test/srio_test.srcs/sources_1/ip/fifo_generator_rx_inst/fifo_generator_rx_inst.xci
set_property used_in_implementation false [get_files -all c:/Projects/srio_test/srio_test/srio_test.srcs/sources_1/ip/fifo_generator_rx_inst/fifo_generator_rx_inst/fifo_generator_rx_inst.xdc]
set_property used_in_implementation false [get_files -all c:/Projects/srio_test/srio_test/srio_test.srcs/sources_1/ip/fifo_generator_rx_inst/fifo_generator_rx_inst_ooc.xdc]
set_property is_locked true [get_files C:/Projects/srio_test/srio_test/srio_test.srcs/sources_1/ip/fifo_generator_rx_inst/fifo_generator_rx_inst.xci]

read_ip -quiet C:/Projects/srio_test/srio_test/srio_test.srcs/sources_1/ip/srio_gen2_0/srio_gen2_0.xci
set_property used_in_implementation false [get_files -all c:/Projects/srio_test/srio_test/srio_test.srcs/sources_1/ip/srio_gen2_0/srio_gen2_0_core.xdc]
set_property used_in_implementation false [get_files -all c:/Projects/srio_test/srio_test/srio_test.srcs/sources_1/ip/srio_gen2_0/synth/srio_gen2_0_ooc.xdc]
set_property is_locked true [get_files C:/Projects/srio_test/srio_test/srio_test.srcs/sources_1/ip/srio_gen2_0/srio_gen2_0.xci]

foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Projects/srio_test/srio_test/top.xdc
set_property used_in_implementation false [get_files C:/Projects/srio_test/srio_test/top.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

synth_design -top srio_example_test -part xc7k325tffg676-1


write_checkpoint -force -noxdef srio_example_test.dcp

catch { report_utilization -file srio_example_test_utilization_synth.rpt -pb srio_example_test_utilization_synth.pb }