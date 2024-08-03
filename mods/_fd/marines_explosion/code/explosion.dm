/*
	Cellular automaton explosions!

	Often in life, you can't have what you wish for. This is one massive, huge,
	gigantic, gaping exception. With this, you get EVERYTHING you wish for.

	This thing is AWESOME. It's made with super simple rules, and it still produces
	highly complex explosions because it's simply emergent behavior from the rules.
	If that didn't amaze you (it should), this also means the code is SUPER short,
	and because cellular automata is handled by a subsystem, this doesn't cause
	lagspikes at all.

	Enough nerd enthusiasm about this. Here's how it actually works:

		1. You start the explosion off with a given power

		2. The explosion begins to propagate outwards in all 8 directions

		3. Each time the explosion propagates, it loses power_falloff power

		4. Each time the explosion propagates, atoms in the tile the explosion is in
		may reduce the power of the explosion by their explosive resistance

	That's it. There are some special rules, though, namely:

		* If the explosion occured in a wall, the wave is strengthened
		with power *= reflection_multiplier and reflected back in the
		direction it came from

		* If two explosions meet, they will either merge into an amplified
		or weakened explosion
*/

#define EXPLOSION_FALLOFF_SHAPE_LINEAR				0
#define EXPLOSION_FALLOFF_SHAPE_EXPONENTIAL			1
#define EXPLOSION_FALLOFF_SHAPE_EXPONENTIAL_HALF	2

#define EXPLOSION_MAX_POWER 5000

//Explosion level thresholds. Upper bounds
#define EXPLOSION_THRESHOLD_VLOW 50
#define EXPLOSION_THRESHOLD_LOW 100
#define EXPLOSION_THRESHOLD_MLOW 150
#define EXPLOSION_THRESHOLD_MEDIUM 200
#define EXPLOSION_THRESHOLD_HIGH 300

/// how much it takes to gib a mob
#define EXPLOSION_THRESHOLD_GIB 200

/datum/automata_cell/explosion
	// Explosions only spread outwards and don't need to know their neighbors to propagate properly
	neighbor_type = NEIGHBORS_NONE

	// Power of the explosion at this cell
	var/power = 0
	// How much will the power drop off when the explosion propagates?
	var/power_falloff = 20
	// Falloff shape is used to determines whether or not the falloff will change during the explosion traveling.
	var/falloff_shape = EXPLOSION_FALLOFF_SHAPE_LINEAR
	// How much power does the explosion gain (or lose) by bouncing off walls?
	var/reflection_power_multiplier = 0.4

	//Diagonal cells have a small delay when branching off from a non-diagonal cell. This helps the explosion look circular
	var/delay = 0

	// Which direction is the explosion traveling?
	// Note that this will be null for the epicenter
	var/direction = null

	// Whether or not the explosion should merge with other explosions
	var/should_merge = TRUE

	// Workaround to account for the fact that this is subsystemized
	// See on_turf_entered
	var/list/atom/exploded_atoms = list()

	var/obj/effect/particle_effect/shockwave/shockwave = null

// If we're on a fake z teleport, teleport over
/datum/automata_cell/explosion/birth()
	shockwave = new(in_turf)

/datum/automata_cell/explosion/death()
	if(shockwave)
		qdel(shockwave)

// Compare directions. If the other explosion is traveling in the same direction,
// the explosion is amplified. If not, it's weakened
/datum/automata_cell/explosion/merge(datum/automata_cell/explosion/E)
	// Non-merging explosions take priority
	if(!should_merge)
		return TRUE

	// The strongest of the two explosions should survive the merge
	// This prevents a weaker explosion merging with a strong one,
	// the strong one removing all the weaker one's power and just killing the explosion
	var/is_stronger = (power >= E.power)
	var/datum/automata_cell/explosion/survivor = is_stronger ? src : E
	var/datum/automata_cell/explosion/dying = is_stronger ? E : src

	// Two epicenters merging, or a new epicenter merging with a traveling wave
	if((!survivor.direction && !dying.direction) || (survivor.direction && !dying.direction))
		survivor.power += dying.power

	// A traveling wave hitting the epicenter weakens it
	if(!survivor.direction && dying.direction)
		survivor.power -= dying.power

	// Two traveling waves meeting each other
	// Note that we don't care about waves traveling perpendicularly to us
	// I.e. they do nothing

	// Two waves traveling the same direction amplifies the explosion
	if(survivor.direction == dying.direction)
		survivor.power += dying.power

	// Two waves travling towards each other weakens the explosion
	if(survivor.direction == GLOB.reverse_dir[dying.direction])
		survivor.power -= dying.power

	return is_stronger

