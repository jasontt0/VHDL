del /Q work\*.*
del /Q wave\*.*

c:\ghdl\bin\ghdl.exe -a --workdir=work --std=93 -fexplicit --ieee=standard vote5.vhd
c:\ghdl\bin\ghdl.exe -a --workdir=work --std=93 -fexplicit --ieee=standard tb.vhd
c:\ghdl\bin\ghdl.exe -e --workdir=work --std=93 -fexplicit --ieee=standard tb
c:\ghdl\bin\ghdl.exe -r --workdir=work tb --wave=.\wave\wav.ghw --stop-time=1us
c:\gtkwave\bin\gtkwave.exe .\wave\wav.ghw  -S view.tcl
