/datum/map_template/ruin/exoplanet/build
	name = "Ruined Bulding 1"
	id = "build1"
	description = "Just small ruins."
	suffixes = list("small_ruins/build_ruin.dmm")
	spawn_cost = 0.4
	template_flags = TEMPLATE_FLAG_NO_RUINS | TEMPLATE_FLAG_CLEAR_CONTENTS// | TEMPLATE_FLAG_ALLOW_DUPLICATES
	ruin_tags = RUIN_WRECK

/datum/map_template/ruin/exoplanet/build/build2
	name = "Ruined Garage 2"
	id = "build2"
	spawn_cost = 0.3
	suffixes = list("small_ruins/build_ruin2.dmm")

/datum/map_template/ruin/exoplanet/build/build3
	name = "Ruined Temple 3"
	id = "build3"
	suffixes = list("small_ruins/build_ruin3.dmm")

/datum/map_template/ruin/exoplanet/build/build4
	name = "Ruined Voxship 4"
	id = "build4"
	spawn_cost = 1
	suffixes = list("small_ruins/build_ruin4.dmm")

/datum/map_template/ruin/exoplanet/build/build5
	name = "Ruined Rad Wastes 5"
	id = "build5"
	spawn_cost = 0.2
	suffixes = list("small_ruins/build_ruin5.dmm")

/datum/map_template/ruin/exoplanet/build/build6
	name = "Ruined Ascent Shuttle 6"
	id = "build6"
	spawn_cost = 1
	suffixes = list("small_ruins/build_ruin6.dmm")
	ruin_tags = RUIN_ALIEN

/datum/map_template/ruin/exoplanet/build/build7
	name = "Ruined Monolothic Ring 7"
	id = "build7"
	suffixes = list("small_ruins/build_ruin7.dmm")
	ruin_tags = RUIN_ALIEN

/datum/map_template/ruin/exoplanet/build/build8
	name = "Long-distance Communication Module 8"
	id = "build8"
	spawn_cost = 1
	suffixes = list("small_ruins/build_ruin8.dmm")
	ruin_tags = RUIN_HUMAN

/datum/map_template/ruin/exoplanet/build/build9
	name = "Mech Combat Arena 9"
	id = "build9"
	spawn_cost = 1
	suffixes = list("small_ruins/build_ruin9.dmm")
	ruin_tags = RUIN_HUMAN | RUIN_WRECK

/datum/map_template/ruin/exoplanet/build/build10
	name = "Miner Quota Post 10"
	id = "build10"
	spawn_cost = 1
	suffixes = list("small_ruins/build_ruin10.dmm")
	ruin_tags = RUIN_HUMAN

/datum/map_template/ruin/exoplanet/build/build11
	name = "Salvage Drone 11"
	id = "build11"
	spawn_cost = 1
	suffixes = list("small_ruins/build_ruin11.dmm")
	ruin_tags = RUIN_HUMAN | RUIN_WRECK

/datum/map_template/ruin/exoplanet/build/build12
	name = "The WALL 12"
	id = "build12"
	spawn_cost = 0.1
	suffixes = list("small_ruins/build_ruin12.dmm")
	ruin_tags = RUIN_ALIEN

/datum/map_template/ruin/exoplanet/build/build13
	name = "Bazar 13"
	id = "build13"
	spawn_cost = 0.3
	suffixes = list("small_ruins/build_ruin13.dmm")
	ruin_tags = RUIN_HUMAN | RUIN_HABITAT

/datum/map_template/ruin/exoplanet/build/build14
	name = "Old Road 14"
	id = "build14"
	spawn_cost = 0.1
	suffixes = list("small_ruins/build_ruin14.dmm")
	ruin_tags = RUIN_HUMAN | RUIN_HABITAT

/datum/map_template/ruin/exoplanet/build/build15
	name = "Crashed Pods 15"
	id = "build15"
	spawn_cost = 0.3
	suffixes = list("small_ruins/build_ruin15.dmm")
	ruin_tags = RUIN_HUMAN | RUIN_WRECK

