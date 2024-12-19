setenv SIM_WORKING_FOLDER .
set newDesign 0
if {![file exists "D:/Lattice Diamond/Project/vote5/vote5_sim/vote5_sim.adf"]} { 
	design create vote5_sim "D:/Lattice Diamond/Project/vote5"
  set newDesign 1
}
design open "D:/Lattice Diamond/Project/vote5/vote5_sim"
cd "D:/Lattice Diamond/Project/vote5"
designverincludedir -clear
designverlibrarysim -PL -clear
designverlibrarysim -L -clear
designverlibrarysim -PL pmi_work
designverlibrarysim ovi_machxo2
designverdefinemacro -clear
if {$newDesign == 0} { 
  removefile -Y -D *
}
addfile "D:/Lattice Diamond/Project/vote5/vote5_sim/vote5.vhd"
addfile "D:/Lattice Diamond/Project/vote5/vote5_sim/tb.vhd"
vlib "D:/Lattice Diamond/Project/vote5/vote5_sim/work"
set worklib work
adel -all
vcom -dbg -work work "D:/Lattice Diamond/Project/vote5/vote5_sim/vote5.vhd"
vcom -dbg -work work "D:/Lattice Diamond/Project/vote5/vote5_sim/tb.vhd"
entity tb
vsim  +access +r tb   -PL pmi_work -L ovi_machxo2
add wave *
run 1000ns
