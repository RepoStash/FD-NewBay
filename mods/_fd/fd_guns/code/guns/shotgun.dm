// FD

/obj/item/gun/projectile/shotgun/pump/scg
	name = "combat shotgun"
	desc = "A pump-action shotgun respected for its reliability and its capacity. However, not as fast firing as the Fleet's favorite."
	icon = 'mods/_fd/fd_guns/icons/weapon_cpss_icon.dmi'
	icon_state = "shotgun3"
	item_state = "shotgun3"
	wielded_item_state = "shotgun3"
	item_icons = list(
		slot_l_hand_str = 'mods/_fd/fd_guns/icons/onmob/weapon_cpss_character.dmi',
		slot_r_hand_str = 'mods/_fd/fd_guns/icons/onmob/weapon_cpss_character.dmi',
		slot_back_str = 'mods/_fd/fd_guns/icons/onmob/weapon_cpss_back.dmi'
		)
	origin_tech = list(TECH_COMBAT = 5, TECH_MATERIAL = 2)
	max_shells = 11
	ammo_type = /obj/item/ammo_casing/shotgun
	one_hand_penalty = 8

/obj/item/gun/projectile/automatic/shotgun/scg
	name = "assault shotgun"
	desc = "One of the Fleet's favorite guns. Fast shotgun without the need for painful reloading in combat. Insert, fire, forget."
	icon = 'mods/_fd/fd_guns/icons/weapon_cpss_icon.dmi'
	icon_state = "shotgun4"
	item_state = "shotgun4"
	wielded_item_state = "shotgun4"
	item_icons = list(
		slot_l_hand_str = 'mods/_fd/fd_guns/icons/onmob/weapon_cpss_character.dmi',
		slot_r_hand_str = 'mods/_fd/fd_guns/icons/onmob/weapon_cpss_character.dmi',
		slot_back_str = 'mods/_fd/fd_guns/icons/onmob/weapon_cpss_back.dmi'
		)
	load_method = MAGAZINE
	magazine_type = /obj/item/ammo_magazine/shotgun/scg
	allowed_magazines = /obj/item/ammo_magazine/shotgun/scg
	bulk = GUN_BULK_RIFLE
	accuracy = -1
	dispersion = list(1.5, 2.0, 2.5)
	firemodes = list(
			list(mode_name="3-round bursts", burst=3, fire_delay=null, move_delay=4, one_hand_penalty=3),
			list(mode_name = "full auto", can_autofire=1, fire_delay = 4, one_hand_penalty=3)
		)

/obj/item/gun/projectile/automatic/shotgun/scg/on_update_icon()
	..()
	if(ammo_magazine)
		icon_state = "shotgun4"
	else
		icon_state = "shotgun4-empty"

/obj/item/gun/projectile/automatic/shotgun/iccgn
	name = "shotgun"
	desc = "Volleygun (VG-23) not being able to boast of speed has the ability to clearly state the enemy with his shot in the face. Good ammunition with two firing modes and a unique cartridge."
	icon = 'mods/_fd/fd_guns/icons/weapon_gkk_icon.dmi'
	icon_state = "gshotgun2"
	item_state = "gshotgun2"
	wielded_item_state = "gshotgun2"
	item_icons = list(
		slot_l_hand_str = 'mods/_fd/fd_guns/icons/onmob/weapon_gkk_character.dmi',
		slot_r_hand_str = 'mods/_fd/fd_guns/icons/onmob/weapon_gkk_character.dmi',
		slot_back_str = 'mods/_fd/fd_guns/icons/onmob/weapon_gkk_back.dmi'
		)
	load_method = MAGAZINE
	magazine_type = /obj/item/ammo_magazine/shotgun/iccgn
	allowed_magazines = /obj/item/ammo_magazine/shotgun/iccgn
	bulk = GUN_BULK_RIFLE
	accuracy = 0
	one_hand_penalty=5
	dispersion = list(1.0, 1.3, 1.6)
	firemodes = list(
			list(mode_name = "semiauto", burst=1, fire_delay=0, move_delay=null),
			list(mode_name="2-beam bursts", burst=2, fire_delay=null, move_delay=2)
		)

/obj/item/gun/projectile/automatic/shotgun/iccgn/on_update_icon()
	..()
	if(ammo_magazine)
		icon_state = "gshotgun2"
	else
		icon_state = "gshotgun2-empty"