/datum/map_template/ruin/exoplanet/build/build16
	name = "Ruined Railgun 16"
	id = "build16"
	spawn_cost = 0.3
	suffixes = list("small_ruins/build_ruin16.dmm")
	ruin_tags = RUIN_ALIEN

/datum/map_template/ruin/exoplanet/build/build17
	name = "Ancient Library 17"
	id = "build17"
	spawn_cost = 0.4
	suffixes = list("small_ruins/build_ruin17.dmm")
	ruin_tags = RUIN_HUMAN | RUIN_HABITAT

/datum/map_template/ruin/exoplanet/build/build18
	name = "Ruined launching shaft 18"
	id = "build18"
	spawn_cost = 0.3
	suffixes = list("small_ruins/build_ruin18.dmm")
	ruin_tags = RUIN_HUMAN | RUIN_HABITAT

/datum/map_template/ruin/exoplanet/build/build19
	name = "Ruined Research 19"
	id = "build19"
	suffixes = list("small_ruins/build_ruin19.dmm")
	ruin_tags = RUIN_HUMAN | RUIN_HABITAT




//      A R E A S     //

/area/map_template/build
	name = "\improper Building"
	icon_state = "hallC1"
	icon = 'icons/turf/areas.dmi'
/area/map_template/build/build2
	name = "\improper Garage"
/area/map_template/build/build3
	name = "\improper Sandstone Temple"
/area/map_template/build/build4
	name = "\improper VX-421-M"
/area/map_template/build/build5
	name = "\improper Radioactive Wastes"
/area/map_template/build/build6
	name = "\improper ASC-792-F"
/area/map_template/build/build7
	name = "\improper Monolithic Ring"
/area/map_template/build/build8
	name = "Long-distance Communication Module"
/area/map_template/build/build9
	name = "Mech Combat Arena"
/area/map_template/build/build10
	name = "Salvage Drone 11"
/area/map_template/build/build13
	name = "Abandoned Store"
/area/map_template/build/build16
	name = "Ruined Railgun"
/area/map_template/build/build17
	name = "Ancient Library"
	icon_state = "18"
/area/map_template/build/build19
	name = "Destroyed Research"
// Other Code????    //

/obj/structure/mob_spawner
	name = "hive"
	desc = "A structure with many holes in it.."
	icon = 'icons/effects/effects.dmi'
	icon_state = "hive"
	anchored = TRUE
	var/number_to_spawn = 5
	var/spent = FALSE
	var/detect_range = 5
	var/thing_to_spawn = /mob/living/simple_animal/hostile/leech

/obj/structure/mob_spawner/Initialize()
	. = ..()
	START_PROCESSING(SSobj, src)

/obj/structure/mob_spawner/Process()
	if(!spent && (locate(/mob/living/carbon/human) in orange(detect_range, src)))
		burst()

/obj/structure/mob_spawner/proc/burst()
	for(var/i in 1 to number_to_spawn)
		new thing_to_spawn(get_turf(src))
	visible_message(SPAN_MFAUNA("A swarm of animals burst out from \the [src]!"))
	spent = TRUE
	STOP_PROCESSING(SSobj, src)

/obj/landmark/corpse/betrayed_engineer
	name = "Peter Napp"
	corpse_outfits = list(/singleton/hierarchy/outfit/betrayed_engineer)
	spawn_flags = ~CORPSE_SPAWNER_RANDOM_NAME

/singleton/hierarchy/outfit/betrayed_engineer
	name = "Betrayed Engineer"
	uniform = /obj/item/clothing/under/solgov/utility/expeditionary/engineering
	suit = /obj/item/clothing/suit/storage/solgov/service/expeditionary/engineering
	shoes = /obj/item/clothing/shoes/dutyboots
	head = /obj/item/clothing/head/solgov/service/expedition
	pda_type = /obj/item/modular_computer/pda/engineering

// PAPERS??? //

/obj/item/paper/rad_wastes
	name = "Last Note"
	language = LANGUAGE_HUMAN_EURO
	age = 1
	info = "I am so sorry for what I have done, but how can they punish people with such methods?<br>How could an officer even allow this?<br>I hope that justice will prevail and Alex Peterson will be punished for his actions.<br>Former Engineer, Expl. Peter Napp."
