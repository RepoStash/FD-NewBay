/turf/unsimulated
	var/open_directions = 0

/turf/simulated/floor/blackgrid
	name = "mainframe floor"
	icon = 'icons/turf/flooring/circuit.dmi'
	icon_state = "rcircuit"
	initial_flooring = /singleton/flooring/reinforced/circuit/red
	light_range = 1
	light_color = COLOR_RED

// TODO: Убрать это с Ульяновска, дабы не было ерророк при мерджах.

/turf/simulated/floor/reinforced/airless
	map_airless = TRUE
