// SCG

/obj/item/gun/energy/laser/lasgun
	name = "Lasgun"
	desc = "Lasgun series D-99 designed specifically for the Fleet. Known for its devastating power, almost unique for lasers."
	icon = 'mods/_fd/fd_guns/icons/weapon_cpss_icon.dmi'
	icon_state = "lascar"
	item_state = "lascar"
	item_icons = list(
		slot_l_hand_str = 'mods/_fd/fd_guns/icons/onmob/lasgun_lefthand.dmi',
		slot_r_hand_str = 'mods/_fd/fd_guns/icons/onmob/weapon_cpss_character.dmi',
		slot_back_str = 'mods/_fd/fd_guns/icons/onmob/weapon_cpss_back.dmi'
		)
	slot_flags = SLOT_BACK
	w_class = ITEM_SIZE_HUGE
	accuracy = 3
	force = 15
	screen_shake = 0
	one_hand_penalty = 4
	battery_changable = TRUE
	cell_type = /obj/item/cell/guncell/lasgun
	bulk = GUN_BULK_RIFLE
	projectile_type = /obj/item/projectile/bullet/lasbolt/lasgun
	wielded_item_state = "laser-wielded"
	firemodes = list(
			list(mode_name="3-round bursts", burst=3, fire_delay=2, move_delay=4, accuracy=2, charge_cost=200, projectile_type = /obj/item/projectile/bullet/lasbolt),
			list(mode_name = "semiauto", burst=1, fire_delay=2, move_delay=2, accuracy=3, charge_cost=200, projectile_type = /obj/item/projectile/bullet/lasbolt),
			list(mode_name = "overcharge", burst=1, fire_delay=4, move_delay=6, accuracy=2, charge_cost=800, projectile_type = /obj/item/projectile/bullet/lasbolt/overcharge)
		)

/obj/item/gun/energy/laser/lasgun/on_update_icon()
	..()
	if(!power_supply)
		icon_state = "lascar-e"

/obj/item/gun/energy/laser/laspistol
	name = "Laspistol"
	desc = "Unlike its big brother, the Laspistol series D-99 was made for Fleet Officers and as an auxiliary weapon in case the shit hit the fan.."
	icon = 'mods/_fd/fd_guns/icons/weapon_cpss_icon.dmi'
	icon_state = "laspistolciv"
	item_state = "smallgunkill"
	wielded_item_state = "smallgunkill"
	slot_flags = SLOT_BELT | SLOT_HOLSTER
	w_class = ITEM_SIZE_NORMAL
	accuracy = 3
	force = 10
	screen_shake = 0
	one_hand_penalty = 4
	battery_changable = TRUE
	cell_type = /obj/item/cell/guncell/lasgun
	bulk = GUN_BULK_RIFLE - 4
	projectile_type = /obj/item/projectile/bullet/lasbolt
	firemodes = list(
			list(mode_name = "semiauto", burst=1, fire_delay=2, move_delay=null, charge_cost=100, accuracy=3, projectile_type = /obj/item/projectile/bullet/lasbolt),
			list(mode_name = "overcharge", burst=1, fire_delay=2, move_delay=3, accuracy=2, charge_cost=500, projectile_type = /obj/item/projectile/bullet/lasbolt/lasgun)
		)

/obj/item/gun/energy/laser/laspistol/on_update_icon()
	..()
	if(!power_supply)
		icon_state = "laspistolciv-e"

// Cells

/obj/item/cell/guncell/lasgun
	name = "Lasgun power pack"
	desc = "Unified power pack for D-99 series Lasguns and Laspistols. According to Fleet Veterans, this battery can be used as explosives. Don't try"
	icon = 'mods/_fd/fd_guns/icons/power_las.dmi'
	icon_state = "lgpp"
	w_class = ITEM_SIZE_SMALL
	charge = 4000
	maxcharge = 4000
