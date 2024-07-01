// Procs

/obj/proc/eject_item(obj/item/I, mob/living/user)
	if(!I || !user.IsAdvancedToolUser())
		return FALSE
	user.put_in_hands(I)
	playsound(src.loc, 'sound/weapons/guns/interaction/hpistol_magin.ogg', 75, 1)
	user.visible_message(
		"[user] removes [I] from [src].",
		SPAN_NOTICE("You remove [I] from [src].")
	)
	return TRUE

/obj/proc/insert_item(obj/item/I, mob/living/user)
	if(!I || !user.unEquip(I))
		return FALSE
	I.forceMove(src)
	playsound(src.loc, 'sound/weapons/guns/interaction/hpistol_magout.ogg', 75, 1)
	to_chat(user, SPAN_NOTICE("You insert [I] into [src]."))
	return TRUE


// Guncells
/obj/item/cell/guncell
	w_class = ITEM_SIZE_SMALL
	icon = 'mods/_fd/fd_guns/icons/power.dmi'
	name = "Medium weapon battery"
	desc = "A medium battery for energy guns. Rated for 300Wh."
	charge = 300 // base 15 shots
	maxcharge = 300
	icon_state = "b_2"

/obj/item/cell/guncell/on_update_icon()

	var/new_overlay_state = null
	switch(percent())
		if(70 to 100)
			new_overlay_state = "b_70+"
		if(35 to 69)
			new_overlay_state = "b_35+"
		if(0.05 to 34)
			new_overlay_state = "b_0+"

	if(new_overlay_state != overlay_state)
		overlay_state = new_overlay_state
		CutOverlays()
		if(overlay_state)
			AddOverlays(image(icon, overlay_state))

/obj/item/cell/guncell/small
	name = "Small weapon battery"
	desc = "A small battery for energy guns. Rated for 200Wh."
	charge = 200 // base 10 shots
	maxcharge = 200
	icon_state = "b_1"

/obj/item/cell/guncell/large
	name = "Large weapon battery"
	desc = "A large battery for energy guns. Rated for 400Wh."
	charge = 400 // base 20 shots
	maxcharge = 400
	icon_state = "b_3"

/obj/item/cell/guncell/megalarge
	name = "Very-Large weapon battery"
	desc = "A very large battery for energy guns. Rated for 500Wh."
	charge = 500 // base 25 shots
	maxcharge = 500
	icon_state = "b_4"

/obj/item/cell/guncell/huge
	name = "Huge weapon battery"
	desc = "A huge battery for energy guns. Rated for 600Wh."
	charge = 600 // base 30 shots
	maxcharge = 600
	icon_state = "b_5"

// Override

/obj/item/gun/energy
	var/battery_changable = FALSE
//	var/battery_type = cell_type

/obj/item/gun/energy/use_tool(obj/item/W, mob/living/user)
	if(istype(W, cell_type))
		if(power_supply)
			to_chat(usr, SPAN_WARNING("[src] is already loaded."))
			return

		if(insert_item(W, user))
			power_supply = W
			update_icon()
	. = ..()

/obj/item/gun/energy/MouseDrop(atom/over_object)
	if(!battery_changable)
		to_chat(usr, SPAN_WARNING("[src] is a disposable, its batteries cannot be removed!."))
	else if(self_recharge)
		to_chat(usr, SPAN_WARNING("[src] is a self-charging gun, its batteries cannot be removed!."))
	else if((src.loc == usr) && istype(over_object, /obj/screen) && (over_object.name in list(BP_R_HAND, BP_L_HAND)) && eject_item(power_supply, usr))
		power_supply = null
		update_icon()

/obj/item/gun/energy/Initialize()
	. = ..()
	if(cell_type)
		power_supply = new cell_type(src)
	else
		power_supply = new /obj/item/cell/device/variable(src, max_shots*charge_cost)
	update_icon()
