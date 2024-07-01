// SCG

// Automatic Rifles. High Speed, mid cal.

/obj/item/gun/projectile/automatic/scg // Я сам не ебу, но оно было помечено как автомат - Максимум.
	name = "assault rifle"
	desc = "A standard assault rifle in service with the SCG Fleet. Appreciated for its good velocity and not inferior caliber with blunt-nosed projectiles designed to be fired without risk of damaging thin bulkheads."
	icon = 'mods/_fd/fd_guns/icons/weapon_cpss_icon.dmi'
	icon_state = "automat4"
	item_state = "automat4"
	item_icons = list(
		slot_l_hand_str = 'mods/_fd/fd_guns/icons/onmob/weapon_cpss_character.dmi',
		slot_r_hand_str = 'mods/_fd/fd_guns/icons/onmob/weapon_cpss_character.dmi',
		slot_back_str = 'mods/_fd/fd_guns/icons/onmob/weapon_cpss_back.dmi'
		)
	w_class = ITEM_SIZE_HUGE
	force = 10
	caliber = CALIBER_RIFLE
	slot_flags = SLOT_BACK
	load_method = MAGAZINE
	magazine_type = /obj/item/ammo_magazine/rifle/fleet
	allowed_magazines = /obj/item/ammo_magazine/rifle/fleet
	one_hand_penalty = 6
	accuracy = 1
	bulk = GUN_BULK_RIFLE + 1
	wielded_item_state = "automat4"
	mag_insert_sound = 'sound/weapons/guns/interaction/ltrifle_magin.ogg'
	mag_remove_sound = 'sound/weapons/guns/interaction/ltrifle_magout.ogg'
	//Assault rifle, burst fire degrades quicker than SMG, worse one-handing penalty, slightly increased move delay
	firemodes = list(
		list(mode_name="3-round bursts", burst=3, fire_delay=null, burst_delay=2, move_delay=2, burst_accuracy=list(1, 1, 0, -1),	dispersion=list(1.2, 1.6, 2.2)),
		list(mode_name="full auto", burst=1, can_autofire=1, fire_delay=2, burst_accuracy=list(1, 0, -1), dispersion=list(1.4, 2.1, 2.7))
	)

/obj/item/gun/projectile/automatic/scg/on_update_icon()
	..()
	if(ammo_magazine)
		icon_state = "automat4"
	else
		icon_state = "automat4-empty"

/obj/item/gun/projectile/automatic/scg/army
	name = "battle rifle"
	desc = "The heavy rifle of the Sol Gov army, beloved by them for its high armor penetration rates. However, it's unlikely to fit comfortably on a bulletproof vest."
	icon = 'mods/_fd/fd_guns/icons/weapon_cpss_icon.dmi'
	icon_state = "automat3"
	item_state = "automat3"
	item_icons = list(
		slot_l_hand_str = 'mods/_fd/fd_guns/icons/onmob/weapon_cpss_character.dmi',
		slot_r_hand_str = 'mods/_fd/fd_guns/icons/onmob/weapon_cpss_character.dmi',
		slot_back_str = 'mods/_fd/fd_guns/icons/onmob/weapon_cpss_back.dmi'
		)
	w_class = ITEM_SIZE_HUGE
	force = 10
	caliber = CALIBER_RIFLE_MILITARY
	slot_flags = SLOT_BACK
	load_method = MAGAZINE
	magazine_type = /obj/item/ammo_magazine/rifle/army
	allowed_magazines = /obj/item/ammo_magazine/rifle/army
	one_hand_penalty = 6
	accuracy = 0
	accuracy_power = 10
	bulk = GUN_BULK_RIFLE + 3
	wielded_item_state = "automat3"
	mag_insert_sound = 'sound/weapons/guns/interaction/ltrifle_magin.ogg'
	mag_remove_sound = 'sound/weapons/guns/interaction/ltrifle_magout.ogg'

	firemodes = list(
		list(mode_name="semiauto", burst=1, fire_delay=5, move_delay=3, one_hand_penalty=6, dispersion=(0.5), accuracy=1),
		list(mode_name="3-round bursts", burst=3, burst_delay=2, fire_delay=10, move_delay=5, one_hand_penalty = 10, accuracy=0, burst_accuracy=list(-1, 0, -1), dispersion=list(0.5, 0.8, 1.2)),
		)

/obj/item/gun/projectile/automatic/scg/army/on_update_icon()
	..()
	if(ammo_magazine)
		icon_state = "automat3"
	else
		icon_state = "automat3-empty"

