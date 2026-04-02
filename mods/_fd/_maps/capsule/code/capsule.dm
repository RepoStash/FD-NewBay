/obj/overmap/visitable/ship/landable/capsule
	name = "SFV Nail"
	shuttle = "Capsule"
	desc = "Sensor array is detecting a tiny drop-pod transmitting Sol Fleet codes \"SFV-RD55-04\""
	color = "#7596b7"
	fore_dir = EAST
	dir = EAST
	vessel_size = SHIP_SIZE_TINY
	burn_delay = 0.5 SECONDS
	hide_from_reports = TRUE
	skill_needed = SKILL_BASIC
	vessel_mass = 1500
	initial_restricted_waypoints = list(
		"Bluespace Residue" = list("nav_capsule")
	)

/datum/map_template/ruin/away_site/capsule
	name = "SFV Nail"
	id = "Capsule"
	description = ""
	prefix = "mods/_fd/_maps/capsule/maps/"
	suffixes = list("capsule.dmm")
	spawn_cost = 0.5
	area_usage_test_exempted_root_areas = /area/ship/capsule
	shuttles_to_initialise = list(/datum/shuttle/autodock/overmap/capsule)

/obj/machinery/computer/shuttle_control/explore/capsule
	name = "vessel control console"
	shuttle_tag = "Capsule"

/obj/shuttle_landmark/capsule
	name = "Capsule Landing Zone"
	landmark_tag = "nav_capsule"
	docking_controller = "capsule_dock"
	movable_flags = MOVABLE_FLAG_EFFECTMOVE

/datum/shuttle/autodock/overmap/capsule
	name = "Capsule"
	warmup_time = 6
	move_time = 12
	range = 1
	shuttle_area = list(/area/ship/capsule/interior)
	defer_initialisation = TRUE
	flags = SHUTTLE_FLAGS_PROCESS
	skill_needed = SKILL_BASIC
	ceiling_type = /turf/simulated/floor/shuttle_ceiling
	current_location = "nav_capsule"

/obj/overmap/visitable/sector/capsule
	name = "Bluespace Residue"
	desc = "/ERROR/."
	icon_state = "event"
	hide_from_reports = TRUE
	sector_flags = OVERMAP_SECTOR_IN_SPACE | OVERMAP_SECTOR_UNTARGETABLE


/area/ship/capsule
	name = "\improper Capsule hull"

/area/ship/capsule/interior
	name = "\improper Capsule interior"
