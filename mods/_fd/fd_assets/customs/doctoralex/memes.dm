
/mob/living/simple_animal/fd/amelia/domain_shadow
	name = "???"
	desc = "???"
	icon = 'mods/_fd/fd_assets/customs/doctoralex/enigma_husks.dmi'
	icon_state = "hollow"
	maxHealth = 99999
	health = 99999

/mob/living/proc/domain_expansion()
	sleeping = 9999999
	var/mob/hollow_shadow = locate(/mob/living/simple_animal/fd/amelia/domain_shadow) in world
	hollow_shadow.ckey = last_ckey
	visible_message(SPAN_DANGER("Зрачки [src] сужаются, начиная закатываться ко лбу. Обезжизненное тело падает на пол."))

//god i hope this will work
/datum/sprite_accessory/marking/human/bandages
	body_parts = list(BP_HEAD)
	draw_target = MARKING_TARGET_HEAD
	draw_order = 1
	do_coloration = DO_COLORATION_AUTO
	icon_state = "bandages"
	icon = 'mods/_fd/fd_assets/customs/doctoralex/bandage.dmi'
	name = "Bandages (Amelia)"
