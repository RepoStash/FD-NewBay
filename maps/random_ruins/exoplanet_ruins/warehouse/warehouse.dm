/datum/map_template/ruin/exoplanet/warehouse
	name = "Derelict Groundside Warehouse"
	id = "warehouse"
	description = "An abandoned warehouse with some booby traps and a repairable shuttle."
	suffixes = list("warehouse/warehouse.dmm")
	spawn_cost = 0.5
	shuttles_to_initialise = list(/datum/shuttle/autodock/overmap/oldcargo)
	apc_test_exempt_areas = list(
		/area/map_template/warehouse/airstrip = NO_SCRUBBER|NO_VENT|NO_APC,
	)
	ruin_tags = RUIN_HUMAN|RUIN_WRECK
	template_flags = TEMPLATE_FLAG_CLEAR_CONTENTS | TEMPLATE_FLAG_NO_RUINS

/area/map_template/warehouse/oldcargo
	name = "\improper Mark II Cargo Shuttle"
	icon_state = "shuttlegrn"

/area/map_template/warehouse/warehouse
	name = "\improper Derelict Warehouse"
	icon_state = "storage"

/area/map_template/warehouse/airstrip
	name = "\improper Derelict Warehouse Airstrip"
	icon_state = "shuttle2"
	area_flags = AREA_FLAG_EXTERNAL


/datum/shuttle/autodock/overmap/oldcargo
	name = "Mark II Cargo Shuttle"
	dock_target = "oldcargo_shuttle"
	current_location = "nav_oldcargo_start"
	range = 1
	shuttle_area = /area/map_template/warehouse/oldcargo
	fuel_consumption = 4
	defer_initialisation = TRUE
	flags = SHUTTLE_FLAGS_PROCESS
	skill_needed = SKILL_MIN
	ceiling_type = /turf/simulated/floor/shuttle_ceiling

/obj/machinery/computer/shuttle_control/explore/oldcargo
	name = "Mark II Shuttle control console"
	shuttle_tag = "Mark II Cargo Shuttle"

/obj/overmap/visitable/ship/landable/oldcargo
	name = "Mark II Cargo Shuttle"
	desc = "Sensors detect a small unarmed craft, broadcasting designation \"Mark II Cargo - R4-S-PL\". Hull scan displays two class matches at once, both being obsolete."
	shuttle = "Mark II Cargo Shuttle"
	fore_dir = NORTH
	color = "#8dc0d8"
	vessel_mass = 2500
	vessel_size = SHIP_SIZE_TINY

/obj/shuttle_landmark/oldcargo
	name = "Warehouse Airstripe"
	landmark_tag = "nav_oldcargo_start"
	base_area = /area/map_template/warehouse/airstrip
	base_turf = /turf/simulated/floor/exoplanet/concrete/reinforced/road
	movable_flags = MOVABLE_FLAG_EFFECTMOVE

/obj/item/paper/warehouse
	language = LANGUAGE_HUMAN_RUSSIAN

/obj/item/paper/warehouse/first
	name = "TRNMSN 07-24-1"
	info = {"
		<p>CONFIDENTIAL DESTROY UPON READ</p>
		<p>ATTENTION ALL UNITS</p>
		<p>FRONT OPERATION COMPROMISED</p>
		<p>ACTIVE FORCES RALLY TO CHECKPOINT ROMEO</p>
		<p>SUPPLY POINTS 05A 08K 11A EVACUATE</p>
		<p>RETALIATION ATTACK IMMINENT</p>
		<p>END MSG</p>
		"}

/obj/item/paper/warehouse/second
		name = "To Team Red"
		info = {"
		<p>Orders came up - by the time you come back, we're packed up and outta here. We're taking the scout, hauler's bingo fuel, but we have some left inside.</p>
		<p>Inside is rigged with mines, watch your step. And hurry up, attack is incoming.</p>
		"}
