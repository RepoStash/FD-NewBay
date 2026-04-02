
/obj/item/clothing/head/helmet/space/void/battlewizards
	name = "military green voidsuit helmet"
	desc = "An advanced helmet designed for work in special operations."
	icon = 'mods/_fd/fd_assets/icons/obj/clothing_head.dmi'
	item_icons = list(
		slot_head_str = 'mods/_fd/fd_assets/icons/onmob/clothing_head.dmi',
		slot_l_hand_str = 'icons/mob/onmob/items/lefthand_hats.dmi',
		slot_r_hand_str = 'icons/mob/onmob/items/righthand_hats.dmi',
		)
	icon_state = "rig0-battlemags"
	item_state = "rig0-battlemags"
	armor = list(
		melee = ARMOR_MELEE_RESISTANT,
		bullet = ARMOR_BALLISTIC_RESISTANT,
		laser = ARMOR_LASER_MAJOR,
		energy = ARMOR_ENERGY_MINOR,
		bomb = ARMOR_BOMB_PADDED,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SMALL
		)
	siemens_coefficient = 0.3
	species_restricted = list(SPECIES_HUMAN,SPECIES_IPC)
	light_overlay = "explorer_light"

/obj/item/clothing/head/helmet/space/void/battlewizards/Initialize()
	. = ..()
	sprite_sheets[SPECIES_TAJARA] = 'mods/_fd/fd_assets/icons/onmob/clothing_suit_cat.dmi'
	sprite_sheets_obj[SPECIES_TAJARA] = 'mods/_fd/fd_assets/icons/obj/clothing_head.dmi'

/obj/item/clothing/head/helmet/space/void/battlewizards/captain
	desc = "An advanced helmet designed for work in special operations. This one have more unique style."
	icon_state = "rig0-battlemagscaptain"
	item_state = "rig0-battlemagscaptain"

/obj/item/clothing/suit/space/void/battlewizards
	icon_state = "rig-battlemags"
	name = "military green voidsuit"
	desc = "An advanced suit that protects against injuries during special operations."
	item_state_slots = list(
		slot_l_hand_str = "syndicate-green-dark",
		slot_r_hand_str = "syndicate-green-dark",
	)
	icon = 'mods/_fd/fd_assets/icons/obj/clothing_suit.dmi'
	item_icons = list(
		slot_wear_suit_str = 'mods/_fd/fd_assets/icons/onmob/clothing_suit.dmi',
		slot_l_hand_str = 'icons/mob/onmob/items/lefthand_spacesuits.dmi',
		slot_r_hand_str = 'icons/mob/onmob/items/righthand_spacesuits.dmi',
		)
	w_class = ITEM_SIZE_LARGE //normally voidsuits are bulky but the merc voidsuit is 'advanced' or something
	armor = list(
		melee = ARMOR_MELEE_RESISTANT,
		bullet = ARMOR_BALLISTIC_RESISTANT,
		laser = ARMOR_LASER_MAJOR,
		energy = ARMOR_ENERGY_MINOR,
		bomb = ARMOR_BOMB_PADDED,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SMALL
		)
	allowed = list(/obj/item/device/flashlight,/obj/item/tank,/obj/item/device/suit_cooling_unit,/obj/item/gun,/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/melee/baton,/obj/item/melee/energy/sword,/obj/item/handcuffs)
	siemens_coefficient = 0.3
	species_restricted = list(SPECIES_HUMAN,SPECIES_IPC)

/obj/item/clothing/suit/space/void/battlewizards/Initialize()
	. = ..()
	slowdown_per_slot[slot_wear_suit] = 1
	sprite_sheets[SPECIES_TAJARA] = 'mods/_fd/fd_assets/icons/onmob/clothing_suit_cat.dmi'
	sprite_sheets_obj[SPECIES_TAJARA] = 'mods/_fd/fd_assets/icons/obj/clothing_suit.dmi'

/obj/item/clothing/suit/space/void/battlewizards/captain
	desc = "An advanced suit that protects against injuries during special operations. This one have cool jacket."
	icon_state = "rig-battlemagscaptain"

/obj/item/clothing/suit/space/void/battlewizards/prepared
	helmet = /obj/item/clothing/head/helmet/space/void/battlewizards
	boots = /obj/item/clothing/shoes/magboots
	tank = /obj/item/tank/oxygen

/obj/item/clothing/suit/space/void/battlewizards/captain/prepared
	helmet = /obj/item/clothing/head/helmet/space/void/battlewizards/captain
	boots = /obj/item/clothing/shoes/magboots
	tank = /obj/item/tank/oxygen

/obj/machinery/suit_storage_unit/battlewizards
	name = "Military Voidsuit Storage Unit"
	suit = /obj/item/clothing/suit/space/void/battlewizards
	helmet = /obj/item/clothing/head/helmet/space/void/battlewizards
	boots = /obj/item/clothing/shoes/magboots
	tank = /obj/item/tank/oxygen
	mask = /obj/item/clothing/mask/breath
	islocked = FALSE

/obj/machinery/suit_storage_unit/battlewizards/captain
	name = "Military Sergeant Voidsuit Storage Unit"
	suit = /obj/item/clothing/suit/space/void/battlewizards/captain
	helmet = /obj/item/clothing/head/helmet/space/void/battlewizards/captain
	boots = /obj/item/clothing/shoes/magboots
	tank = /obj/item/tank/oxygen
	mask = /obj/item/clothing/mask/breath
	islocked = FALSE
