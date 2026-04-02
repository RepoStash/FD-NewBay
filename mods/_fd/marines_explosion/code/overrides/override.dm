/atom/ex_act(severity, direction)
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
/*
/turf/simulated/damage_health(damage, damage_type, damage_flags, severity)
	..()
*/
/obj/explosion_throw(severity, direction, scatter_multiplier = 1)
	if(anchored)
		return

	if(!istype(src.loc, /turf))
		return

	if(!direction)
		direction = pick(GLOB.alldirs)
	var/range = min(round(severity * 0.2, 1), 14)
	if(!direction)
		range = round( range/2 ,1)

	if(range < 1)
		return


	var/speed = max(range*2.5, 4)
	var/atom/target = get_ranged_target_turf(src, direction, range)

	if(range >= 2)
		var/scatter = range/4 * scatter_multiplier
		var/scatter_x = rand(-scatter,scatter)
		var/scatter_y = rand(-scatter,scatter)
		target = locate(target.x + round( scatter_x , 1),target.y + round( scatter_y , 1),target.z) //Locate an adjacent turf.

	//time for the explosion to destroy windows, walls, etc which might be in the way
	invoke_async(src, TYPE_PROC_REF(/atom/movable, throw_at), target, range, speed, null, TRUE)

	return

/mob/explosion_throw(severity, direction, scatter_multiplier)
	if(anchored)
		return

	if(!istype(src.loc, /turf))
		return

	var/weight = 1
	var/range = round( severity/weight * 0.02 ,1)
	if(!direction)
		range = round( 2*range/3 ,1)
		direction = pick(NORTH,SOUTH,EAST,WEST,NORTHEAST,NORTHWEST,SOUTHEAST,SOUTHWEST)

	if(range <= 0)
		return

	var/speed = max(range*1.5, 4)
	var/atom/target = get_ranged_target_turf(src, direction, range)

	var/spin = 0

	if(range > 1)
		spin = 1

	if(range >= 2)
		var/scatter = range/4
		var/scatter_x = rand(-scatter,scatter)
		var/scatter_y = rand(-scatter,scatter)
		target = locate(target.x + round( scatter_x , 1),target.y + round( scatter_y , 1),target.z) //Locate an adjacent turf.

	//time for the explosion to destroy windows, walls, etc which might be in the way
	invoke_async(src, TYPE_PROC_REF(/atom/movable, throw_at), target, range, speed, null, spin)

	return

/mob/living/carbon/human/ex_act(severity)
	if (status_flags & GODMODE)
		return
	if(!blinded)
		flash_eyes()

	sound_to(src, sound('mods/_fd/marines_explosion/ringing_ears.ogg', volume=100/severity))

	var/b_loss = null
	var/f_loss = null
	switch (severity)
		if(600 to INFINITY)
			b_loss = 400
			f_loss = 100
			var/atom/target = get_edge_target_turf(src, get_dir(src, get_step_away(src, src)))
			throw_at(target, 200, 4)
		if(300 to 600)
			b_loss = 60
			f_loss = 60

			if (get_sound_volume_multiplier() >= 0.2)
				ear_damage += 30
				ear_deaf += 40
			if (prob(70))
				Paralyse(1)

		if(150 to 300)
			b_loss = 30
			if (get_sound_volume_multiplier() >= 0.2)
				ear_damage += 15
				ear_deaf += 20
			if (prob(50))
				Paralyse(1)

	// focus most of the blast on one organ
	apply_damage(0.7 * b_loss, DAMAGE_BRUTE, null, DAMAGE_FLAG_EXPLODE, used_weapon = "Explosive blast")
	apply_damage(0.7 * f_loss, DAMAGE_BURN, null, DAMAGE_FLAG_EXPLODE, used_weapon = "Explosive blast")

	// distribute the remaining 30% on all limbs equally (including the one already dealt damage)
	apply_damage(0.3 * b_loss, DAMAGE_BRUTE, null, DAMAGE_FLAG_EXPLODE | DAMAGE_FLAG_DISPERSED, used_weapon = "Explosive blast")
	apply_damage(0.3 * f_loss, DAMAGE_BURN, null, DAMAGE_FLAG_EXPLODE | DAMAGE_FLAG_DISPERSED, used_weapon = "Explosive blast")

/*
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
*/

/obj/overlay/bmark
	anchored = TRUE // No more moving Bholes
