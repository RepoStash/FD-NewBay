/turf/simulated/floor/exoplanet/water/shallow/grim
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/water.dmi'
	icon_state = "water_medium"

/mob/living/proc/update_water_overlay()
	if(istype(loc, /turf/simulated/floor/exoplanet/water/shallow/grim))
		if(!get_filter("underwater"))
			add_filter("underwater", 1, list("type" = "alpha", "icon" = icon('mods/_fd/_maps/small_exoplanet_1/icons/watermask.dmi')))
	else
		remove_filter("underwater")

/turf/simulated/floor/exoplanet/water/shallow/grim/Entered(mob/living/L)
	..()
	if(istype(L))
		L.update_water_overlay()

/turf/simulated/floor/exoplanet/water/shallow/grim/Exited(mob/living/L)
	..()
	if(istype(L))
		L.update_water_overlay()

/turf/simulated/open/water
	name = "deep water"
	desc = "It's so dark there that you can't even see the bottom."

/obj/structure/fake_water
	name = "deep water"
	desc = "It's so dark there that you can't even see the bottom."
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/water.dmi'
	icon_state = "water_deep"
	alpha = 200

/turf/simulated/floor/exoplanet/ocean
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/dirt.dmi'
	icon_state = "shale0"
	name = "sea floor"
	desc = "Silty."

/turf/simulated/floor/exoplanet/ocean/New()
	..()
	icon_state = "shale[rand(0, 4)]"

/turf/simulated/floor/exoplanet/windswept
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/dirt.dmi'
	icon_state = "shale_windswept"
	name = "sea floor"
	desc = "Silty."

/turf/simulated/floor/exoplanet/grim_seaport
	name = "mossy bricks"
	desc = "An very old foundation, covered in thick green moss"
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/dirt.dmi'
	icon_state = "stone_old2"

/turf/simulated/floor/exoplanet/grim_tile
	name = "tile"
	desc = "An rusted plate, separated into 4 pieces."
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/turf_floor_grim.dmi'
	icon_state = "pattern_kitchen_alt"

/turf/simulated/floor/exoplanet/grim_tile/New()
	..()
	icon_state = "pattern_kitchen_alt_[rand(1, 4)]"

/turf/simulated/floor/exoplanet/grim_asphalt1
	name = "broken asphalt"
	desc = "An cracked old road."
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/asphalt.dmi'
	icon_state = "road1"

/turf/simulated/floor/exoplanet/grim_asphalt1/New()
	..()
	icon_state = "road[rand(1, 4)]"

/turf/simulated/floor/exoplanet/brick_road
	name = "old bricky road"
	desc = "An cracked and molded road."
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/turf_floor_grim.dmi'
	icon_state = "stone"

/turf/simulated/floor/exoplanet/brick_road/New()
	..()
	icon_state = "stone_[rand(1, 10)]"

/turf/simulated/floor/exoplanet/grim_asphalt2
	name = "old bricky road"
	desc = "An cracked and molded road."
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/turf_floor_grim.dmi'
	icon_state = "concrete_asphalt"

/turf/simulated/floor/exoplanet/grim_asphalt2/New()
	..()
	icon_state = "concrete_asphalt_[rand(1, 4)]"

/turf/simulated/floor/exoplanet/rocky_road
	name = "rocky green road"
	desc = "An cracked road."
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/turf_floor_grim.dmi'
	icon_state = "stone_green"

/turf/simulated/floor/exoplanet/slab
	name = "old stone slab"
	desc = "An cracked pavement."
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/turf_floor_grim.dmi'
	icon_state = "stone_slab"

/turf/simulated/floor/exoplanet/slab/New()
	..()
	icon_state = "stone_slab_[rand(1, 4)]"

/turf/simulated/floor/exoplanet/concrete_pavement
	name = "concrete pavement"
	desc = "An old grayish route."
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/turf_floor_grim.dmi'
	icon_state = "concrete"

/turf/simulated/floor/exoplanet/concrete_pavement/New()
	..()
	icon_state = "concrete_[rand(1, 4)]"

/turf/simulated/floor/exoplanet/gravel
	name = "gravel"
	desc = "Just a gravel, nothing special."
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/turf_floor_grim.dmi'
	icon_state = "gravel"

