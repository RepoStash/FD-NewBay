// SCG

/obj/item/gun/projectile/pistol/scg
	name = "magnum pistol"
	desc = "A heavy pistol, popularly called the 'Head Breaker' for its high firepower. Unfortunately, this firepower had to be sacrificed at the expense of speed and ammunition.."
	icon = 'mods/_fd/fd_guns/icons/magnum_cpps.dmi'
	icon_state = "pistol7"
	item_state = "pistol7"
	item_icons = list(
		slot_l_hand_str = 'mods/_fd/fd_guns/icons/onmob/weapon_cpss_character.dmi',
		slot_r_hand_str = 'mods/_fd/fd_guns/icons/onmob/weapon_cpss_character.dmi'
		)
	magazine_type = /obj/item/ammo_magazine/pistol/scg
	allowed_magazines = /obj/item/ammo_magazine/pistol/scg
	caliber = CALIBER_PISTOL_MAGNUM
	force = 9
	fire_delay = 12
	bulk = 4
	accuracy = 1
	one_hand_penalty = 4

/obj/item/gun/projectile/pistol/scg/on_update_icon()
	..()
	if(!ammo_magazine)
		icon_state = "[initial(icon_state)]-e"

	if(!LAZYLEN(ammo_magazine.stored_ammo))
		AddOverlays(image(icon, "ammo_bad"))
	else if(LAZYLEN(ammo_magazine.stored_ammo) <= 0.5 * ammo_magazine.max_ammo)
		AddOverlays(image(icon, "ammo_warn"))
		return
	else
		AddOverlays(image(icon, "ammo_ok"))

/obj/item/gun/projectile/pistol/scg/assasin
	name = "silenced pistol"
	desc = "A gun made specifically for SolGov Special Operations units. It has a built-in silencer."
	icon = 'mods/_fd/fd_guns/icons/weapon_cpss_icon.dmi'
	icon_state = "pistol6"
	item_state = "pistol6"
	item_icons = list(
		slot_l_hand_str = 'mods/_fd/fd_guns/icons/onmob/weapon_cpss_character.dmi',
		slot_r_hand_str = 'mods/_fd/fd_guns/icons/onmob/weapon_cpss_character.dmi'
		)
	magazine_type = /obj/item/ammo_magazine/pistol/assasin
	allowed_magazines = /obj/item/ammo_magazine/pistol/assasin
	caliber = CALIBER_PISTOL_FLECHETTE
	force = 9
	silenced = 1
	fire_delay = 4
	accuracy = 2
	one_hand_penalty = 3

/obj/item/gun/projectile/pistol/scg/assasin/on_update_icon()
	..()
	if(ammo_magazine)
		icon_state = "[initial(icon_state)]"
	else
		icon_state = "[initial(icon_state)]-e"

// ICCGN
/obj/item/gun/projectile/pistol/iccgn
	name = "standart pistol"
	desc = "Kishevatov Standard Pistol (KSP) made by Kishevatov's designer for quick elimination of soldiers with medium armor."
	icon = 'mods/_fd/fd_guns/icons/pistol_iccgn.dmi'
	icon_state = "gpistol9"
	item_state = "gpistol9"
	item_icons = list(
		slot_l_hand_str = 'mods/_fd/fd_guns/icons/onmob/weapon_gkk_character.dmi',
		slot_r_hand_str = 'mods/_fd/fd_guns/icons/onmob/weapon_gkk_character.dmi'
		)
	magazine_type = /obj/item/ammo_magazine/pistol/iccgn
	allowed_magazines = /obj/item/ammo_magazine/pistol/iccgn
	caliber = CALIBER_PISTOL_MAGNUM
	force = 10
	accuracy = 1
	fire_delay = 6
	move_delay = 2
	one_hand_penalty = 4
	ammo_indicator = TRUE

/obj/item/gun/projectile/pistol/iccgn/on_update_icon()
	..()
	if(!ammo_magazine)
		icon_state = "[initial(icon_state)]-e"

	if(!LAZYLEN(ammo_magazine.stored_ammo))
		AddOverlays(image(icon, "ammo_bad"))
	else if(LAZYLEN(ammo_magazine.stored_ammo) <= 0.5 * ammo_magazine.max_ammo)
		AddOverlays(image(icon, "ammo_warn"))
		return
	else
		AddOverlays(image(icon, "ammo_ok"))

/obj/item/gun/projectile/automatic/pistol/iccgn
	name = "automatic pistol"
	desc = "Boarding Automatic Pistol - 34 (BAP-34) developed by Heltek Corporation for boarding teams."
	icon = 'mods/_fd/fd_guns/icons/weapon_gkk_icon.dmi'
	icon_state = "gpistol8"
	item_state = "gpistol8"
	item_icons = list(
		slot_l_hand_str = 'mods/_fd/fd_guns/icons/onmob/weapon_gkk_character.dmi',
		slot_r_hand_str = 'mods/_fd/fd_guns/icons/onmob/weapon_gkk_character.dmi'
		)
	magazine_type = /obj/item/ammo_magazine/pistol/automatic
	allowed_magazines = /obj/item/ammo_magazine/pistol/automatic
	caliber = CALIBER_PISTOL
	force = 7
	accuracy = 0
	can_autofire=1
	fire_delay=2
	one_hand_penalty=4
	firemodes = list(
		list(mode_name = "full auto", can_autofire=1, fire_delay=2, one_hand_penalty=4, dispersion=list(1.0, 1.4, 1.8))
	)

/obj/item/gun/projectile/automatic/pistol/iccgn/on_update_icon()
	..()
	if(ammo_magazine)
		icon_state = "[initial(icon_state)]"
	else
		icon_state = "[initial(icon_state)]-e"
