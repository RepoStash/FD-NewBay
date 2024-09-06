/obj/overmap/visitable/sector/doors
	name = "Doors"
	desc = "Strange bluespace anomaly. IF YOU SEE THIS SOMETHING VERY WRONG!"
	color = COLOR_DARK_GREEN_GRAY
	icon_state = "event"
	initial_generic_waypoints = list()

/datum/map_template/ruin/away_site/doors
	name = "Doors"
	id = "awaysite_doors"
	spawn_cost = INFINITY
	description = "Strange bluespace anomaly."
	prefix = "mods/_fd/_maps/doors/map/"
	suffixes = list("doors.dmm")
	area_usage_test_exempted_root_areas = list(/area/doors/)
	apc_test_exempt_areas = list(
		/area/doors/ = NO_SCRUBBER|NO_VENT|NO_APC
	)

/area/doors
	name = "bluespace endless corridor"
	requires_power = FALSE

/obj/structure/fd/invisible_light
	icon = 'icons/mob/screen1.dmi'
	icon_state = "x2"
	name = "light"
	desc = "Just a light source, emmiting light you want."
	anchored = TRUE
	density = FALSE

	var/how_far = 0
	var/how_much = 0
	var/what_color = "#ffffff"

/obj/structure/fd/invisible_light/Initialize()
	. = ..()
	set_light(how_far, how_much, l_color = what_color)

/obj/step_trigger/teleporter_normal
	var/teleport_x = 0
	var/teleport_y = 0
	var/teleport_z = 0

/obj/step_trigger/teleporter_normal/Trigger(atom/movable/A)
	if(teleport_x && teleport_y && teleport_z)

		A.x = teleport_x
		A.y = teleport_y
		A.z = teleport_z

	else
		A.x = teleport_x
		A.y = teleport_y
