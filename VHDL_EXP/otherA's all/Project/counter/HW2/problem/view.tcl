set names [list]
lappend names "clock"
lappend names "reset"
set num_added [ gtkwave::addSignalsFromList $names ]

set num_added [ gtkwave::addSignalsFromList "dout" ]
gtkwave::/Edit/Data_Format/Decimal

set num_added [ gtkwave::addSignalsFromList "dout" ]
gtkwave::/Edit/Data_Format/Analog/Interpolated_Annotated

gtkwave::/Time/Zoom/Zoom_Full
