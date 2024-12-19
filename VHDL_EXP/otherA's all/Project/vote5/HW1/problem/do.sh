rm -r ./work/*
rm -r ./wave/*

/usr/local/bin/ghdl -a --workdir=work --std=93 -fexplicit --ieee=standard vote5.vhd
/usr/local/bin/ghdl -a --workdir=work --std=93 -fexplicit --ieee=standard tb.vhd
/usr/local/bin/ghdl -e --workdir=work --std=93 -fexplicit --ieee=standard tb
/usr/local/bin/ghdl -r --workdir=work tb --wave=.\wave\wav.ghw --stop-time=1us
/usr/local/bin/gtkwave .\wave\wav.ghw  -S view.tcl