//      SMGS

/obj/item/gun/projectile/automatic/scg/smg
	name = "submachine gun"
	desc = "A submachine gun valued for its compactness, cheapness and lightness. However, it is unlikely to shoot you in the head.."
	icon = 'mods/_fd/fd_guns/icons/weapon_cpss_icon.dmi'
	icon_state = "smg5"
	item_state = "smg5"
	item_icons = list(
		slot_l_hand_str = 'mods/_fd/fd_guns/icons/onmob/weapon_cpss_character.dmi',
		slot_r_hand_str = 'mods/_fd/fd_guns/icons/onmob/weapon_cpss_character.dmi',
		slot_back_str = 'mods/_fd/fd_guns/icons/onmob/weapon_cpss_back.dmi'
		)
	w_class = ITEM_SIZE_NORMAL
	caliber = CALIBER_PISTOL
	slot_flags = SLOT_BELT
	wielded_item_state = "smg5"
	load_method = MAGAZINE
	magazine_type = /obj/item/ammo_magazine/smg/scg
	allowed_magazines = /obj/item/ammo_magazine/smg/scg
	accuracy = 1
	one_hand_penalty = 3

	firemodes = list(
		list(mode_name="fuller auto",       burst=1, can_autofire=1, fire_delay=1,    move_delay=null, one_hand_penalty=5, burst_accuracy=list(1,0,0,-1,-1,-1,-3,-3), dispersion=list(0, 0.5, 1.0, 1.5, 2, 3)),
		list(mode_name="3-round bursts", burst=3, fire_delay=null, move_delay=2,	burst_accuracy=list(1,1, 0, 0),	dispersion=list(0.6, 0.8, 1.0)),
		list(mode_name="5-round bursts",   burst=5, fire_delay=null, move_delay=4, 	burst_accuracy=list(1,1, 0, 0,0, 0,-1,-1), dispersion=list(0.6, 0.8, 1.0, 1.0, 1.2)),
		)

/obj/item/gun/projectile/automatic/scg/smg/on_update_icon()
	..()
	if(ammo_magazine)
		icon_state = "smg5"
	else
		icon_state = "smg5-empty"

/obj/item/gun/projectile/automatic/scg/smg/special
	name = "special ops smg"
	desc = "A new model of submachine gun, for short and medium ranges. Made to order by SolGov Special Operations units"
	icon_state = "smg6"
	item_state = "smg6"
	wielded_item_state = "smg6"
	item_icons = list(
		slot_l_hand_str = 'mods/_fd/fd_guns/icons/onmob/weapon_cpss_character.dmi',
		slot_r_hand_str = 'mods/_fd/fd_guns/icons/onmob/weapon_cpss_character.dmi',
		slot_back_str = 'mods/_fd/fd_guns/icons/onmob/weapon_cpss_back.dmi'
		)
	icon = 'mods/_fd/fd_guns/icons/bullupsmg_cpps.dmi'
	w_class = ITEM_SIZE_NORMAL
	force = 6
	caliber = CALIBER_PISTOL
	slot_flags = SLOT_BELT|SLOT_BACK
	magazine_type = /obj/item/ammo_magazine/smg/special/scg
	allowed_magazines = /obj/item/ammo_magazine/smg/special/scg
	fire_sound = 'sound/weapons/gunshot/gunshot_smg.ogg'
	auto_eject = 1
	auto_eject_sound = 'sound/weapons/smg_empty_alarm.ogg'
	bulk = 0
	accuracy = 2
	one_hand_penalty = 4
	firemodes = list(
		list(mode_name = "semiauto", burst=1, fire_delay=0, move_delay=null, dispersion=(0.5), burst_accuracy=2),
		list(mode_name = "3-round bursts", burst=3, fire_delay=null, move_delay=2, burst_accuracy=list(1,1, 0, 0), dispersion=list(0.4, 0.6, 0.8)),
		list(mode_name = "full auto", burst=1, can_autofire = 1, fire_delay = 4, move_delay=2, dispersion=list(0.6, 0.8, 1.0), burst_accuracy=list(1, 0, 0, -1))
		)

/obj/item/gun/projectile/automatic/scg/smg/special/on_update_icon()
	..()
	if(ammo_magazine)
		icon_state = "smg6"
	if(!ammo_magazine)
		icon_state = "[initial(icon_state)]-empty"
	if(!LAZYLEN(ammo_magazine.stored_ammo))
		AddOverlays(image(icon, "ammo_bad"))
	else if(LAZYLEN(ammo_magazine.stored_ammo) <= 0.5 * ammo_magazine.max_ammo)
		AddOverlays(image(icon, "ammo_warn"))
		return
	else
		AddOverlays(image(icon, "ammo_ok"))

