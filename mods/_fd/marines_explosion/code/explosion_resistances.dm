
// shitty place to live
/mob/living/get_explosion_resistance()
	if(density)
		return 40
	return 20

/obj/machinery/door/airlock/get_explosion_resistance()
	if(get_damage_resistance(DAMAGE_EXPLODE) == 0)
		return 1000000
	if(density)
		return get_current_health() / get_damage_resistance(DAMAGE_EXPLODE)
//		return get_damage_resistance(DAMAGE_EXPLODE)
	else
		return 20

/turf/unsimulated/get_explosion_resistance()
	return 1000000

/turf/unsimulated/floor/get_explosion_resistance()
	return 0

/turf/simulated/get_explosion_resistance()
	if(get_damage_resistance(DAMAGE_EXPLODE) == 0)
		return 1000000
	if(density)
// 		return health_current / get_damage_resistance(DAMAGE_EXPLODE)
		return (get_current_health() / 10) * explosion_resistance
	. = ..()

/turf/simulated/wall/get_explosion_resistance()
	if(get_damage_resistance(DAMAGE_EXPLODE) == 0)
		return 1000000
	return (get_current_health() / 10) * explosion_resistance

/obj/machinery/door/blast/get_explosion_resistance()
	if(density)
		return get_max_health() / get_damage_resistance(DAMAGE_EXPLODE)
//		return 100000000
/*
material/plasteel
	explosion_resistance = 40
*/