/turf/simulated/floor/exoplanet/gravel/New()
	..()
	icon_state = "gravel_[rand(1, 4)]"

/turf/simulated/floor/exoplanet/grim_dirt
	name = "dirt"
	desc = "Just a dirt, nothing special."
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/turf_floor_grim.dmi'
	icon_state = "dirt"

/*/turf/simulated/floor/exoplanet/grim_dirt/New()
	..()
	icon_state = "dirt_[rand(1, 16)]"*/

/turf/simulated/floor/exoplanet/wet_stone
	name = "wet stone pile"
	desc = "Just some stones, nothing special."
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/turf_floor_grim.dmi'
	icon_state = "stone_n"

/turf/simulated/floor/exoplanet/wet_stone/New()
	..()
	icon_state = "stone_n_[rand(1, 4)]"

/turf/simulated/floor/exoplanet/wet_stone2
	name = "wet stone pile"
	desc = "Just some stones, nothing special."
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/turf_floor_grim.dmi'
	icon_state = "stone_nalt"

/turf/simulated/floor/exoplanet/wet_stone2/New()
	..()
	icon_state = "stone_nalt_[rand(1, 4)]"

/turf/simulated/floor/exoplanet/grim_metal
	name = "metal plate"
	desc = "Just an metal plate, nothing special."
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/turf_floor_grim.dmi'
	icon_state = "full_train"

/turf/simulated/floor/exoplanet/grim_metal/New()
	..()
	icon_state = "full_train_[rand(1, 8)]"

/turf/simulated/floor/exoplanet/grim_metal2
	name = "rusted metal floor"
	desc = "Just an old, rusted metal floor, nothing special."
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/turf_floor_grim.dmi'
	icon_state = "tile_old"

/turf/simulated/floor/exoplanet/grim_metal2/New()
	..()
	icon_state = "tile_old_[rand(1, 4)]"

/turf/simulated/floor/exoplanet/grim_metal3
	name = "rusted catwalk"
	desc = "Just an old, rusted metal floor, nothing special."
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/turf_floor_grim.dmi'
	icon_state = "full_dark_alt"

/turf/simulated/floor/exoplanet/grim_concrete_tile
	name = "molded concrete"
	desc = "Just an old, broken concrete plate."
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/turf_floor_grim.dmi'
	icon_state = "concrete_tile"

/turf/simulated/floor/exoplanet/grim_concrete_tile/New()
	..()
	icon_state = "concrete_tile_[rand(1, 4)]"

/turf/simulated/floor/exoplanet/grim_concrete_tile2
	name = "molded concrete"
	desc = "Just an old, broken concrete plate."
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/turf_floor_grim.dmi'
	icon_state = "concrete_tile_y"

/turf/simulated/floor/exoplanet/grim_concrete_tile2/New()
	..()
	icon_state = "concrete_tile_y_[rand(1, 4)]"

/turf/simulated/floor/exoplanet/grim_concrete_tile3
	name = "molded concrete"
	desc = "Just an old, broken concrete plate."
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/turf_floor_grim.dmi'
	icon_state = "concrete_tile_w"

/turf/simulated/floor/exoplanet/grim_concrete_tile3/New()
	..()
	icon_state = "concrete_tile_w_[rand(1, 4)]"

/turf/simulated/floor/exoplanet/grim_concrete_tile4
	name = "molded concrete"
	desc = "Just an old, broken concrete plate."
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/turf_floor_grim.dmi'
	icon_state = "concrete_tile_d"

/turf/simulated/floor/exoplanet/grim_concrete_tile4/New()
	..()
	icon_state = "concrete_tile_d_[rand(1, 4)]"

/turf/simulated/floor/exoplanet/grim_wood_log
	name = "wooden floor"
	desc = "Just an old floor plate made of logs, nothing special."
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/turf_floor_grim.dmi'
	icon_state = "wood_log"

/turf/simulated/floor/exoplanet/grim_wood_good
	name = "wooden floor"
	desc = "A pretty new wooden planks, nothing special."
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/turf_floor_grim.dmi'
	icon_state = "wood_alt"

/turf/simulated/floor/exoplanet/grim_wood_good2
	name = "wooden floor"
	desc = "A pretty new wooden planks, nothing special."
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/turf_floor_grim.dmi'
	icon_state = "wood_tile"

