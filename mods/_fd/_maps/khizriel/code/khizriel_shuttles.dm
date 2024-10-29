/obj/overmap/visitable/ship/landable/khizriel
	name = "IPV Khizriel"
	shuttle = "Khizriel"
	desc = "Sensor array is detecting a small-size vessel, broadcasting unknown registration codes \"12JJJ-0x000x-Z-███\"."
	max_speed = 1/(2 SECONDS)
	burn_delay = 1 SECONDS
	vessel_mass = 13400
	skill_needed = SKILL_TRAINED
	vessel_size = SHIP_SIZE_LARGE
	fore_dir = WEST
	dir = WEST
	hide_from_reports = TRUE
	initial_restricted_waypoints = list(
		"Bluespace Residue" = list("nav_khizriel")
	)

/obj/machinery/computer/shuttle_control/explore/khizriel
	name = "vessel control console"
	shuttle_tag = "Khizriel"

/obj/shuttle_landmark/khizriel
	name = "Khizriel Landing Zone"
	landmark_tag = "nav_khizriel"
	docking_controller = "khizriel_dock"
	movable_flags = MOVABLE_FLAG_EFFECTMOVE

/datum/shuttle/autodock/overmap/khizriel
	name = "Khizriel"
	warmup_time = 10
	move_time = 20
	range = 1
	shuttle_area = list(/area/ship/khizriel/generator, /area/ship/khizriel/kitchen, /area/ship/khizriel/eng, /area/ship/khizriel/armory, /area/ship/khizriel/equip, /area/ship/khizriel/ammo_r, /area/ship/khizriel/bar, /area/ship/khizriel/ammo_l, /area/ship/khizriel/bridge, /area/ship/khizriel/warehouse_r, /area/ship/khizriel/warehouse_l, /area/ship/khizriel/living, /area/ship/khizriel/med, /area/ship/khizriel/cryo, /area/ship/khizriel/gun, /area/ship/khizriel/harpoon)
	defer_initialisation = TRUE
	flags = SHUTTLE_FLAGS_PROCESS
	skill_needed = SKILL_BASIC
	ceiling_type = /turf/simulated/floor/shuttle_ceiling
	current_location = "nav_khizriel"
