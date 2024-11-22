/mob/living/simple_animal/hostile/hive_alien/ascent_larva
	name = "alien larva"
	desc = "Crystallized small creature which looks like a smaller verison of an ascent."
	icon = 'mods/_fd/_maps/dead_sea/icons/dead_sea.dmi'
	icon_state = "dweller"
	icon_living = "dweller"
	icon_dead = "dweller_dead"
	light_power = 1
	light_range = 2
	bleed_colour = "#660066"
	light_color = COLOR_PINK
	move_to_delay = 1
	speed = 2
	health = 50
	maxHealth = 50
	can_escape = TRUE
	harm_intent_damage = 12
	natural_weapon = /obj/item/natural_weapon/dweller_tail
	ai_holder = /datum/ai_holder/simple_animal/melee/ascent_larva
	var/attack_mode = FALSE
	var/hostile = FALSE
	var/retaliate = TRUE
	var/transformation_delay_min = 3
	var/transformation_delay_max = 8

/datum/ai_holder/simple_animal/melee/ascent_larva/lose_target()
	. = ..()
	var/mob/living/simple_animal/hostile/hive_alien/ascent_larva/D = holder
	if(D.attack_mode && !find_target()) //If we don't immediately find another target, switch to movement mode
		D.mode_movement()

	return ..()

/datum/ai_holder/simple_animal/melee/ascent_larva/lose_target()
	. = ..()
	var/mob/living/simple_animal/hostile/hive_alien/ascent_larva/D = holder
	if(D.attack_mode && !find_target()) //If we don't immediately find another target, switch to movement mode
		D.mode_movement()

	return ..()

/datum/ai_holder/simple_animal/melee/ascent_larva/engage_target()
	. = ..()
	var/mob/living/simple_animal/hostile/hive_alien/ascent_larva/D = holder
	if(!D.attack_mode)
		return D.mode_attack()

	flick("ascent_larva_attacking", src)

	return ..()
/obj/item/natural_weapon/dweller_tail
	name = "dweller's tail"
	attack_verb = list("swinged")
	force = 12
	edge = TRUE
	hitsound = 'sound/weapons/slash.ogg'

/mob/living/simple_animal/hostile/hive_alien/ascent_larva/proc/mode_movement() //Slightly broken, but it's alien and unpredictable so w/e
	set waitfor = 0
	icon_state = "dweller"
	flick("ascent_larva_movemode", src)
	sleep(rand(transformation_delay_min, transformation_delay_max))
	anchored = FALSE
	speed = 1
	move_to_delay = 8
	. = FALSE

	//Immediately find a target so that we're not useless for 1 Life() tick!
	ai_holder.find_target()

/mob/living/simple_animal/hostile/hive_alien/ascent_larva/proc/mode_attack()
	set waitfor = 0
	icon_state = "dweller"
	flick("ascent_larva_attackmode", src)
	sleep(rand(transformation_delay_min, transformation_delay_max))
	anchored = TRUE
	speed = 0
	attack_mode = TRUE
	walk(src, 0)
