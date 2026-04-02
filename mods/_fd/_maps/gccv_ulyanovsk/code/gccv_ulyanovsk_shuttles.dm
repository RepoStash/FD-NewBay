// Leaper
/*
/area/leaper
	name = "\improper leaper"
	icon_state = "shuttle"

/area/leaper/main
	name = "\improper leaper Airlock Compartment"

/area/leaper/cockpit
	name = "\improper leaper Cockpit"

/area/leaper/engine
	name = "\improper leaper Engine"

/obj/effect/overmap/visitable/ship/landable/leaper
	name = "Leaper"
	shuttle = "Leaper"
	desc = "Sensor array detected a small shuttle transmitting the 'PS LEAPER' codes, the coating does not allow to extract more data."
	fore_dir = SOUTH
	color = "#0c2d47"
	alpha = 150
	integrity_failure_cap = 60
	skill_needed = SKILL_BASIC
	vessel_mass = 5000
	vessel_size = SHIP_SIZE_SMALL

/obj/machinery/computer/shuttle_control/explore/leaper
	name = "landing control console"
	shuttle_tag = "Leaper"

/datum/shuttle/autodock/overmap/leaper
	name = "Leaper"
	move_time = 10
	shuttle_area = list(/area/leaper/cockpit, /area/leaper/main, /area/leaper/engine)
	current_location = "nav_hangar_leaper"
	dock_target = "aegis_shuttle_dock_airlock"
	//landmark_transition = "nav_transit_leaper"
	range = 0 //range = 2
	fuel_consumption = 1
	ceiling_type = /turf/simulated/floor/shuttle_ceiling
	flags = SHUTTLE_FLAGS_PROCESS
	defer_initialisation = TRUE

/obj/effect/shuttle_landmark/leaper
	name = "leaper Hangar"
	landmark_tag = "nav_hangar_leaper"
	base_area = /area/aegis/engineering/hangar
	base_turf = /turf/simulated/floor/plating
	docking_controller = "aegis_shuttle_dock_airlock"

*/


/obj/machinery/computer/ship/helm/ulyanovsk
	accellimit = 0.005
	req_access = list(access_iccg)

/obj/machinery/computer/ship/helm/ulyanovsk/command
	req_access = list(access_iccg_com)

/obj/item/stock_parts/circuitboard/helm/ulyanovsk
	name = "C.B. (helm control console) - GCCV Ulyanovsk"
	build_path = /obj/machinery/computer/ship/helm/ulyanovsk

/obj/item/stock_parts/circuitboard/helm/ulyanovsk/command
	name = "C.B. (helm control console) - GCCV Ulyanovsk (Command)"
	build_path = /obj/machinery/computer/ship/helm/ulyanovsk/command
