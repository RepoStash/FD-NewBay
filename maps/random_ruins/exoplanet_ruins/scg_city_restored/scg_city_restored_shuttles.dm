// lovely

/area/lovely
	name = "\improper SCGV Lovely"
	icon_state = "shuttle"

/obj/overmap/visitable/ship/landable/lovely
	name = "lovely"
	shuttle = "lovely"
	desc = "Sensor array detects a small cargo SCG Vessel."
	fore_dir = NORTH
	dir = NORTH
	color = "#0751f3"
	alpha = 100
	skill_needed = SKILL_UNSKILLED
	vessel_mass = 750
	vessel_size = SHIP_SIZE_SMALL

/obj/machinery/computer/shuttle_control/explore/lovely
	name = "landing control console"
	shuttle_tag = "lovely"

/datum/shuttle/autodock/overmap/lovely
	name = "lovely"
	move_time = 20
	shuttle_area = /area/lovely
	current_location = "nav_hangar_lovely"
	landmark_transition = "nav_transit_lovely"
	range = 0 //range = 2
	fuel_consumption = 1
	logging_home_tag = "nav_hangar_lovely"
	ceiling_type = /turf/simulated/floor/shuttle_ceiling
	flags = SHUTTLE_FLAGS_PROCESS
	defer_initialisation = TRUE

/obj/shuttle_landmark/lovely
	name = "lovely Hangar"
	landmark_tag = "nav_hangar_lovely"
	base_area = /area/map_template/scgcity/hangar
	base_turf = /turf/simulated/floor/plating

/obj/shuttle_landmark/transit/lovely
	name = "In transit"
	landmark_tag = "nav_transit_lovely"
