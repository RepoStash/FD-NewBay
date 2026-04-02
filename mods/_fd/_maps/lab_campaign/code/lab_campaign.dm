/obj/overmap/visitable/sector/ascent_lab
	name = "jungle planet"
	desc = "Green planet with large Earth-like flora. There is SOMETHING here, which cannot be exactly identified by ship scanners..."
	sector_flags = OVERMAP_SECTOR_KNOWN
	icon_state = "globe"
	color = "#268f2c"
	initial_generic_waypoints = list(
		"nav_alab_1"
	)
	var/list/lightmain

/obj/overmap/visitable/sector/ascent_lab/Initialize()
	..()

	lightmain = block(locate(world.maxx, world.maxy, max(map_z)), locate(1, 1, min(map_z)))
	for(var/atom/A as anything in lightmain)
		if(!istype(A.loc, /area/ascent_lab/outer) || A.density || istype(A.loc, /area/ascent_lab/inner))
			lightmain -= A
	update_daynight()

/obj/overmap/visitable/sector/ascent_lab/proc/update_daynight(light = 0.7, light_color_m = "#ddf192")
	for(var/turf/T as anything in lightmain)
		T.set_light(1, light, l_color = light_color_m)

/obj/overmap/visitable/sector/ascent_lab/New(nloc, max_x, max_y)
	name = "[generate_planet_name()], \a [name]"
	..()

/datum/map_template/ruin/away_site/ascent_lab
	name = "Ascent Lab (Campaign)"
	id = "awaysite_alab"
	spawn_cost = 2
	description = "..."
	prefix = "mods/_fd/_maps/lab_campaign/maps/"
	suffixes = list("lab.dmm")
	area_usage_test_exempted_root_areas = list(/area/ascent_lab)
	apc_test_exempt_areas = list(
		/area/ascent_lab = NO_SCRUBBER|NO_VENT|NO_APC
	)

/obj/shuttle_landmark/nav_alab_1
	name = "Deep Forest LZ #1"
	landmark_tag = "nav_alab_1"
	base_area = /area/ascent_lab/outer

/area/ascent_lab
	name = "DEEP FOREST"
	requires_power = FALSE

/area/ascent_lab/outer

/area/ascent_lab/inner
	name = "CAVE LAB"

/mob/living/simple_animal/passive/snake_perci
	health = 9999
	maxHealth = 9999

	name = "blood-red snake"
	desc = "Totally not domesticated, a fearsome hunter."
	icon = 'mods/_fd/_maps/lab_campaign/snake.dmi'
	icon_state = "snake"
	item_state = "snake"
	icon_living = "snake"
	icon_dead = "snake_dead"
	speak_emote = list("hisses", "spits")
	turns_per_move = 5
	see_in_dark = 6
	response_help  = "pets"
	response_disarm = "gently pushes aside"
	response_harm   = "kicks"
	minbodytemp = 223		//Below -50 Degrees Celsius
	maxbodytemp = 323	//Above 50 Degrees Celsius
	holder_type = /obj/item/holder/snake_perci
	mob_size = MOB_SMALL
	pass_flags = PASS_FLAG_TABLE
	density = FALSE

	skin_material = MATERIAL_SKIN_LIZARD

	ai_holder = /datum/ai_holder/simple_animal/passive
	natural_weapon = /obj/item/natural_weapon/bite

/obj/item/holder/snake_perci
	name = "blood-red snake"
	desc = "Totally not domesticated, a fearsome hunter."
	icon = 'mods/_fd/_maps/lab_campaign/snake.dmi'
	slot_flags = SLOT_HEAD | SLOT_HOLSTER
	icon_state = "snake"

	origin_tech = null
	item_icons = list(
		slot_l_hand_str = 'mods/_fd/_maps/lab_campaign/snake_inhands.dmi',
		slot_r_hand_str = 'mods/_fd/_maps/lab_campaign/snake_inhands.dmi',
		slot_head_str = 'mods/_fd/_maps/lab_campaign/snake_worn.dmi',
		)
