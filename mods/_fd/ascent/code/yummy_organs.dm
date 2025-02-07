/obj/item/reagent_containers/food/snacks/organ/use_before(mob/M as mob, mob/user as mob)
	if (!istype(M, /mob/living/carbon))
		return FALSE
	if (!reagents || !reagents.total_volume)
		to_chat(user, SPAN_DANGER("None of [src] left!"))
		qdel(src)
		return TRUE
	if (!is_open_container())
		to_chat(user, SPAN_NOTICE("\The [src] isn't open!"))
		return TRUE

	var/mob/living/carbon/C = M
	var/fullness = C.get_fullness()
	if(istype(C,/mob/living/carbon/human))
		var/mob/living/carbon/human/H = M
		if(!H.check_has_mouth())
			to_chat(user, "Where do you intend to put \the [src]? You don't have a mouth!")
			return TRUE
		var/obj/item/blocked = H.check_mouth_coverage()
		if(blocked)
			to_chat(user, SPAN_WARNING("\The [blocked] is in the way!"))
			return TRUE

	if(fullness > 550)
		user.setClickCooldown(DEFAULT_ATTACK_COOLDOWN)//puts a limit on how fast people can eat/drink things
		to_chat(C, SPAN_DANGER("You cannot force any more of [src] to go down your throat."))
		return TRUE

	if(is_type_in_list(M, ALL_ASCENT_SPECIES))
		reagents.del_reagent(/datum/reagent/toxin)

	return ..()
