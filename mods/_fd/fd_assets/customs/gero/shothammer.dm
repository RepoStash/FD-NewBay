/obj/item/gun/projectile/shotgun/doublebarrel/hammer
	name = "Siege Shotgun"
	desc = "Shotgun created on the anvil of war from everything that was, parts from different weapons, non-native gas supply system, and the most magnificent thing is the sledgehammer tip on the stock. You can tell from one look at the weapon that it's not easy to use."
	icon = 'mods/_fd/fd_assets/customs/gero/shothammer.dmi'
	icon_state = "shotham"
	item_state = "shotham"
	item_icons = list(
		slot_l_hand_str = 'mods/_fd/fd_assets/customs/gero/lefthand.dmi',
		slot_r_hand_str = 'mods/_fd/fd_assets/customs/gero/righthand.dmi'
	)
	wielded_item_state = "shotham"
	//SPEEDLOADER because rapid unloading.
	//In principle someone could make a speedloader for it, so it makes sense.
	load_method = SINGLE_CASING|SPEEDLOADER
	handle_casings = CYCLE_CASINGS
	max_shells = 2
	w_class = ITEM_SIZE_HUGE
	force = 45
	obj_flags =  OBJ_FLAG_CONDUCTIBLE
	caliber = CALIBER_SHOTGUN
	origin_tech = list(TECH_COMBAT = 3, TECH_MATERIAL = 1)
	ammo_type = /obj/item/ammo_casing/shotgun/pellet
	one_hand_penalty = 16
	wielded_item_state = "Shotham"

	burst_delay = 0
	firemodes = list(
		list(mode_name="fire one barrel at a time", burst=1),
		list(mode_name="fire both barrels at once", burst=2),
		)

/obj/item/gun/projectile/shotgun/doublebarrel/hammer/unload_ammo(user, allow_dump)
	..(user, allow_dump=1)
