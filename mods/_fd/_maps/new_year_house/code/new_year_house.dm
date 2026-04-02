/obj/overmap/visitable/sector/ny_house
	name = "NY House"
	desc = "S.W.I.F.T. House (NY Event)"
	sector_flags = OVERMAP_SECTOR_KNOWN
	icon_state = "globe"
	color = "#268f2c"
	initial_generic_waypoints = list(
		"nav_ny_house_1"
	)
	var/list/lightmain

/obj/overmap/visitable/sector/ny_house/Initialize()
	..()

	lightmain = block(locate(world.maxx, world.maxy, max(map_z)), locate(1, 1, min(map_z)))
	for(var/atom/A as anything in lightmain)
		if(!istype(A.loc, /area/ny_house/outer) || A.density || istype(A.loc, /area/ny_house/inner))
			lightmain -= A
	update_daynight()

/obj/overmap/visitable/sector/ny_house/proc/update_daynight(light = 0.6, light_color_m = "#b068e0")
	for(var/turf/T as anything in lightmain)
		T.set_light(1, light, l_color = light_color_m)

/obj/overmap/visitable/sector/ny_house/New(nloc, max_x, max_y)
	name = "[generate_planet_name()], \a [name]"
	..()

/datum/map_template/ruin/away_site/ny_house
	name = "S.W.I.F.T. House (NY Event)"
	id = "awaysite_ny_house"
	spawn_cost = 20000000 // пожалуйста не надо пожалейте котят
	description = "S.W.I.F.T. House (NY Event)"
	prefix = "mods/_fd/_maps/new_year_house/maps/"
	suffixes = list("ny_house.dmm")
	area_usage_test_exempted_root_areas = list(/area/ny_house)
	apc_test_exempt_areas = list(
		/area/ny_house = NO_SCRUBBER|NO_VENT|NO_APC
	)
	shuttles_to_initialise = list(/datum/shuttle/autodock/multi/antag/train)

/area/ny_house
	name = "///"
	requires_power = FALSE

/area/ny_house/outer
	base_turf = /turf/simulated/floor/exoplanet/gravel
	ambience = list(
		'sound/effects/wind/wind_2_1.ogg',
		'sound/effects/wind/wind_2_2.ogg',
		'sound/effects/wind/wind_3_1.ogg',
		'sound/effects/wind/wind_4_1.ogg',
		'sound/effects/wind/wind_4_2.ogg',
		'sound/effects/wind/wind_5_1.ogg'
	)

/area/ny_house/outer/forest
	name = "Outside - SWIFT's residence"

/area/ny_house/outer/city
	name = "Outside - City"

/area/ny_house/outer/bus
	name = "Outside - BUS station(SWIFT's residence)"
	lighting_tone = "#dbc14a"

/area/ny_house/inner
	name = "///"

/area/ny_house/inner/train_station1
	name = "Inside - Tram Station(SWIFT's residence)"
	lighting_tone = "#a1d2d6"

/area/ny_house/inner/train_station2
	name = "Inside - Tram Station(City)"

/area/ny_house/inner/restroom
	name = "Inside - Toilet(City)"

/area/ny_house/inner/shaurma
	name = "Inside - Street-Food(City)"

/area/ny_house/inner/laundry
	name = "Inside - Laundry(City)"

/area/ny_house/inner/store
	name = "Inside - Road-Shop(City)"

/area/ny_house/inner/house1
	name = "Inside - Low-life House 1(City)"

/area/ny_house/inner/house2
	name = "Inside - Low-life House 2(City)"

/area/ny_house/inner/banya
	name = "Inside - Bathhouse(SWIFT's residence)"

/area/ny_house/inner/house
	name = "Inside - SWIFT's residence"

/area/ny_house/inner/house/second_floor

/area/ny_house/inner/house/second_floor/hall
	name = "Inside - Hall 2ND(SWIFT's residence)"

/area/ny_house/inner/house/second_floor/wbed
	name = "Inside - Workers Bedroom(SWIFT's residence)"

/area/ny_house/inner/house/second_floor/bedroom1
	name = "Inside - Bedroom 1(SWIFT's residence)"

/area/ny_house/inner/house/second_floor/bedroom2
	name = "Inside - Bedroom 2(SWIFT's residence)"

/area/ny_house/inner/house/second_floor/bedroom3
	name = "Inside - Bedroom 3(SWIFT's residence)"

/area/ny_house/inner/house/second_floor/bedroom4
	name = "Inside - Bedroom 4(SWIFT's residence)"

/area/ny_house/inner/house/second_floor/swiftcab
	name = "Inside - Office(SWIFT's residence)"

/area/ny_house/inner/house/main_floor

/area/ny_house/inner/house/main_floor/hall
	name = "Inside - Hall(SWIFT's residence)"
	lighting_tone = "#c38f3f"

/area/ny_house/inner/house/main_floor/lounge
	name = "Inside - Lounge(SWIFT's residence)"
	lighting_tone = "#800b0b"

/area/ny_house/inner/house/main_floor/bar
	name = "Inside - Bar(SWIFT's residence)"

/area/ny_house/inner/house/main_floor/restaurant
	name = "Inside - Restaurant(SWIFT's residence)"

/area/ny_house/inner/house/main_floor/bathroom
	name = "Inside - Bathroom(SWIFT's residence)"

/area/ny_house/inner/house/main_floor/storage
	name = "Inside - Storage(SWIFT's residence)"

/area/ny_house/inner/house/main_floor/cloakroom
	name = "Inside - Cloakroom(SWIFT's residence)"

/area/ny_house/inner/house/main_floor/kitchen
	name = "Inside - Kitchen(SWIFT's residence)"
