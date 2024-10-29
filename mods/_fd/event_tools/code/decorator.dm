//tool, which used for changing some decorative vars of the object by click

/obj/item/event_tools/decorator
	name = "strange cube"
	desc = "It helds the power of the Gods of this realm, be careful while using it, because one wrong move can tear the reality in half."
	icon = 'mods/_fd/event_tools/icons/artefacts.dmi'
	icon_state = "decorator"
	var/in_delete_mode = FALSE
	var/list/options = list("Move Obj", "Anchor/Unanchor Obj", "Change Density", "Change Opacity", "Change Layer")
	var/currently_set = "Move Obj"

/obj/item/event_tools/decorator/examine(mob/user)
	. = ..()
	if(in_delete_mode)
		to_chat(user, SPAN_DANGER("It's in delete mode."))
	if(!in_delete_mode)
		to_chat(user, SPAN_NOTICE("It's currently in [currently_set] state."))

/obj/item/event_tools/decorator/AltClick(mob/user)
	if(!in_delete_mode)
		in_delete_mode = TRUE
		icon_state = "deleter"
		to_chat(user, "<span class='danger'>You will now delete any object on click!</span>")
		return TRUE
	else
		in_delete_mode = FALSE
		icon_state = "decorator"
		to_chat(user, "<span class='notice'>You will now change any object on click!</span>")
		return TRUE

/obj/item/event_tools/decorator/attack_self(mob/living/carbon/user)
	if(in_delete_mode)
		to_chat(user, "<span class='danger'>You can't change states while you in delete mode!</span>")
		return FALSE
	var/mode = input(user, "Choose needed option!", "In process of...") as null|anything in options
	if(!mode)
		return FALSE
	switch(mode)
		if("Move Obj")
			to_chat(user, "<span class='notice'>Now [src] will change pixel_x and pixel_y of an object you click on.</span>")
			currently_set = "Move Obj"
			return TRUE
		if("Anchor/Unanchor Obj")
			to_chat(user, "<span class='notice'>Now [src] will remove or add bolts to the object you click on.</span>")
			currently_set = "Anchor/Unanchor Obj"
			return TRUE
		if("Change Density")
			to_chat(user, "<span class='notice'>Now [src] will change tangibility of an object you click on.</span>")
			currently_set = "Change Density"
			return TRUE
		if("Change Opacity")
			to_chat(user, "<span class='notice'>Now [src] will change transparency of an object you click on.</span>")
			currently_set = "Change Opacity"
			return TRUE
		if("Change Layer")
			to_chat(user, "<span class='notice'>Now [src] will change elevation layer of an object you click on.</span>")
			currently_set = "Change Layer"
			return TRUE

/obj/item/event_tools/decorator/afterattack(atom/A as mob|obj|turf|area, mob/living/user as mob)
	if (isliving(A))
		return FALSE

	if(in_delete_mode)
		qdel(A)
		return TRUE

	switch(currently_set)
		if("Move Obj")

			var/change_x = input(user, "Enter the number of shifting by X", "Hm...", "0") as null|num
			var/change_y = input(user, "Enter the number of shifting by Y", "Hm...", "0") as null|num

			A.pixel_x = change_x
			A.pixel_y = change_y
			to_chat(user, "<span class='notice'>You shifted [A] to [change_x] by X and [change_y] by Y.</span>")
			return TRUE

		if("Anchor/Unanchor Obj")
			if(istype(A, /obj/))
				var/obj/target = A
				if(target.anchored)
					target.anchored = FALSE
					to_chat(user, "<span class='notice'>You changed anchor on the [target] to 0.</span>")
					return TRUE

				target.anchored = TRUE
				to_chat(user, "<span class='notice'>You changed anchor on the [target] to 1.</span>")
				return TRUE
			else
				return FALSE

		if("Change Density")
			if(A.density)
				A.density = FALSE
				to_chat(user, "<span class='notice'>You changed density of a [A] to 0.</span>")
				return TRUE

			A.density = TRUE
			to_chat(user, "<span class='notice'>You changed density of a [A] to 1.</span>")
			return TRUE

		if("Change Opacity")
			if(A.opacity)
				A.opacity = FALSE
				to_chat(user, "<span class='notice'>You changed transparency of a [A] to 0.</span>")
				return TRUE

			A.opacity = TRUE
			to_chat(user, "<span class='notice'>You changed transparency of a [A] to 1.</span>")
			return TRUE

		if("Change Layer")

			var/change_layer = input(user, "Enter the number of an layer", "Hm...", "[A.layer]") as null|num

			A.layer = change_layer
			to_chat(user, "<span class='notice'>You shifted [A] layer to [change_layer].</span>")
			return TRUE
