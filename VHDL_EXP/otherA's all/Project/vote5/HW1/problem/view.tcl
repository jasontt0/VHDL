set names [list]
lappend names "a(0)"
lappend names "a(1)"
lappend names "a(2)"
lappend names "a(3)"
lappend names "a(4)"
lappend names "ref_out"
lappend names "vote_out"

set num_added [ gtkwave::addSignalsFromList $names ]

gtkwave::/Time/Zoom/Zoom_Full
