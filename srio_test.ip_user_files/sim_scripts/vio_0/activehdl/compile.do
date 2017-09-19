vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xpm

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../srio_test.srcs/sources_1/ip/vio_0/hdl/verilog" "+incdir+../../../../srio_test.srcs/sources_1/ip/vio_0/hdl" "+incdir+../../../../srio_test.srcs/sources_1/ip/vio_0/hdl/verilog" "+incdir+../../../../srio_test.srcs/sources_1/ip/vio_0/hdl" \
"C:/Xilinx/Vivado/2016.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2016.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2016.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../srio_test.srcs/sources_1/ip/vio_0/hdl/verilog" "+incdir+../../../../srio_test.srcs/sources_1/ip/vio_0/hdl" "+incdir+../../../../srio_test.srcs/sources_1/ip/vio_0/hdl/verilog" "+incdir+../../../../srio_test.srcs/sources_1/ip/vio_0/hdl" \
"../../../../srio_test.srcs/sources_1/ip/vio_0/sim/vio_0.v" \

vlog -work xil_defaultlib "glbl.v"