// Get a list of all directions the explosion should propagate to before dying
/datum/automata_cell/explosion/proc/get_propagation_dirs(reflected)
	var/list/propagation_dirs = list()

	// If the cell is the epicenter, propagate in all directions
	if(isnull(direction))
		return GLOB.alldirs

	var/dir = reflected ? GLOB.reverse_dir[direction] : direction

	if(dir in GLOB.cardinal)
		propagation_dirs += list(dir, turn(dir, 45), turn(dir, -45))
	else
		propagation_dirs += dir

	return propagation_dirs

// If you need to set vars on the new cell other than the basic ones
/datum/automata_cell/explosion/proc/setup_new_cell(datum/automata_cell/explosion/E)
	if(E.shockwave)
		E.shockwave.alpha = E.power
	return

/datum/automata_cell/explosion/update_state(list/turf/neighbors)
	if(delay > 0)
		delay--
		return
	// The resistance here will affect the damage taken and the falloff in the propagated explosion
	var/resistance = max(0, in_turf.get_explosion_resistance(direction))
	for(var/atom/A in in_turf)
		resistance += max(0, A.get_explosion_resistance())

	// Blow stuff up
	invoke_async(in_turf, /atom.proc/ex_act, power, direction)
	for(var/atom/A in in_turf)
		if(A in exploded_atoms)
			continue
		if(A.gc_destroyed)
			continue
		invoke_async(A, /atom.proc/ex_act, power, direction)
		exploded_atoms += A
		log_explosion(A, src)

	var/reflected = FALSE

	// Epicenter is inside a wall if direction is null.
	// Prevent it from slurping the entire explosion
	if(!isnull(direction))
		// Bounce off the wall in the opposite direction, don't keep phasing through it
		// Notice that since we do this after the ex_act()s,
		// explosions will not bounce if they destroy a wall!
		if(power < resistance)
			reflected = TRUE
			power *= reflection_power_multiplier
		else
			power -= resistance

	if(power <= 0)
		qdel(src)
		return

	// Propagate the explosion
	var/list/to_spread = get_propagation_dirs(reflected)
	for(var/dir in to_spread)
		// Diagonals are longer, that should be reflected in the power falloff
		var/dir_falloff = 1
		if(dir in GLOB.cornerdirs)
			dir_falloff = 1.414

		if(isnull(direction))
			dir_falloff = 0

		var/new_power = power - (power_falloff * dir_falloff)

		// Explosion is too weak to continue
		if(new_power <= 0)
			continue

		var/new_falloff = power_falloff
		// Handle our falloff function.
		switch(falloff_shape)
			if(EXPLOSION_FALLOFF_SHAPE_EXPONENTIAL)
				new_falloff += new_falloff * dir_falloff
			if(EXPLOSION_FALLOFF_SHAPE_EXPONENTIAL_HALF)
				new_falloff += (new_falloff*0.5) * dir_falloff

		var/datum/automata_cell/explosion/E = propagate(dir)
		if(E)
			E.power = new_power
			E.power_falloff = new_falloff
			E.falloff_shape = falloff_shape

			// Set the direction the explosion is traveling in
			E.direction = dir
			//Diagonal cells have a small delay when branching off the center. This helps the explosion look circular
			if(!direction && (dir in GLOB.cornerdirs))
				E.delay = 1

			setup_new_cell(E)

	// We've done our duty, now die pls
	qdel(src)

/*
The issue is that between the cell being birthed and the cell processing,
someone could potentially move through the cell unharmed.

To prevent that, we track all atoms that enter the explosion cell's turf
and blow them up immediately once they do.

When the cell processes, we simply don't blow up atoms that were tracked
as having entered the turf.
*/

/datum/automata_cell/explosion/proc/on_turf_entered(atom/movable/A)
	// Once is enough
	if(A in exploded_atoms)
		return

	exploded_atoms += A

	// Note that we don't want to make it a directed ex_act because
	// it could toss them back and make them get hit by the explosion again
	if(A.gc_destroyed)
		return

	invoke_async(A, /atom.proc/ex_act, power, null)
	log_explosion(A, src)

// I'll admit most of the code from here on out is basically just copypasta from DOREC

