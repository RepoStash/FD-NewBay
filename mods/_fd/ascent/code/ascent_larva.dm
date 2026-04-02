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
	faction = "Ascent"
	natural_weapon = /obj/item/natural_weapon/dweller_tail
	ai_holder = /datum/ai_holder/simple_animal/melee/hit_and_run/ascent_larva

/datum/ai_holder/simple_animal/melee/hit_and_run/ascent_larva
	retaliate = TRUE
	hostile = FALSE
	cooperative = TRUE
	faction_friends = list("Ascent")
	mauling = TRUE
	vision_range = 4
	handle_corpse = TRUE
	can_breakthrough = TRUE

	wander = TRUE
	wander_when_pulled = TRUE

/obj/item/natural_weapon/dweller_tail
	name = "dweller's tail"
	attack_verb = list("swinged")
	force = 12
	edge = TRUE
	hitsound = 'sound/weapons/slash.ogg'
