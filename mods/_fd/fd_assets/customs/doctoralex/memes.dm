
/mob/living/simple_animal/fd/amelia/domain_shadow
	name = "???"
	desc = "???"
	icon = 'mods/_fd/fd_assets/customs/doctoralex/enigma_husks.dmi'
	icon_state = "hollow"
	maxHealth = 99999
	health = 99999

/mob/living/proc/unstable()
	src.overlays += image('mods/_fd/fd_assets/customs/doctoralex/insanity_statuses.dmi', "negative")
	src.psi.max_stamina = 150
	src.psi.stamina = src.psi.max_stamina
	src.psi.update(force = TRUE)
	src.make_jittery(600)

/mob/living/proc/stabilized()
	src.overlays -= image('mods/_fd/fd_assets/customs/doctoralex/insanity_statuses.dmi', "negative")
	src.psi.max_stamina = initial(src.psi.max_stamina)
	src.psi.stamina = src.psi.max_stamina
	src.psi.update(force = TRUE)
	src.apply_effect(5, EFFECT_WEAKEN)
	spawn(5 SECONDS)
		visible_message(SPAN_DANGER("[src] валится на пол от усталости..."))
		sleeping = 500

/mob/living/proc/domain_expansion()
	sleeping = 9999999
	for(var/mob/living/simple_animal/fd/amelia/domain_shadow/hollow_shadow in world)
		if(hollow_shadow.ckey != null)
			continue
		hollow_shadow.ckey = last_ckey
		visible_message(SPAN_DANGER("Зрачки [src] сужаются, начиная закатываться ко лбу. Обезжизненное тело падает на пол."))
		src.make_jittery(200)

/datum/sprite_accessory/marking/human/bandages
	name = "Bandages (Amelia)"
	icon_state = "bandages"
	icon = 'mods/_fd/fd_assets/customs/doctoralex/bandage.dmi'
	do_coloration = DO_COLORATION_AUTO
	body_parts = list(BP_HEAD, BP_R_ARM, BP_R_HAND, BP_L_ARM, BP_L_HAND)
	use_organ_tag = FALSE

/obj/item/clothing/under/amelia_skirt
	name = "victorian dress"
	desc = "An victorian-like long skirt."
	icon = 'mods/_fd/fd_assets/customs/doctoralex/clothing.dmi'
	item_icons = list(slot_w_uniform_str = 'mods/_fd/fd_assets/customs/doctoralex/clothing_mob.dmi')
	icon_state = "uniskirt"
	worn_state = "uniskirt"

/obj/item/clothing/under/amelia_combat
	name = "tactical turtleneck"
	desc = "An modern black turtleneck."
	icon = 'mods/_fd/fd_assets/customs/doctoralex/clothing.dmi'
	item_icons = list(slot_w_uniform_str = 'mods/_fd/fd_assets/customs/doctoralex/clothing_mob.dmi')
	icon_state = "black"
	worn_state = "black"

/obj/item/clothing/suit/storage/amelia_cape
	name = "dark cape"
	desc = "Slightly damaged black cape."
	icon = 'mods/_fd/fd_assets/customs/doctoralex/clothing.dmi'
	icon_state = "cloakalt"
	item_icons = list(
		slot_wear_suit_str = 'mods/_fd/fd_assets/customs/doctoralex/clothing_mob.dmi')

/obj/item/clothing/suit/storage/amelia_combatrig
	name = "dark stripes"
	desc = "Black stripes, helping to fixate broken parts of the body."
	icon = 'mods/_fd/fd_assets/customs/doctoralex/clothing.dmi'
	icon_state = "combatrig"
	item_icons = list(
		slot_wear_suit_str = 'mods/_fd/fd_assets/customs/doctoralex/clothing_mob.dmi')

/obj/item/clothing/suit/storage/amelia_overcoat
	name = "oversized shirt"
	desc = "White, slightly crumpled shirt, 100% not she's."
	icon = 'mods/_fd/fd_assets/customs/doctoralex/clothing.dmi'
	icon_state = "oversize_shirt"
	item_icons = list(
		slot_wear_suit_str = 'mods/_fd/fd_assets/customs/doctoralex/clothing_mob.dmi')

/obj/item/gun/energy/amelia_bfg
	name = "gigantic laser cannon"
	desc = "An Frankenstein of a weapon, impossible to normally fire without 3 meters recoil. It has some pretty fearsome design, lacking any consisting due to used details being old parts of various deconstructed guns and tech. It has a name, scratched on a side - Calculator."
	icon_state = "Bspace_cleaner_deployed"
	icon = 'mods/_fd/fd_assets/customs/doctoralex/bspace.dmi'
	item_icons = list(
		slot_r_hand_str = 'mods/_fd/fd_assets/customs/doctoralex/bspace.dmi',
		slot_l_hand_str = 'mods/_fd/fd_assets/customs/doctoralex/bspace.dmi'
		)
	item_state = "right_doble"
	slot_flags = SLOT_BACK
	one_hand_penalty = 6 //large and heavy
	w_class = ITEM_SIZE_HUGE
	projectile_type = /obj/item/projectile/beam/pulse/bfg
	cell_type = /obj/item/cell/super
	charge_cost = 1000
	max_shots = 2
	accuracy = 2
	fire_delay = 60 SECONDS
	wielded_item_state = "right_doble"

/obj/item/projectile/beam/pulse/bfg
	name = "heavy laser"
	icon_state = "heavylaser"
	fire_sound = 'sound/weapons/lasercannonfire.ogg'
	damage = 100 //badmins be badmins I don't give a fuck
	armor_penetration = 100
	damage_falloff_list = list(
		list(6, 0.99),
		list(9, 0.98),
		list(11, 0.97),
	)

	muzzle_type = /obj/projectile/laser/heavy/muzzle
	tracer_type = /obj/projectile/laser/heavy/tracer
	impact_type = /obj/projectile/laser/heavy/impact

/obj/item/projectile/beam/pulse/bfg/on_hit(atom/target, blocked = 0)
	if(isturf(target))
		explosion(get_turf(target), 3, EX_ACT_HEAVY)
		target.ex_act(EX_ACT_DEVASTATING)
	if(ismob(target))
		var/mob/A = target
		A.gib()
	..()