// ICСGN

/obj/item/gun/projectile/automatic/iccgn
	name = "automatic rifle"
	desc = "Heldan Assault Rifle (HAR), designed for fast, close and medium range assault combat."
	icon = 'mods/_fd/fd_guns/icons/weapon_gkk_icon.dmi'
	icon_state = "gautomatic2"
	item_state = "gautomatic2"
	item_icons = list(
		slot_l_hand_str = 'mods/_fd/fd_guns/icons/onmob/weapon_gkk_character.dmi',
		slot_r_hand_str = 'mods/_fd/fd_guns/icons/onmob/weapon_gkk_character.dmi',
		slot_back_str = 'mods/_fd/fd_guns/icons/onmob/weapon_gkk_back.dmi'
		)
	slot_flags = SLOT_BACK
	load_method = MAGAZINE
	magazine_type = /obj/item/ammo_magazine/rifle/iccgn
	allowed_magazines = /obj/item/ammo_magazine/rifle/iccgn
	accuracy = 1
	one_hand_penalty = 4
	caliber = CALIBER_RIFLE
	bulk = GUN_BULK_RIFLE + 1
	wielded_item_state = "gautomatic2"
	firemodes = list(
		list(mode_name = "semiauto", burst=1, fire_delay=0, move_delay=null, dispersion=list(0.6, 0.8, 1.0)),
		list(mode_name = "full auto", can_autofire=1, fire_delay = 4, one_hand_penalty=8, dispersion=list(1.0, 1.4, 1.8))
		)

/obj/item/gun/projectile/automatic/iccgn/on_update_icon()
	..()
	if(ammo_magazine)
		icon_state = "[item_state]"
	else
		icon_state = "[item_state]-empty"

/obj/item/gun/projectile/automatic/iccgn/precise
	name = "battle rifle"
	desc = "Drogan's Marksman Rifle - 213 (DMR - 213),  designed for long range warfare as opposed to the not-so-accurate Heldan Automatic Rifle.  "
	icon = 'mods/_fd/fd_guns/icons/precise_gkk.dmi'
	icon_state = "gautomatic1"
	item_state = "gautomatic1"
	item_icons = list(
		slot_l_hand_str = 'mods/_fd/fd_guns/icons/onmob/weapon_gkk_character.dmi',
		slot_r_hand_str = 'mods/_fd/fd_guns/icons/onmob/weapon_gkk_character.dmi',
		slot_back_str = 'mods/_fd/fd_guns/icons/onmob/weapon_gkk_back.dmi'
		)
	slot_flags = SLOT_BACK
	load_method = MAGAZINE
	caliber = CALIBER_RIFLE_MILITARY
	magazine_type = /obj/item/ammo_magazine/rifle/precise
	allowed_magazines = /obj/item/ammo_magazine/rifle/precise
	accuracy = 3
	one_hand_penalty = 7
	bulk = GUN_BULK_RIFLE + 2
	wielded_item_state = "gautomatic1"
	firemodes = list(
			list(mode_name="3-round bursts", burst=3, fire_delay=3, move_delay=6, accuracy=1, dispersion=list(0.8, 1.0, 1.2)),
			list(mode_name = "semiauto", burst=1, fire_delay=5, move_delay=4, accuracy= 3)
		)

/obj/item/gun/projectile/automatic/iccgn/precise/on_update_icon()
	..()
	if(ammo_magazine)
		icon_state = "gautomatic1"
	if(!ammo_magazine)
		icon_state = "[initial(icon_state)]-empty"
	if(!LAZYLEN(ammo_magazine.stored_ammo))
		AddOverlays(image(icon, "ammo_bad"))
	else if(LAZYLEN(ammo_magazine.stored_ammo) <= 0.5 * ammo_magazine.max_ammo)
		AddOverlays(image(icon, "ammo_warn"))
		return
	else
		AddOverlays(image(icon, "ammo_ok"))

