/obj/overmap/visitable/ship/landable/a_drone1
	name = "unknown alien drone"
	shuttle = "DRONE1"
	desc = "Sensor array is detecting a tiny-sized drone of unknown origin"
	color = "#661c77"
	icon = 'mods/_fd//fd_assets/icons/overmap.dmi'
	icon_state = "shuttle"
	moving_state = "shuttle_moving"
	fore_dir = NORTH
	vessel_size = SHIP_SIZE_TINY
	burn_delay = 0.5 SECONDS
	hide_from_reports = TRUE
	skill_needed = SKILL_TRAINED
	vessel_mass = 1000

/obj/shuttle_landmark/a_drone1
	name = "drone1 landing"
	landmark_tag = "DRONE1"
	docking_controller = "drone1_dock"
	movable_flags = MOVABLE_FLAG_EFFECTMOVE

/obj/overmap/visitable/ship/landable/a_drone2
	name = "unknown alien drone"
	shuttle = "DRONE2"
	desc = "Sensor array is detecting a tiny-sized drone of unknown origin"
	color = "#661c77"
	icon = 'mods/_fd//fd_assets/icons/overmap.dmi'
	icon_state = "shuttle"
	moving_state = "shuttle_moving"
	fore_dir = NORTH
	vessel_size = SHIP_SIZE_TINY
	burn_delay = 0.5 SECONDS
	hide_from_reports = TRUE
	skill_needed = SKILL_TRAINED
	vessel_mass = 1000

/obj/shuttle_landmark/a_drone2
	name = "drone2 landing"
	landmark_tag = "DRONE2"
	docking_controller = "drone2_dock"
	movable_flags = MOVABLE_FLAG_EFFECTMOVE

/obj/overmap/visitable/ship/landable/a_drone3
	name = "unknown alien drone"
	shuttle = "DRONE3"
	desc = "Sensor array is detecting a tiny-sized drone of unknown origin"
	color = "#661c77"
	icon = 'mods/_fd//fd_assets/icons/overmap.dmi'
	icon_state = "shuttle"
	moving_state = "shuttle_moving"
	fore_dir = NORTH
	vessel_size = SHIP_SIZE_TINY
	burn_delay = 0.5 SECONDS
	hide_from_reports = TRUE
	skill_needed = SKILL_TRAINED
	vessel_mass = 1000

/obj/shuttle_landmark/a_drone3
	name = "drone3 landing"
	landmark_tag = "DRONE3"
	docking_controller = "drone3_dock"
	movable_flags = MOVABLE_FLAG_EFFECTMOVE

/area/a_drone1
	name = "\improper DRONE1"
	requires_power = 0

/area/a_drone1/eng
	name = "\improper DRONE1 Engine"

/area/a_drone2
	name = "\improper DRONE2"
	requires_power = 0

/area/a_drone2/eng
	name = "\improper DRONE2 Engine"

/area/a_drone3
	name = "\improper DRONE3"
	requires_power = 0

/area/a_drone3/eng
	name = "\improper DRONE3 Engine"

/obj/machinery/computer/shuttle_control/explore/a_drone1
	name = "vessel control console"
	shuttle_tag = "DRONE1"

/obj/machinery/computer/shuttle_control/explore/a_drone2
	name = "vessel control console"
	shuttle_tag = "DRONE2"

/obj/machinery/computer/shuttle_control/explore/a_drone3
	name = "vessel control console"
	shuttle_tag = "DRONE3"

/datum/shuttle/autodock/overmap/a_drone1
	name = "DRONE1"
	warmup_time = 5
	move_time = 10
	range = 1
	shuttle_area = list(/area/a_drone1, /area/a_drone1/eng)
	defer_initialisation = TRUE
	flags = SHUTTLE_FLAGS_PROCESS
	skill_needed = SKILL_BASIC
	ceiling_type = /turf/simulated/floor/shuttle_ceiling
	current_location = "DRONE1"

/datum/shuttle/autodock/overmap/a_drone2
	name = "DRONE2"
	warmup_time = 5
	move_time = 10
	range = 1
	shuttle_area = list(/area/a_drone2, /area/a_drone2/eng)
	defer_initialisation = TRUE
	flags = SHUTTLE_FLAGS_PROCESS
	skill_needed = SKILL_BASIC
	ceiling_type = /turf/simulated/floor/shuttle_ceiling
	current_location = "DRONE2"

/datum/shuttle/autodock/overmap/a_drone3
	name = "DRONE3"
	warmup_time = 5
	move_time = 10
	range = 1
	shuttle_area = list(/area/a_drone3, /area/a_drone3/eng)
	defer_initialisation = TRUE
	flags = SHUTTLE_FLAGS_PROCESS
	skill_needed = SKILL_BASIC
	ceiling_type = /turf/simulated/floor/shuttle_ceiling
	current_location = "DRONE3"

/datum/map_template/ruin/away_site/a_squadron
	name = "ascent drone squadron"
	id = "a_drones"
	description = ""
	prefix = "mods/_fd/_maps/a_destroyer/maps/"
	suffixes = list("a_drones.dmm")
	spawn_cost = 0.5
	shuttles_to_initialise = list(/datum/shuttle/autodock/overmap/a_drone1, /datum/shuttle/autodock/overmap/a_drone2, /datum/shuttle/autodock/overmap/a_drone3)

/obj/overmap/visitable/sector/a_squadron
	name = "Bluespace Residue"
	desc = "/ERROR/."
	icon_state = "event"
	hide_from_reports = TRUE
	sector_flags = OVERMAP_SECTOR_IN_SPACE | OVERMAP_SECTOR_UNTARGETABLE
