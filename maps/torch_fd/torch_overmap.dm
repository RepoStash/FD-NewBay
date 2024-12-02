// --- ORIGINAL TORCH INFO -- \\

/obj/overmap/visitable/ship/torch
	name = "...𒊒𒁍..."
	desc = "ℸ ̣⍑ᓭ ̣ᒷ ᒷᔑ↸ℸ| リ𝙹 ╎∷∷ℸ ⍑ᔑʖ ̣  ∷ᔑ|𝙹ᒷᒲ⊣ℸʖ⎓𝙹"
	color = "#7500bd"
	fore_dir = WEST
	vessel_mass = 100000
	burn_delay = 2 SECONDS
	sector_flags = OVERMAP_SECTOR_KNOWN|OVERMAP_SECTOR_IN_SPACE|OVERMAP_SECTOR_BASE
	known_ships = list(
		/obj/overmap/visitable/ship/landable/exploration_shuttle,
		/obj/overmap/visitable/ship/landable/aquila,
		/obj/overmap/visitable/ship/landable/guppy,
		/obj/overmap/visitable/ship/landable/butterfly,
		/obj/overmap/visitable/ship/landable/bubble
	)

	initial_restricted_waypoints = list(
		"Charon" = list("nav_hangar_charon"), 	//can't have random shuttles popping inside the ship
		"Guppy" = list("nav_hangar_guppy"),
		"Aquila" = list("nav_hangar_aquila"),
		"Bubble" = list("nav_hangar_bubble"),
		"Butterfly" = list ("nav_hangar_butterfly"),

		"Skrellian Scout" = list("nav_skrellscout_dock"), //restricts Skrell Scoutship specific docking waypoint on deck 4 portside
		"Skrellian Shuttle" = list("nav_skrellscoutsh_altdock"),
		"Rescue" = list("nav_ert_dock"), //restricts ERT Shuttle specific docking waypoint on deck 4 portside
		"ITV The Reclaimer" = list("nav_hangar_gantry_torch"), //gantry shuttles
		"ITV Vulcan" = list("nav_hangar_gantry_torch_two"),
		"ITV Spiritus" = list("nav_hangar_gantry_torch_three"),
		"SRV Venerable Catfish" = list("nav_verne_5"), //docking location for verne shuttle
		"Cyclopes" = list("nav_merc_dock"),
		"ICGNV Hound" = list("nav_hound_dock"),
		"SFV Arbiter" = list("nav_sfv_arbiter_dock"),

		"SFV Hotaru" = list("nav_torch_hotaru", "nav_torch_hotaru_fore")
	)

	initial_generic_waypoints = list(
		//start Bridge Deck
		"nav_merc_deck5",
		"nav_ninja_deck5",
		"nav_skipjack_deck5",
		"nav_ert_deck5",
		"nav_bridge_charon",
		"nav_bridge_guppy",
		"nav_bridge_aquila",

		//start First Deck
		"nav_merc_deck1",
		"nav_ninja_deck1",
		"nav_skipjack_deck1",
		"nav_ert_deck4",
		"nav_deck4_charon",
		"nav_deck4_guppy",
		"nav_deck4_aquila",

		//start Second Deck
		"nav_merc_deck2",
		"nav_ninja_deck2",
		"nav_skipjack_deck2",
		"nav_ert_deck3",
		"nav_deck3_charon",
		"nav_deck3_guppy",
		"nav_deck3_aquila",

		//start Third Deck
		"nav_merc_deck3",
		"nav_ninja_deck3",
		"nav_skipjack_deck3",
		"nav_ert_deck2",
		"nav_deck2_charon",
		"nav_deck2_guppy",
		"nav_deck2_aquila",

		//start Forth Deck
		"nav_merc_deck4",
		"nav_ninja_deck4",
		"nav_skipjack_deck4",
		"nav_ert_deck1",
		"nav_deck1_charon",
		"nav_deck1_guppy",
		"nav_deck1_aquila",
		"nav_vox_raider_dock",

		//start Hanger Deck
		"nav_merc_hanger",
		"nav_ninja_hanger",
		"nav_skipjack_hanger",
		"nav_ert_hanger",
	)

/obj/overmap/visitable/ship/landable/exploration_shuttle
	name = "Charon"
	desc = "An SSE-U11 long range shuttle, broadcasting SCGEC codes and the callsign \"Torch-2 Charon\"."
	shuttle = "Charon"
	max_speed = 1/(2 SECONDS)
	burn_delay = 1 SECONDS
	vessel_mass = 3000
	fore_dir = NORTH
	skill_needed = SKILL_BASIC
	vessel_size = SHIP_SIZE_SMALL
	known_ships = list(
		/obj/overmap/visitable/ship/torch,
		/obj/overmap/visitable/ship/landable/aquila,
		/obj/overmap/visitable/ship/landable/guppy,
		/obj/overmap/visitable/ship/landable/butterfly,
		/obj/overmap/visitable/ship/landable/bubble
	)