/turf/simulated/floor/exoplanet/grim_wood
	name = "molded wooden floor"
	desc = "Just an old, molded red wood, nothing special."
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/turf_floor_grim.dmi'
	icon_state = "wood_red"

/turf/simulated/floor/exoplanet/grim_wood/New()
	..()
	icon_state = "wood_red_[rand(1, 8)]"

/turf/simulated/floor/exoplanet/grim_wood2
	name = "molded wooden floor"
	desc = "Just an old, molded ebony wood, nothing special."
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/turf_floor_grim.dmi'
	icon_state = "wood"

/turf/simulated/floor/exoplanet/grim_wood2/New()
	..()
	icon_state = "wood_[rand(1, 9)]"

/turf/simulated/floor/exoplanet/grim_wood3
	name = "molded wooden floor"
	desc = "Just an old, molded white wood, nothing special."
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/turf_floor_grim.dmi'
	icon_state = "wood_white"

/turf/simulated/floor/exoplanet/grim_wood3/New()
	..()
	icon_state = "wood_white_[rand(1, 8)]"

/turf/simulated/floor/exoplanet/grim_wood_scorched
	name = "scorched wooden floor"
	desc = "Just an old, almost burnt wooden floor, nothing special."
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/turf_floor_grim.dmi'
	icon_state = "wood_burned"

/turf/simulated/floor/exoplanet/grim_wood_scorched/New()
	..()
	icon_state = "wood_burned_[rand(1, 8)]"

/turf/simulated/floor/exoplanet/grim_ceramic
	name = "ceramic pavement"
	desc = "Just an old, molded bricky pavement."
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/turf_floor_grim.dmi'
	icon_state = "ceramic_grey"

/turf/simulated/floor/exoplanet/grim_ceramic/New()
	..()
	icon_state = "ceramic_grey_[rand(1, 4)]"

/turf/simulated/floor/exoplanet/grim_ceramic_indoor
	name = "ceramic tile"
	desc = "Just an old, molded bricky plate."
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/turf_floor_grim.dmi'
	icon_state = "ceramic_cross"

/turf/simulated/floor/exoplanet/grim_ceramic_indoor2
	name = "ceramic tile"
	desc = "Just an old, molded bricky plate."
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/turf_floor_grim.dmi'
	icon_state = "ceramic_blue"

/turf/simulated/floor/exoplanet/grim_ceramic_indoor2/New()
	..()
	icon_state = "ceramic_blue_[rand(1, 4)]"

/turf/simulated/floor/exoplanet/grim_ceramic_indoor3
	name = "dark ceramic tile"
	desc = "Just an old, molded bricky pattern."
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/turf_floor_grim.dmi'
	icon_state = "ceramic_green"

/turf/simulated/floor/exoplanet/grim_ceramic_indoor3/New()
	..()
	icon_state = "ceramic_green_[rand(1, 6)]"

/turf/simulated/floor/exoplanet/grim_ceramic_indoor4
	name = "white ceramic tile"
	desc = "Just an old, molded bricky pattern."
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/turf_floor_grim.dmi'
	icon_state = "ceramic_white"

/turf/simulated/floor/exoplanet/grim_ceramic_indoor4/New()
	..()
	icon_state = "ceramic_white_[rand(1, 8)]"

//forgive me god for the sins i'm about to commit

/obj/structure/fd/grim_walls
	desc = "Just a wall, nothing special"
	density = TRUE
	anchored = TRUE
	opacity = TRUE

/obj/structure/fd/grim_walls/brick
	icon_state = "boss_wall-0"
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/boss_wall.dmi'

	name = "brick wall"

/obj/structure/fd/grim_walls/wood
	icon_state = "wood_wall-0"
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/wood_wall.dmi'

	name = "wooden wall"
	color = "#2e221a"

/obj/structure/fd/grim_walls/metal
	icon_state = "rusty_wall-0"
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/rusty_wall.dmi'

	name = "rusted metal wall"

/obj/structure/fd/grim_walls/stone
	icon_state = "iron_wall-0"
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/iron_wall.dmi'

	name = "stone wall"
	color = "#5f5f5f"

/obj/structure/fd/grim_walls/rock
	icon_state = "jungle_wall-0"
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/jungle_wall.dmi'

	pixel_x = -4
	pixel_y = -4
	color = "#363636"

	name = "rock wall"
