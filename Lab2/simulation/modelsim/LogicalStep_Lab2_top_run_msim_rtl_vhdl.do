transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {N:/ECE124/Lab2/LogicalStep_Lab2_top.vhd}
vcom -93 -work work {N:/ECE124/Lab2/segment7_mux.vhd}
vcom -93 -work work {N:/ECE124/Lab2/SevenSegment.vhd}
vcom -93 -work work {N:/ECE124/Lab2/logic_processor.vhd}
vcom -93 -work work {N:/ECE124/Lab2/concatenate_sum_mux.vhd}

