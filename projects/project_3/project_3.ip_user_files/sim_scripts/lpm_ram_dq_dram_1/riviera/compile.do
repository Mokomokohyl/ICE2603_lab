vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/blk_mem_gen_v8_4_3

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap blk_mem_gen_v8_4_3 riviera/blk_mem_gen_v8_4_3

vlog -work xil_defaultlib  -sv2k12 \
"C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work blk_mem_gen_v8_4_3  -v2k5 \
"../../../ipstatic/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../../project_3.srcs/sources_1/ip/lpm_ram_dq_dram_1/sim/lpm_ram_dq_dram.v" \


vlog -work xil_defaultlib \
"glbl.v"