// Spawns a cellular automaton of an explosion
/proc/cell_explosion(turf/epicenter, power, falloff, falloff_shape = EXPLOSION_FALLOFF_SHAPE_LINEAR, direction, shrapnel = TRUE, z_transfer = UP|DOWN, original = TRUE, datum/effect/system/effective = /datum/effect/system/explosion)
	var/mob/living/carbon/psionic

	if(!istype(epicenter))
		epicenter = get_turf(epicenter)

	if(!epicenter)
		return

	falloff = max(falloff, round(power * 0.001))
	if(original)
		msg_admin_attack("Explosion with Power: [power], Falloff: [falloff], Shape: [falloff_shape] in [epicenter.loc.name] ([epicenter.x],[epicenter.y],[epicenter.z]).", epicenter.x, epicenter.y, epicenter.z)

		playsound(epicenter, 'sound/effects/explosionfar.ogg', 100, 1, round(power^2,1))

		if(power >= 300) //Make BIG BOOMS
			playsound(epicenter, "bigboom", 80, 1, max(round(power,1),7))
			for(psionic in view(7, epicenter))
				if(psionic.psi)
					psionic.psi.spend_power(rand(25,35))
		else
			playsound(epicenter, "explosion", 90, 1, max(round(power,1),7))
			for(psionic in view(7, epicenter))
				if(psionic.psi && psionic.get_sound_volume_multiplier() > 0.1)
					psionic.psi.spend_power(rand(15,35))

	var/datum/automata_cell/explosion/E = new /datum/automata_cell/explosion(epicenter)
	// something went wrong :(
	if(QDELETED(E))
		return

	E.power = power
	E.power_falloff = falloff
	E.falloff_shape = falloff_shape
	E.direction = direction

	var/explosion_range = round(power / falloff)

	// Make explosion effect
//	new /obj/effect/temp_visual/shockwave(epicenter, explosion_range)
//	new /obj/effect/temp_visual/explosion(epicenter, explosion_range, LIGHT_COLOR_HOLY_MAGIC, power)

	if(effective)
		var/datum/effect/system/S = new effective()
		S.set_up(epicenter)
		S.start(explosion_range)

	if(shrapnel) // powerful explosions send out some special effects
		fragmentate(epicenter, rand(explosion_range * 0.5, explosion_range * 2), rand(explosion_range * 0.5, explosion_range * 2) / 2, list(/obj/item/projectile/bullet/pellet/fragment/tank/small = 1,/obj/item/projectile/bullet/pellet/fragment/tank = 5,/obj/item/projectile/bullet/pellet/fragment/strong = 4), "explosion")

	var/z_level_scaled = power * 0.35
	if(z_level_scaled > 0)
		if(z_transfer & UP)
			var/turf/above_epicenter = GetAbove(epicenter)
			if(above_epicenter)
				cell_explosion(above_epicenter, z_level_scaled, falloff, falloff_shape, direction, shrapnel, UP, FALSE)
		if(z_transfer & DOWN)
			var/turf/below_epicenter = GetBelow(epicenter)
			if(below_epicenter)
				cell_explosion(below_epicenter, z_level_scaled, falloff, falloff_shape, direction, shrapnel, DOWN, FALSE)

/proc/log_explosion(atom/A, datum/automata_cell/explosion/E)
	if(isliving(A))
		var/mob/living/M = A
		var/turf/T = get_turf(A)

		if(QDELETED(M) || QDELETED(T))
			return
