/atom/proc/ex_act(severity, direction)
	// No hitsound here to avoid noise spam.
	// Damage is based on severity and maximum health, with DEVASTATING being guaranteed death without any resistances.
	if(severity && can_damage_health(severity, DAMAGE_EXPLODE))
		damage_health(severity, DAMAGE_EXPLODE, EMPTY_BITFIELD, severity)
		contents_explosion(severity, direction)

	explosion_throw(severity, direction)

/atom/proc/explosion_throw(severity, direction, scatter_multiplier = 1)
	return

/atom/proc/contents_explosion(severity, direction)
	for(var/atom/A in contents)
		A.ex_act(severity, direction)

/turf/simulated/damage_health(damage, damage_type, damage_flags, severity)
	..()

// Potassium + H2O

/datum/effect/effect/system/reagents_explosion/start()
	if (amount <= 2)
		var/datum/effect/effect/system/spark_spread/s = new /datum/effect/effect/system/spark_spread()
		s.set_up(2, 1, location)
		s.start()

		for(var/mob/M in viewers(5, location))
			to_chat(M, SPAN_WARNING("The solution violently explodes."))
		for(var/mob/M in viewers(1, location))
			if (prob (50 * amount))
				to_chat(M, SPAN_WARNING("The explosion knocks you down."))
				M.Weaken(rand(1,5))
		return
	else
		for(var/mob/M in viewers(8, location))
			to_chat(M, SPAN_WARNING("The solution violently explodes."))

		cell_explosion(location, amount * 50, amount * 1.8)
