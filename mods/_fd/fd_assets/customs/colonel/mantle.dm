/obj/item/clothing/suit/storage/hooded/sithmantle
	name = "old tattered robe"
	desc = "A thick robe of black colour completely covering the body of the wearer. The same dark, barely visible patterns on the mantle do not identify the wearer, but are rather an element of the whole pattern."
	icon = 'mods/_fd/fd_assets/customs/colonel/mantle.dmi'
	icon_state = "item"
	item_state = "mantle_hidden"
	item_flags = ITEM_FLAG_WASHER_ALLOWED
	item_icons = list(
		slot_wear_suit_str = 'mods/_fd/fd_assets/customs/colonel/mantle.dmi'
		)

	hoodtype = /obj/item/clothing/head/sithmantlehood
	suittoggled = 0
	action_button_name = "Toggle Mantle Hood"

/obj/item/clothing/head/sithmantlehood
	name = "old tattered hood"
	icon = 'mods/_fd/fd_assets/customs/colonel/mantle.dmi'
	icon_state = "hood"
	item_icons = list(
		slot_head_str = 'mods/_fd/fd_assets/customs/colonel/mantle.dmi'
		)

/obj/item/clothing/suit/storage/hooded/sithmantle/equipped(mob/user, slot)
	. = ..()
	GLOB.mob_equipped_event.register(user, src, PROC_REF(hand_check))
	GLOB.mob_unequipped_event.register(user, src, PROC_REF(hand_check))

/obj/item/clothing/suit/storage/hooded/sithmantle/dropped(mob/user, slot)
	. = ..()
	GLOB.mob_equipped_event.unregister(user, src, PROC_REF(hand_check))
	GLOB.mob_unequipped_event.unregister(user, src, PROC_REF(hand_check))

/obj/item/clothing/suit/storage/hooded/sithmantle/proc/hand_check(mob/living/mob)
	if(mob.HandsEmpty())
		item_state = initial(item_state)
	else
		item_state = "mantle"

	update_clothing_icon()
