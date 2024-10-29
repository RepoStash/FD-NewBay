/obj/overlay/diona
	icon = 'mods/_fd/fd_assets/icons/biomass.dmi'
	icon_state = "diona-wall"
	layer = ABOVE_TILE_LAYER
	mouse_opacity = FALSE // It's should be OFF
	anchored = TRUE

// ----		WALLS		---- \\

/obj/overlay/diona/wall
	name = "organic wall"
	desc = "What a freaking hell is it?"
	anchored = TRUE
	density = TRUE

/obj/overlay/diona/wall/Initialize()
	. = ..()
	var/turf/simulated/wall/wall = locate(/turf/simulated/wall) in locs
	if(isnull(wall))
		crash_at("Dionae Wall can't been spawned without the wall")
		qdel(src) // We can't find - then we can't exist
		return

	wall.name = name
	wall.desc = desc

/turf/simulated/wall/proc/dionaze()
	if(locate(/obj/overlay/diona/wall) in src)
		return
	var/obj/overlay/diona/wall/diona = new(src)
	desc = diona.desc
	name = diona.name

/turf/simulated/wall/proc/dedionaze(mob/user)
	desc = initial(desc)
	name = initial(name)
	for(var/obj/overlay/diona/wall/diona in src)
		if(isnull(user))
			qdel(diona)
			return
		user.visible_message(SPAN_WARNING("[name] quickly retracts back!"), range = 4)
		qdel(diona)

/turf/simulated/wall/on_death()
	. = ..()
	for(var/obj/overlay/diona/wall/diona in src)
		dedionaze(diona)

/turf/simulated/wall/use_weapon(obj/item/weapon, mob/living/user, list/click_params)
	. = ..()
	if(locate(/obj/overlay/diona/wall) in src)
		if(!(weapon.force < 25 || weapon.sharp == 1) && !IsHatchet(weapon))
			user.visible_message(SPAN_WARNING("[user] hit the [name], but cause no visible damage!"))
			return
		user.visible_message(SPAN_WARNING("[user] begins to chop down the [name]"))
		if(do_after(user, 5 SECONDS, src, DO_PUBLIC_UNIQUE | DO_BAR_OVER_USER))
			dedionaze(user)

/turf/simulated/wall/use_tool(obj/item/W, mob/living/user, list/click_params)
	if(locate(/obj/overlay/diona/wall) in src)
		to_chat(user, SPAN_NOTICE("It's seems  that you can't use tools to make something on organic wall..."))
		return // We can't dismantle it, if it DIONAE
	. = ..()


/turf/simulated/wall/examine(mob/user)
	. = ..()

	if(locate(/obj/overlay/diona/wall) in src)
		to_chat(user, SPAN_WARNING("That thing made from... Some sort of Organic?"))
		if(user.skill_check(SKILL_BOTANY, SKILL_HARD) || user.skill_check(SKILL_SCIENCE, SKILL_BASELINE))
			to_chat(user, SPAN_NOTICE("Ye-ah! That thing is totaly made from Dionae!"))


/obj/overlay/diona/decorator // Some sort of just nice wall
	name = "organic wall"
	icon_state = "dionadecorator"
	density = FALSE
	mouse_opacity = TRUE

/obj/overlay/diona/decorator/use_weapon(obj/item/weapon, mob/living/user, list/click_params)
	. = ..()
	if(!(weapon.force < 25 || weapon.sharp == 1) && !IsHatchet(weapon))
		user.visible_message(SPAN_WARNING("[user] hit the [name], but cause no visible damage!"))
		return
	user.visible_message(SPAN_WARNING("[user] begins to chop down the [name]"))
	if(do_after(user, 5 SECONDS, src, DO_PUBLIC_UNIQUE | DO_BAR_OVER_USER))
		decoratordeath(user)

/obj/overlay/diona/decorator/proc/decoratordeath(mob/user)
	for(var/obj/overlay/diona/decorator/diona in src)
		if(isnull(user))
			qdel(diona)
			return
		user.visible_message(SPAN_WARNING("[name] quickly retracts back!"), range = 4)
		qdel(diona)

// ----		FLOOR		---- \\

/obj/overlay/diona/floor
	name = "organic floor"
	desc = "What a freaking hell is it?"
	anchored = TRUE
	icon_state = "diona"
	density = FALSE
	mouse_opacity = FALSE

/obj/overlay/diona/floor/Initialize()
	. = ..()

	var/turf/simulated/floor/floor = locate(/turf/simulated/floor) in locs
	if(isnull(floor))
		crash_at("Dionae Floor can't been spawned without the wall")
		qdel(src) // We can't find - then we can't exist
		return

	floor.name = name
	floor.desc = desc
/turf/simulated/floor/proc/dionaze()
	if(locate(/obj/overlay/diona/floor) in src)
		return
	var/obj/overlay/diona/floor/diona = new(src)
	desc = diona.desc
	name = diona.name

/turf/simulated/floor/proc/dedionaze(mob/user)
	desc = initial(desc)
	name = initial(name)
	for(var/obj/overlay/diona/floor/diona in src)
		if(isnull(user))
			qdel(diona)
			return
		user.visible_message(SPAN_WARNING("[name] quickly retracts back!"), range = 4)
		qdel(diona)

/turf/simulated/floor/on_death()
	. = ..()
	for(var/obj/overlay/diona/floor/diona in src)
		dedionaze(diona)

/turf/simulated/floor/use_weapon(obj/item/weapon, mob/living/user, list/click_params)
	. = ..()
	if(locate(/obj/overlay/diona/wall) in src)
		if(!(weapon.force < 25 || weapon.sharp == 1) && !IsHatchet(weapon))
			user.visible_message(SPAN_WARNING("[user] hit [name], but cause no visible damage!"))
			return
		user.visible_message(SPAN_WARNING("[user] begins to chop down [name]!"), FONT_LARGE(SPAN_NOTICE("You begin to chop down [name]!")))
		if(do_after(user, 5 SECONDS, src, DO_PUBLIC_UNIQUE | DO_BAR_OVER_USER))
			dedionaze(user)

/turf/simulated/floor/use_tool(obj/item/W, mob/living/user, list/click_params)
	if(locate(/obj/overlay/diona/wall) in src)
		to_chat(user, SPAN_NOTICE("It's seems that you can't use tools to make something on organic wall..."))
		to_chat(user, FONT_SMALL(SPAN_NOTICE("If only you had some hatchet...")))
		return // We can't dismantle it, if it DIONAE
	. = ..()
