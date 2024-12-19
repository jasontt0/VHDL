# create working library , the library will store compile results
vlib work

# compile
vcom -work work ./counter.vhd
vcom -work work ./tb.vhd

# simulation
vsim -novopt tb

# add wave
add wave sim:/tb/clock
add wave sim:/tb/reset

add wave -radix decimal sim:/tb/dout
add wave -divider
add wave -height 100 -signed   -color yellow -format analog -scale 0.2 sim:/tb/dout
add wave -divider

run 20us
wave zoom full
