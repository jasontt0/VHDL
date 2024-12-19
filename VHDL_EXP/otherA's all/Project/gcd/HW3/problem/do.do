# create working library , the library will store compile results
vlib work

# compile
vcom -work work ./gcd.vhd
vcom -work work ./tb.vhd

# simulation
vsim -novopt tb

# add wave
add wave sim:/tb/clock
add wave sim:/tb/new_input

add wave -radix decimal sim:/tb/in_a
add wave -radix decimal sim:/tb/in_b
add wave sim:/tb/out_busy
add wave -radix decimal sim:/tb/out_gcd
add wave -radix decimal sim:/tb/out_ref

run 5us
wave zoom full

