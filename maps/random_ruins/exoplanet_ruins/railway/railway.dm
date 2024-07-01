/datum/map_template/ruin/exoplanet/railway
	name = "Crashed Train"
	id = "railway"
	description = "An magnetic train crashsite"
	suffixes = list("railway/train.dmm")
	spawn_cost = 2
	template_flags = TEMPLATE_FLAG_NO_RUINS
	ruin_tags = RUIN_HUMAN | RUIN_WRECK

/area/map_template/train
	name = "\improper Magnetic train Crashsite"
	icon_state = "hallC1"
	icon = 'icons/turf/areas.dmi'

/obj/spawner/room/traincrash/horizontal
	room_width = 11
	room_height = 5
	room_type = "cart_horizont"

/datum/map_template/ruin/random_room/traincrash/horizontal
	name = "Train Cart 1"
	template_width = 11
	template_height = 5
	stock = 2
	room_type = "cart_horizont"
	id = "cart_horizont_1"
	prefix = "maps/random_ruins/exoplanet_ruins/railway/random_carts/"
	suffixes = list("cart_1.dmm")

/datum/map_template/ruin/random_room/traincrash/horizontal/cracked
	name = "Train Cart 2"
	id = "cart_horizont_2"
	suffixes = list("cart_2.dmm")

/datum/map_template/ruin/random_room/traincrash/horizontal/gunrich
	name = "Train Cart 3"
	id = "cart_horizont_3"
	suffixes = list("cart_3.dmm")

/obj/spawner/room/traincrash/vertical
	room_width = 5
	room_height = 11
	room_type = "cart_vertical"

/datum/map_template/ruin/random_room/traincrash/vertical
	name = "Train Cart 2-1"
	template_width = 5
	template_height = 11
	stock = 1
	room_type = "cart_vertical"
	id = "cart_vertical_1"
	prefix = "maps/random_ruins/exoplanet_ruins/railway/random_carts/"
	suffixes = list("cart_vert_1.dmm")

/datum/map_template/ruin/random_room/traincrash/vertical/cracked
	name = "Train Cart 2-2"
	id = "cart_vertical_2"
	suffixes = list("cart_vert_2.dmm")