/obj/overmap/visitable/ship/landable/aquila
	name = "Aquila"
	desc = "A PM-24 modular transport, broadcasting SCGEC codes and the callsign \"Torch-1 Aquila\"."
	shuttle = "Aquila"
	vessel_mass = 10000
	max_speed = 1/(1 SECONDS)
	burn_delay = 0.5 SECONDS //spammable, but expensive
	fore_dir = NORTH
	vessel_size = SHIP_SIZE_SMALL
	known_ships = list(
		/obj/overmap/visitable/ship/torch,
		/obj/overmap/visitable/ship/landable/exploration_shuttle,
		/obj/overmap/visitable/ship/landable/guppy,
		/obj/overmap/visitable/ship/landable/butterfly,
		/obj/overmap/visitable/ship/landable/bubble
	)

/obj/overmap/visitable/ship/landable/guppy
	name = "Guppy"
	desc = "An SSE-U3 utility pod, broadcasting SCGEC codes and the callsign \"Torch-3 Guppy\"."
	shuttle = "Guppy"
	max_speed = 1/(3 SECONDS)
	burn_delay = 2 SECONDS
	vessel_mass = 1800
	fore_dir = SOUTH
	skill_needed = SKILL_BASIC
	vessel_size = SHIP_SIZE_TINY
	known_ships = list(
		/obj/overmap/visitable/ship/torch,
		/obj/overmap/visitable/ship/landable/exploration_shuttle,
		/obj/overmap/visitable/ship/landable/aquila,
		/obj/overmap/visitable/ship/landable/butterfly,
		/obj/overmap/visitable/ship/landable/bubble
	)

/obj/machinery/computer/shuttle_control/explore/aquila
	name = "aquila control console"
	shuttle_tag = "Aquila"
	req_access = list(access_aquila_helm)

/obj/machinery/computer/shuttle_control/explore/exploration_shuttle
	name = "shuttle control console"
	shuttle_tag = "Charon"
	req_access = list(access_expedition_shuttle_helm)

/obj/machinery/computer/shuttle_control/explore/guppy
	name = "guppy control console"
	shuttle_tag = "Guppy"
	req_access = list(access_guppy_helm)

// --- FD CHANGES -- \\

// --- BUBBLE --- //

/obj/overmap/visitable/ship/landable/bubble
	name = "Bubble"
	desc = "An SSE-U2 utility pod, broadcasting SCGEC codes and the callsign \"Torch-4 Bubble\"."
	shuttle = "Bubble"
	max_speed = 1/(3 SECONDS)
	burn_delay = 2 SECONDS
	vessel_mass = 3000 //very inefficient pod
	fore_dir = SOUTH
	dir = SOUTH
	skill_needed = SKILL_BASIC
	vessel_size = SHIP_SIZE_TINY
	known_ships = list(
		/obj/overmap/visitable/ship/torch,
		/obj/overmap/visitable/ship/landable/aquila,
		/obj/overmap/visitable/ship/landable/guppy,
		/obj/overmap/visitable/ship/landable/exploration_shuttle,
		/obj/overmap/visitable/ship/landable/butterfly
	)

/obj/machinery/computer/shuttle_control/explore/bubble
	name = "Bubble control console"
	shuttle_tag = "Bubble"
	req_access = list(access_guppy_helm)

/datum/shuttle/autodock/overmap/bubble
	name = "Bubble"
	warmup_time = 5
	move_time = 30
	shuttle_area = /area/bubble_hangar/start
	dock_target ="bubble_shuttle"
	current_location = "nav_hangar_bubble"
	landmark_transition = "nav_transit_bubble"
	sound_takeoff = 'sound/effects/rocket.ogg'
	sound_landing = 'sound/effects/rocket_backwards.ogg'
	fuel_consumption = 2
	logging_home_tag = "nav_hangar_bubble"
	logging_access = access_guppy_helm
	skill_needed = SKILL_UNSKILLED
	ceiling_type = /turf/simulated/floor/shuttle_ceiling/torch

/obj/shuttle_landmark/torch/hangar/bubble
	name = "Bubble Hangar"
	landmark_tag = "nav_hangar_bubble"
	base_area = /area/quartermaster/hangar
	base_turf = /turf/simulated/floor/plating

/obj/shuttle_landmark/torch/deck1/bubble
	name = "Space near Forth Deck"
	landmark_tag = "nav_deck1_bubble"

/obj/shuttle_landmark/torch/deck2/bubble
	name = "Space near Third Deck"
	landmark_tag = "nav_deck2_bubble"