/* uhhh, maybe later
		M.last_damage_data = E.explosion_cause_data
		var/explosion_source = E.explosion_cause_data?.cause_name
		var/mob/explosion_source_mob = E.explosion_cause_data?.resolve_mob()

		if(explosion_source_mob)
			log_attack("[key_name(M)] was harmed by explosion in [T.loc.name] caused by [explosion_source] at ([T.x],[T.y],[T.z])")
			if(!ismob(explosion_source_mob))
				CRASH("Statistics attempted to track a source mob incorrectly: [explosion_source_mob] ([explosion_source])")
			var/mob/firing_mob = explosion_source_mob
			var/turf/location_of_mob = get_turf(firing_mob)
			// who cares about the explosion if it happened nowhere
			if(!location_of_mob)
				return
			var/area/thearea = get_area(M)
			if(M == firing_mob)
				M.attack_log += "\[[time_stamp()]\] <b>[key_name(M)]</b> blew himself up with \a <b>[explosion_source]</b> in [get_area(T)]."
			// One human blew up another, be worried about it but do everything basically the same
			else if(ishuman(firing_mob) && ishuman(M) && M.faction == firing_mob.faction && !thearea?.statistic_exempt)
				M.attack_log += "\[[time_stamp()]\] <b>[key_name(firing_mob)]</b> blew up <b>[key_name(M)]</b> with \a <b>[explosion_source]</b> in [get_area(T)]."

				firing_mob.attack_log += "\[[time_stamp()]\] <b>[key_name(firing_mob)]</b> blew up <b>[key_name(M)]</b> with \a <b>[explosion_source]</b> in [get_area(T)]."
				var/ff_msg = "[key_name(firing_mob)] blew up [key_name(M)] with \a [explosion_source] in [get_area(T)]"
				var/ffl = "(<A HREF='?_src_=admin_holder;[HrefToken(forceGlobal = TRUE)];adminplayerobservecoodjump=1;X=[T.x];Y=[T.y];Z=[T.z]'>JMP LOC</a>) (<A HREF='?_src_=admin_holder;[HrefToken(forceGlobal = TRUE)];adminplayerobservecoodjump=1;X=[location_of_mob.x];Y=[location_of_mob.y];Z=[location_of_mob.z]'>JMP SRC</a>) [ADMIN_PM(firing_mob)]"
				var/ff_living = TRUE
				if(M.stat == DEAD)
					ff_living = FALSE
				msg_admin_ff("[ff_msg] [ffl]", ff_msg, ff_living)

				if(ishuman(firing_mob))
					var/mob/living/carbon/human/H = firing_mob
					H.track_friendly_fire(explosion_source)
			else
				M.attack_log += "\[[time_stamp()]\] <b>[key_name(firing_mob)]</b> blew up <b>[key_name(M)]</b> with \a <b>[explosion_source]</b> in [get_area(T)]."

				firing_mob.attack_log += "\[[time_stamp()]\] <b>[key_name(firing_mob)]</b> blew up <b>[key_name(M)]</b> with \a <b>[explosion_source]</b> in [get_area(T)]."

				msg_admin_attack("[key_name(firing_mob)] blew up [key_name(M)] with \a [explosion_source] in [get_area(T)] ([T.x],[T.y],[T.z]).", T.x, T.y, T.z)
		else
			log_attack("[key_name(M)] was harmed by unknown explosion in [T.loc.name] at ([T.x],[T.y],[T.z])")
*/
/obj/effect/particle_effect/shockwave
	name = "shockwave"
	icon = 'icons/effects/effects.dmi'
	icon_state = "smoke"
	anchored = TRUE
	mouse_opacity = 0
	layer = FLY_LAYER


/proc/fragmentate(turf/T, fragment_number = 30, spreading_range = 5, list/fragtypes=list(/obj/item/projectile/bullet/pellet/fragment), shoot_from)
	set waitfor = 0
	var/list/target_turfs = getcircle(T, spreading_range)
	var/fragments_per_projectile = round(fragment_number/length(target_turfs))

	for(var/turf/O in target_turfs)
		sleep(0)
		var/fragment_type = pickweight(fragtypes)
		var/obj/item/projectile/bullet/pellet/fragment/P = new fragment_type(T)
		P.pellets = fragments_per_projectile
		P.shot_from = shoot_from
		P.hitchance_mod = 50

		P.launch(O)
/* shit mess, removed because I want make that proc global
		// Handle damaging whatever the grenade's inside. Currently only checks for mobs.
		if(loc != get_turf(src))
			var/recursion_limit = 3 // Prevent infinite loops
			var/atom/current_check = src
			while (recursion_limit)
				current_check = current_check.loc
				if (isturf(current_check))
					break
				if (ismob(current_check))
					P.attack_mob(current_check, 0, 25)
				recursion_limit--
*/
		//Make sure to hit any mobs in the source turf
		for(var/mob/living/M in T)
			//lying on a frag grenade while the grenade is on the ground causes you to absorb most of the shrapnel.
			//you will most likely be dead, but others nearby will be spared the fragments that hit you instead.
			if(M.lying)
				P.attack_mob(M, 0, 5)
			else
				P.attack_mob(M, 0, 50)


#undef EXPLOSION_FALLOFF_SHAPE_EXPONENTIAL_HALF
#undef EXPLOSION_FALLOFF_SHAPE_EXPONENTIAL
#undef EXPLOSION_FALLOFF_SHAPE_LINEAR

#undef EXPLOSION_MAX_POWER

#undef EXPLOSION_THRESHOLD_VLOW
#undef EXPLOSION_THRESHOLD_LOW
#undef EXPLOSION_THRESHOLD_MLOW
#undef EXPLOSION_THRESHOLD_MEDIUM
#undef EXPLOSION_THRESHOLD_HIGH

#undef EXPLOSION_THRESHOLD_GIB
