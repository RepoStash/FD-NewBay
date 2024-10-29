/obj/overmap/visitable/ship/kitsune
	name = "SFMV Kitsune"
	desc = "Sensor array is detecting a small Sol Fleet vessel."
	color = "#005fed"
	icon_state = "ship"
	moving_state = "ship_moving"
	fore_dir = NORTH
	vessel_size = SHIP_SIZE_SMALL
	burn_delay = 0.5 SECONDS
	hide_from_reports = TRUE
	skill_needed = SKILL_TRAINED
	vessel_mass = 5000
	initial_restricted_waypoints = list(
		"Kitsune" = list("nav_kitsune_start")
	)

/obj/machinery/computer/shuttle_control/explore/hotaru
	name = "shuttle landing control console"
	shuttle_tag = "Hotaru"

/obj/overmap/visitable/ship/landable/hotaru
	name = "SFV Hotaru"
	desc = "Sensor array is detecting a tiny Sol Fleet vessel."
	shuttle = "Hotaru"
	fore_dir = EAST
	dir = EAST
	color = "#98a9fd"
	vessel_mass = 250
	vessel_size = SHIP_SIZE_TINY

/datum/map_template/ruin/away_site/kitsune
	name = "SFMV Kitsune"
	id = "kitsune"
	description = "Medium-sized SCG Fleet vessel with strictly medical purpose."
	prefix = "mods/_fd/_maps/kitsune/maps/"
	suffixes = list("kitsune.dmm")
	spawn_cost = 0.5
	shuttles_to_initialise = list(/datum/shuttle/autodock/overmap/hotaru)
	area_usage_test_exempted_root_areas = list(/area/kitsune/med_shuttle)

/datum/shuttle/autodock/overmap/hotaru
	name = "SFV Hotaru"
	move_time = 10
	shuttle_area = list(
		/area/kitsune/med_shuttle
	)
	current_location = "nav_kitsune_start"
	dock_target = "kitsune_ship_dock"
	range = 1
	ceiling_type = /turf/simulated/floor/plating
	defer_initialisation = TRUE
	flags = SHUTTLE_FLAGS_PROCESS

/obj/submap_landmark/joinable_submap/kitsune
	name = "SFMV Kitsune"
	archetype = /singleton/submap_archetype/kitsune

/singleton/submap_archetype/kitsune
	descriptor = "SFMV Kitsune"
	map = "SFMV Kitsune"
	crew_jobs = list(
		/datum/job/submap/kitsune_captain
		//datum/job/submap/kitsune_engineer,
		//datum/job/submap/kitsune_pilot,
		//datum/job/submap/kitsune_cook,
		//datum/job/submap/kitsune_doctor,
		//datum/job/submap/kitsune_paramedic,
		//datum/job/submap/kitsune_surgeon
	)

/obj/submap_landmark/spawnpoint/kitsune_captain
	name = "Captain"
	movable_flags = MOVABLE_FLAG_EFFECTMOVE

/obj/submap_landmark/spawnpoint/kitsune_engineer
	name = "Engineer"
	movable_flags = MOVABLE_FLAG_EFFECTMOVE

/obj/submap_landmark/spawnpoint/kitsune_pilot
	name = "Pilot"
	movable_flags = MOVABLE_FLAG_EFFECTMOVE

/obj/submap_landmark/spawnpoint/kitsune_cook
	name = "Cook"
	movable_flags = MOVABLE_FLAG_EFFECTMOVE

/obj/submap_landmark/spawnpoint/kitsune_doctor
	name = "Medical Doctor"
	movable_flags = MOVABLE_FLAG_EFFECTMOVE

/obj/submap_landmark/spawnpoint/kitsune_paramedic
	name = "Paramedic"
	movable_flags = MOVABLE_FLAG_EFFECTMOVE

/obj/submap_landmark/spawnpoint/kitsune_surgeon
	name = "Surgeon"
	movable_flags = MOVABLE_FLAG_EFFECTMOVE

/datum/job/submap/kitsune_captain
	title = "Captain"
	department = "SCG Fleet"
	department_flag = CIV
	total_positions = 1
	spawn_positions = 1
	supervisors = "SCG Admiralty"
	ideal_character_age = 35
	minimal_player_age = 0
	loadout_allowed = TRUE
	outfit_type = /singleton/hierarchy/outfit/job/captain
	allowed_branches = list(
		/datum/mil_branch/fleet
	)
	allowed_ranks = list(
		/datum/mil_rank/fleet
	)
	access = list(access_captain,access_engine_equip,access_kitchen,access_pilot,access_medical)
	announced = FALSE
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_TRAINED,
	                    SKILL_PILOT	  = SKILL_BASIC,
						SKILL_MEDICAL = SKILL_TRAINED)
	skill_points = 32

/singleton/hierarchy/outfit/job/kitsune_captain
	name = "Captain"
	id_slot = slot_wear_id
	id_types = list(/obj/item/card/id/torch/gold)
	pda_type = /obj/item/modular_computer/pda