/obj/shuttle_landmark/torch/deck3/bubble
	name = "Space near Second Deck"
	landmark_tag = "nav_deck3_bubble"

/obj/shuttle_landmark/torch/deck4/bubble
	name = "Space near First Deck"
	landmark_tag = "nav_deck4_bubble"

/obj/shuttle_landmark/torch/deck5/bubble
	name = "Space near Bridge"
	landmark_tag = "nav_bridge_bubble"

/obj/shuttle_landmark/transit/torch/bubble
	name = "In transit"
	landmark_tag = "nav_transit_bubble"

// --- BUBBLE END --- //


// --- BUTTERFLY --- //

/obj/overmap/visitable/ship/landable/butterfly
	name = "Butterfly"
	desc = "An SSE-U09 long range shuttle, broadcasting SCGEC codes and the callsign \"Torch-5 Butterfly\"."
	shuttle = "Butterfly"
	max_speed = 1/(2 SECONDS)
	burn_delay = 1 SECONDS
	vessel_mass = 4000
	fore_dir = SOUTH
	dir = SOUTH
	skill_needed = SKILL_BASIC
	vessel_size = SHIP_SIZE_TINY
	known_ships = list(
		/obj/overmap/visitable/ship/torch,
		/obj/overmap/visitable/ship/landable/aquila,
		/obj/overmap/visitable/ship/landable/exploration_shuttle,
		/obj/overmap/visitable/ship/landable/guppy,
		/obj/overmap/visitable/ship/landable/bubble,
	)

/obj/machinery/computer/shuttle_control/explore/butterfly
	name = "Butterfly control console"
	shuttle_tag = "Butterfly"

/datum/shuttle/autodock/overmap/butterfly
	name = "Butterfly"
	warmup_time = 5
	move_time = 30
	shuttle_area = list(/area/butterfly_hangar,/area/butterfly_hangar/cockpit)
	dock_target ="butterfly_shuttle"
	current_location = "nav_hangar_butterfly"
	landmark_transition = "nav_transit_butterfly"
	sound_takeoff = 'sound/effects/rocket.ogg'
	sound_landing = 'sound/effects/rocket_backwards.ogg'
	fuel_consumption = 2
	logging_home_tag = "nav_hangar_butterfly"
	logging_access = access_guppy_helm
	skill_needed = SKILL_UNSKILLED
	ceiling_type = /turf/simulated/floor/shuttle_ceiling/torch

/obj/shuttle_landmark/torch/hangar/butterfly
	name = "Butterfly Hangar"
	landmark_tag = "nav_hangar_butterfly"
	base_area = /area/quartermaster/hangar
	base_turf = /turf/simulated/floor/plating

/obj/shuttle_landmark/torch/deck1/butterfly
	name = "Space near Forth Deck"
	landmark_tag = "nav_deck1_butterfly"

/obj/shuttle_landmark/torch/deck2/butterfly
	name = "Space near Third Deck"
	landmark_tag = "nav_deck2_butterfly"

/obj/shuttle_landmark/torch/deck3/butterfly
	name = "Space near Second Deck"
	landmark_tag = "nav_deck3_butterfly"

/obj/shuttle_landmark/torch/deck4/butterfly
	name = "Space near First Deck"
	landmark_tag = "nav_deck4_butterfly"

/obj/shuttle_landmark/torch/deck5/butterfly
	name = "Space near Bridge"
	landmark_tag = "nav_bridge_butterfly"

/obj/shuttle_landmark/transit/torch/butterfly
	name = "In transit"
	landmark_tag = "nav_transit_butterfly"

// --- BUTTERFLY END --- //

/datum/shuttle/autodock/overmap/aquila
	shuttle_area = list(/area/aquila/cockpit, /area/aquila/maintenance, /area/aquila/storage, /area/aquila/secure_storage, /area/aquila/mess, /area/aquila/passenger, /area/aquila/medical, /area/aquila/head, /area/aquila/airlock)

/datum/shuttle/autodock/overmap/exploration_shuttle
	shuttle_area = list(/area/exploration_shuttle/cockpit, /area/exploration_shuttle/atmos, /area/exploration_shuttle/power, /area/exploration_shuttle/crew, /area/exploration_shuttle/cargo, /area/exploration_shuttle/airlock)

// Override of Desc

/obj/overmap/visitable/ship/torch
//	desc = "A frankensteined HNS Mako-class corvette, broadcasting SCGEC codes and the designation \"SEV Torch, HSC-4-13-X\"."
	desc = "ℸ ̣⍑ᓭ ̣ᒷ ᒷᔑ↸ℸ| リ𝙹 ╎∷∷ℸ ⍑ᔑʖ ̣  ∷ᔑ|𝙹ᒷᒲ⊣ℸʖ⎓𝙹"
