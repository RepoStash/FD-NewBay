#ifdef MODPACK_HESTIA_MISSILES

// High-Explosive
/obj/item/missile_equipment/payload/explosive/on_trigger(atom/triggerer)
	cell_explosion(get_turf(src), 500, 30)


	..()

// Antimissile
// Small explosion
/obj/item/missile_equipment/payload/antimissile/on_trigger(atom/triggerer)
	cell_explosion(get_turf(src), 100, 15)

	..()

// Tactical Nuke
/obj/item/missile_equipment/payload/nuclear/on_trigger(atom/triggerer)
	var/list/relevant_z = GetConnectedZlevels(loc.z)

	for(var/mob/living/M in GLOB.player_list)
		var/turf/T = get_turf(M)
		if(!T || !(T.z in relevant_z))
			continue
		to_chat("<font size='4' color='red'><b>Suddenly a bright blinding flash appears in nearby outer space, followed by a deadly shockwave!</b></font>")
		if(M.eyecheck() < FLASH_PROTECTION_MAJOR)
			M.flash_eyes()
			M.updatehealth()
		sound_to(M, sound('sound/effects/explosionfar.ogg'))

	if(!istype(triggerer, /obj/shield))
		SSradiation.radiate(get_turf(triggerer), 40)

	empulse(get_turf(triggerer), rand(20,40), rand(50,80))
	cell_explosion(get_turf(src), 1000, 40)

	..()

// Void

/obj/item/missile_equipment/payload/void/on_trigger(atom/triggerer)
	var/list/relevant_z = GetConnectedZlevels(loc.z)

	for(var/mob/living/M in GLOB.player_list)
		var/turf/T = get_turf(M)
		if(!T || !(T.z in relevant_z))
			continue
		to_chat("<font size='5' color='red'><b>The world distorts around you momentarily!</b></font>")
		if(M.eyecheck() < FLASH_PROTECTION_MAJOR)
			M.flash_eyes()
			M.updatehealth()
		if(!isdeaf(M))
			sound_to(M, sound('sound/effects/heavy_cannon_blast.ogg'))

	empulse(get_turf(triggerer), rand(6,8), rand(8,12))
	cell_explosion(get_turf(src), 1000, 40, effective = /datum/effect/system/explosion/warp)

	..()

// Destroyer of the World


/obj/item/missile_equipment/payload/big_nuclear/on_trigger(atom/triggerer)
	var/list/relevant_z = GetConnectedZlevels(loc.z)

	for(var/mob/living/M in GLOB.player_list)
		var/turf/T = get_turf(M)
		if(!T || !(T.z in relevant_z))
			continue
		to_chat("<font size='5' color='red'><b>Your doomsday is calling...</b></font>")
		M.flash_eyes(FLASH_PROTECTION_MAJOR)
		M.updatehealth()
		sound_to(M, sound('sound/effects/explosionfar.ogg'))

	if(!istype(triggerer, /obj/shield))
		SSradiation.radiate(get_turf(triggerer), 400)

	cell_explosion(get_turf(src), 3000, 10)
	empulse(get_turf(triggerer), rand(50,75), rand(75,100))


#endif
