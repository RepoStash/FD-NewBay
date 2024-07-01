// SCG

/obj/item/gun/projectile/heavysniper/scg
	name = "multitask sniper rifle"
	desc = "Special Applications Rifle, system 99. The sniper rifle was made to give the sniper team more firepower and versatility. Unfortunately, it holds only two cartridges for greater convenience.."
	icon = 'mods/_fd/fd_guns/icons/weapon_cpss_icon.dmi'
	icon_state = "sniperrifle1"
	item_state = "sniperrifle1"
	item_icons = list(
		slot_l_hand_str = 'mods/_fd/fd_guns/icons/onmob/weapon_cpss_character.dmi',
		slot_r_hand_str = 'mods/_fd/fd_guns/icons/onmob/weapon_cpss_character.dmi',
		slot_back_str = 'mods/_fd/fd_guns/icons/onmob/weapon_cpss_back.dmi'
		)
	w_class = ITEM_SIZE_HUGE
	force = 10
	slot_flags = SLOT_BACK
	caliber = CALIBER_ANTIMATERIAL
	screen_shake = 2 //extra kickback
	handle_casings = HOLD_CASINGS
	load_method = SINGLE_CASING
	max_shells = 2
	ammo_type = /obj/item/ammo_casing/scg/shell
	one_hand_penalty = 6
	accuracy = -2
	bulk = 8
	scoped_accuracy = 8
	scope_zoom = 2
	bolt_open = 0
	wielded_item_state = "sniperrifle1"
	load_sound = 'sound/weapons/guns/interaction/rifle_load.ogg'
	fire_delay = 12

/obj/item/gun/projectile/sniper/scg/marksman
	name = "designated marksman rifle"
	desc = "This rifle favors mid- to long-ranged combat, offering impressive stopping power over a long distance."
	icon = 'mods/_fd/fd_guns/icons/weapon_cpss_icon.dmi'
	icon_state = "sniperrifle2"
	item_state = "sniperrifle2"
	item_icons = list(
		slot_l_hand_str = 'mods/_fd/fd_guns/icons/onmob/weapon_cpss_character.dmi',
		slot_r_hand_str = 'mods/_fd/fd_guns/icons/onmob/weapon_cpss_character.dmi',
		slot_back_str = 'mods/_fd/fd_guns/icons/onmob/weapon_cpss_back.dmi'
		)
	w_class = ITEM_SIZE_HUGE
	force = 10
	caliber = CALIBER_RIFLE_MILITARY
	origin_tech = list(TECH_COMBAT = 2)
	slot_flags = SLOT_BACK
	load_method = MAGAZINE
	magazine_type = /obj/item/ammo_magazine/sniper/scg
	allowed_magazines = /obj/item/ammo_magazine/sniper/scg
	accuracy = -1
	fire_delay = 6
	one_hand_penalty = 8
	scoped_accuracy = 4
	scope_zoom = 1.5
	bulk = GUN_BULK_RIFLE + 1
	wielded_item_state = "sniperrifle2"
	mag_insert_sound = 'sound/weapons/guns/interaction/ltrifle_magin.ogg'

/obj/item/gun/projectile/sniper/marksman/on_update_icon()
	..()
	if(ammo_magazine)
		icon_state = "sniperrifle2"
	else
		icon_state = "sniperrifle2-empty"

/obj/item/gun/projectile/sniper/iccgn
	name = "heavy sniper rifle"
	desc = "Vordan Sniper Rifle (VSR-34), designed to defeat exoskeletons and light armoured vehicles by a sniper team. Can use Sol Gov sniper rifle ammunition"
	icon = 'mods/_fd/fd_guns/icons/weapon_gkk_icon.dmi'
	icon_state = "gsniperrifle4"
	item_state = "gsniperrifle4"
	item_icons = list(
		slot_l_hand_str = 'mods/_fd/fd_guns/icons/onmob/weapon_gkk_character.dmi',
		slot_r_hand_str = 'mods/_fd/fd_guns/icons/onmob/weapon_gkk_character.dmi',
		slot_back_str = 'mods/_fd/fd_guns/icons/onmob/weapon_gkk_back.dmi'
		)
	w_class = ITEM_SIZE_HUGE
	force = 10
	slot_flags = SLOT_BACK
	caliber = CALIBER_ANTIMATERIAL
	screen_shake = 2 //extra kickback
	handle_casings = EJECT_CASINGS
	load_method = MAGAZINE
	magazine_type = /obj/item/ammo_magazine/sniper/iccgn
	allowed_magazines = /obj/item/ammo_magazine/sniper/iccgn
	one_hand_penalty = 6
	accuracy = -2
	bulk = 10
	scoped_accuracy = 8
	scope_zoom = 2.5
	wielded_item_state = "gsniperrifle4"
	mag_insert_sound = 'sound/weapons/guns/interaction/ltrifle_magin.ogg'
	fire_delay = 12

/obj/item/gun/projectile/sniper/iccgn/on_update_icon()
	..()
	if(ammo_magazine)
		icon_state = "gsniperrifle4"
	else
		icon_state = "gsniperrifle4-empty"


/obj/item/gun/projectile/sniper/iccgn/dmr
	name = "designated marksman rifle"
	desc = "Designated Marksman Rifle-41 (DMR-41) The Marksman rifle was made to give more versatility and strength to fire groups. The multi-tasking nature of such a rifle allows for a variety of missions up to and including breaching airlocks and blast doors"
	icon = 'mods/_fd/fd_guns/icons/weapon_gkk_icon.dmi'
	icon_state = "gsniperrifle3"
	item_state = "gsniperrifle3"
	item_icons = list(
		slot_l_hand_str = 'mods/_fd/fd_guns/icons/onmob/weapon_gkk_character.dmi',
		slot_r_hand_str = 'mods/_fd/fd_guns/icons/onmob/weapon_gkk_character.dmi',
		slot_back_str = 'mods/_fd/fd_guns/icons/onmob/weapon_gkk_back.dmi'
		)
	w_class = ITEM_SIZE_HUGE
	force = 10
	caliber = CALIBER_RIFLE_MILITARY
	origin_tech = list(TECH_COMBAT = 2)
	slot_flags = SLOT_BACK
	load_method = SINGLE_CASING|SPEEDLOADER
	handle_casings = EJECT_CASINGS
	magazine_type = /obj/item/ammo_magazine/speedloader/dmr
	allowed_magazines = /obj/item/ammo_magazine/speedloader/dmr
	accuracy = -1
	fire_delay = 6
	max_shells = 16
	one_hand_penalty = 8
	scoped_accuracy = 4
	scope_zoom = 1.5
	bulk = GUN_BULK_RIFLE + 1
	wielded_item_state = "gsniperrifle3"
	mag_insert_sound = 'sound/weapons/guns/interaction/ltrifle_magin.ogg'