/obj/item/gun/projectile/automatic/iccgn/bolter
	name = "heavy battle rifle"
	desc = "Heavy battle rifle Barracuda-31, designed specifically for APCs, but converted to a more mobile state. Designed to destroy heavily armoured soldiers and lightly armoured vehicles, mechs. Just... run, if you see it. "
	icon = 'mods/_fd/fd_guns/icons/weapon_gkk_icon.dmi'
	icon_state = "gsmg3"
	item_state = "gsmg3"
	item_icons = list(
		slot_l_hand_str = 'mods/_fd/fd_guns/icons/onmob/weapon_gkk_character.dmi',
		slot_r_hand_str = 'mods/_fd/fd_guns/icons/onmob/weapon_gkk_character.dmi',
		slot_back_str = 'mods/_fd/fd_guns/icons/onmob/weapon_gkk_back.dmi'
		)
	screen_shake = 1
	slot_flags = SLOT_BACK
	load_method = MAGAZINE
	w_class = ITEM_SIZE_HUGE
	caliber = CALIBER_BOLTER
	magazine_type = /obj/item/ammo_magazine/rifle/bolter
	allowed_magazines = /obj/item/ammo_magazine/rifle/bolter
	accuracy = 0
	one_hand_penalty = 10
	screen_shake = 3
	bulk = GUN_BULK_RIFLE + 5
	wielded_item_state = "gsmg3"
	firemodes = list(
			list(mode_name="3-round bursts", burst=3, fire_delay=4, move_delay=6, accuracy=-3, dispersion=list(3.0, 4.0, 5.0)),
			list(mode_name = "semiauto", burst=1, fire_delay=2, move_delay=4, accuracy=0, dispersion=list(2.0, 3.0))
		)

#ifdef MODPACK_RESOMI
// Bullying of Swift
/obj/item/gun/projectile/automatic/iccgn/bolter/Fire(atom/target, mob/living/user, clickparams, pointblank=0, reflex=0)
	if(user.is_species(SPECIES_RESOMI))
		if(alert(user, "[src] too big for you and can LITERALLY KILL YOU, if you will shoot from it!",, "Nevermind", "*krieg suicide noices",) == "Nevermind")
			// https://i.redd.it/g3jch6re92v31.png
			return

	..()

	if(!src || !user || safety())
		to_chat(user, SPAN_NOTICE("You can't do that now"))
		return
	if(user.is_species(SPECIES_RESOMI))
		to_chat(user, SPAN_DANGER("The recoil of the [src] is way too much for you, Resomi"))
		var/recoil_dir = GLOB.reverse_dir[user.dir]
		user.adjustBruteLoss(60)
		user.Weaken(4)
		log_and_message_admins("is fucked by [src]'s obliterating recoil. Stupid xenos...")
		user.throw_at(get_step(user,recoil_dir), 5, 10)
	else
		if(!user.skill_check(SKILL_WEAPONS, SKILL_BASELINE))
			to_chat(user, SPAN_DANGER("Recoil so hurts..."))
			user.adjustBruteLoss(15)

#endif

/obj/item/gun/projectile/automatic/iccgn/smg
	name = "submachine gun"
	desc = "Saudov's submachine gun (SSG-12) made for pilots and crew of armoured vehicles. The small size combines well with rapid suppressive fire.  "
	icon_state = "gsmg4"
	item_state = "gsmg4"
	item_icons = list(
		slot_l_hand_str = 'mods/_fd/fd_guns/icons/onmob/weapon_gkk_character.dmi',
		slot_r_hand_str = 'mods/_fd/fd_guns/icons/onmob/weapon_gkk_character.dmi',
		slot_back_str = 'mods/_fd/fd_guns/icons/onmob/weapon_gkk_back.dmi'
		)
	w_class = ITEM_SIZE_NORMAL
	caliber = CALIBER_PISTOL
	slot_flags = SLOT_BELT
	load_method = MAGAZINE
	magazine_type = /obj/item/ammo_magazine/smg/iccgn
	allowed_magazines = /obj/item/ammo_magazine/smg/iccgn
	one_hand_penalty = 4
	accuracy = 1
	wielded_item_state = "gsmg4"
	firemodes = list(
		list(mode_name = "semiauto", burst=1, fire_delay=0, move_delay=null, dispersion=(1.0)),
		list(mode_name = "3-round bursts", burst=3, fire_delay=null, move_delay=2, burst_accuracy=list(1,1, 0, 0), dispersion=list(1.4, 1.6, 1.8)),
		list(mode_name = "full auto", burst=1, can_autofire = 1, fire_delay = 4, move_delay=2, dispersion=list(1.6, 1.8, 2.0), burst_accuracy=list(1, 0, 0, -1))
		)
