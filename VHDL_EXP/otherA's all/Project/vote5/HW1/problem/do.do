# library
vlib work

# compile
vcom -work work ./vote5.vhd
vcom -work work ./tb.vhd

# simulation
#vopt +acc tb -o tb_opt
#vsim tb_opt
vsim -novopt tb

# add wave
add wave sim:/tb/dut/a
add wave sim:/tb/ref_out
add wave sim:/tb/vote_out

run 1us

wave zoom full
