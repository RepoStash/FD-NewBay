/area/ny_house/train
	name = "Supersonic Train"

/datum/shuttle/autodock/multi/antag/train
	name = "Supersonic Train"
	defer_initialisation = TRUE
	warmup_time = 5
	move_time = 600
	sound_takeoff = 'sound/effects/rocket_backwards.ogg'
	sound_landing = 'sound/effects/rocket_backwards.ogg'
	destination_tags = list(
		"nav_train_town",
		"nav_train_start"
		)
	shuttle_area = /area/ny_house/train
	current_location = "nav_train_start"
	landmark_transition = "nav_train_transit"
	home_waypoint = "nav_train_start"

	cloaked = FALSE
	announcer = "Система Оповещения"
	arrival_message = "Сверхзвуковой поезд отбывает со станции 'Резиденция Версетти', следующая станция - 'Южный сектор 13-B'. Пристегните ремни."
	departure_message = "Сверхзвуковой поезд отбывает со станции 'Южный сектор 13-B', следующая станция - 'Резиденция Версетти'. Пристегните ремни."


/obj/shuttle_landmark/train
	base_area = /area/ny_house/outer/forest
	base_turf = /turf/simulated/floor/exoplanet/gravel

/obj/shuttle_landmark/train/is_valid(datum/shuttle/shuttle)
	return shuttle.current_location != src

/obj/shuttle_landmark/train/start
	name = "Станция около виллы"
	landmark_tag = "nav_train_start"

/obj/shuttle_landmark/train/transit
	name = "In transit"
	landmark_tag = "nav_train_transit"
	base_turf = /turf/unsimulated/moving/floor

/obj/shuttle_landmark/train/town
	name = "Станция около города"
	landmark_tag = "nav_train_town"
	base_area = /area/ny_house/outer/city


/obj/machinery/computer/shuttle_control/multi/train
	name = "train control (наблюдателям привет)"
	desc = "я думаю никто не будет против если я размещу здесь пару стрелочек, правда???"
	icon = 'icons/turf/areas.dmi'
	icon_state = "shuttlered"
	interact_offline = TRUE

	req_access = list(access_cent_specops)
	shuttle_tag = "Supersonic Train"

	invisibility = INVISIBILITY_OBSERVER
	alpha = FAKE_INVIS_ALPHA_THRESHOLD
	density = 0
	layer = 5

/obj/machinery/computer/shuttle_control/multi/train/power_change()
	return

/obj/machinery/computer/shuttle_control/multi/train/on_update_icon()
	return
