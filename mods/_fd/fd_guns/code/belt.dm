// Code to add belt overlay

/obj/item/storage/belt/holster/on_update_icon()
	if (ismob(src.loc))
		var/mob/M = src.loc
		M.update_inv_belt()

	ClearOverlays()
	var/datum/extension/holster/H = get_extension(src, /datum/extension/holster)
	if(overlay_flags)
		for(var/obj/item/I in contents)
			if(I == H.holstered)
				if(overlay_flags & BELT_OVERLAY_HOLSTER)
					AddOverlays(image('icons/obj/clothing/obj_belt_overlays.dmi', "[I.icon_state]"))
				if(overlay_flags & BELT_OVERLAY_HOLSTER_FD)
					AddOverlays(image('mods/_fd/fd_guns/icons/obj_belt_overlays.dmi', "[initial(I.icon_state)]"))
			else if(overlay_flags & BELT_OVERLAY_ITEMS)
				AddOverlays(image('icons/obj/clothing/obj_belt_overlays.dmi', "[I.icon_state]"))


// Get this Overlay on holsters and adding guncells

/obj/item/storage/belt/holster/New()
	. = ..()
	overlay_flags += BELT_OVERLAY_HOLSTER_FD

/obj/item/storage/belt/holster/security/New()
	. = ..()
	overlay_flags += BELT_OVERLAY_HOLSTER_FD
	contents_allowed += list(
		/obj/item/cell/guncell
	)

/obj/item/storage/belt/holster/machete/New()
	. = ..()
	contents_allowed += list(
		/obj/item/cell/guncell
	)

/obj/item/storage/belt/holster/general/New()
	. = ..()
	overlay_flags += BELT_OVERLAY_HOLSTER_FD
	contents_allowed += list(
		/obj/item/cell/guncell
	)

/obj/item/storage/belt/holster/forensic/New()
	. = ..()
	overlay_flags += BELT_OVERLAY_HOLSTER_FD
