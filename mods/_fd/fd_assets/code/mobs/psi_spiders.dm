/obj/spider/eggcluster/small/psi
	spider_type = /obj/spider/spiderling/psi

/obj/spider/spiderling/psi
	growth_chance = 100
	castes = list(/mob/living/simple_animal/hostile/giant_spider/psi = 1)

/obj/spider/spiderling/psi/Initialize(mapload, atom/parent)
	. = ..()
	add_filter("distortion", 1, list("type" = "blur", "size" = 0.75))

/mob/living/simple_animal/hostile/giant_spider/psi
	name = null
	desc = "⍑𝙹∴ ᒲᔑリ|| ᒲ╎⊣⍑ℸ ̣ '⍊ᒷ ⊣𝙹ℸ ̣ ℸ ̣ ᒷリ ꖎ𝙹ᓭℸ ̣"

	icon_state = "frost"
	icon_living = "frost"
	icon_dead = "frost_dead"

	maxHealth = 140
	health = 140

	poison_chance = 60
	poison_per_bite = 1
	poison_type = /datum/reagent/toxin/cryotoxin

	special_attack_min_range = 0
	special_attack_max_range = 99
	special_attack_cooldown = 15 SECONDS

	natural_weapon = /obj/item/natural_weapon/bite/spider/webslinger
	ai_holder = /datum/ai_holder/simple_animal/spider/psi

	minbodytemp = 0

/mob/living/simple_animal/hostile/giant_spider/psi/Initialize(mapload, atom/parent)
	. = ..()
	add_filter("distortion", 1, list("type" = "blur", "size" = 1))
	icon_state = "phoron"
	icon_living = "phoron"
	icon_dead = "phoron_dead"
	name = null

/mob/living/simple_animal/hostile/giant_spider/psi/handle_atmos()
	return

/mob/living/simple_animal/hostile/giant_spider/psi/do_attack(atom/A, turf/T)
	face_atom(A)
	var/missed = FALSE
	if (get_dir(src, A) == facing_dir && get_dist(src, A) <= 1) // Turfs don't contain themselves so checking contents is pointless if we're targeting a turf.
		missed = TRUE
	else if (!T.AdjacentQuick(src))
		missed = TRUE

	if(missed) // Most likely we have a slow attack and they dodged it or we somehow got moved.
		playsound(src, 'sound/weapons/punchmiss.ogg', 75, 1)
		visible_message(SPAN_WARNING("\The [src] misses their attack."))
		return FALSE

	var/obj/item/natural_weapon/weapon = get_natural_weapon()

	weapon?.resolve_attackby(A, src)
	apply_melee_effects(A)

	return TRUE

/mob/living/simple_animal/hostile/giant_spider/psi/apply_melee_effects(atom/A)
	. = ..()
	if(prob(30) && ismob(A))
		var/mob/mob_target = A
		mob_target.add_filter("distortion", 1, list("type" = "blur", "size" = 0))
		mob_target.visible_message(SPAN_DANGER("\The [A] shakes rapidly as the space around it starts distorting!"))
		rattle_animation(mob_target, 6 SECONDS)
		animate(mob_target.get_filter("distortion"), size = 3, time = 2 SECONDS)
		ai_holder.set_busy(TRUE)
		mob_target.AdjustWeakened(5)
		mob_target.set_confused(10)
		playsound(get_turf(mob_target), 'sound/effects/psi/power_fabrication.ogg', 100, TRUE)
		addtimer(new Callback(ai_holder, TYPE_PROC_REF(/datum/ai_holder/simple_animal/spider/psi, finish_special), A), 2 SECONDS)

/proc/rattle_animation(atom/movable/target, duration = 1 SECONDS, amplitude = 3, interval = 1)
	set waitfor = FALSE
	var/default_pixel_x
	var/default_pixel_y

	if(ismob(target))
		var/mob/mob_target = target
		default_pixel_x = mob_target.default_pixel_x
		default_pixel_y = mob_target.default_pixel_y
	else
		default_pixel_x = initial(target.pixel_x)
		default_pixel_y = initial(target.pixel_y)

	var/end_duration = world.time + duration
	while(world.time < end_duration)
		target.pixel_x = default_pixel_x + rand(-amplitude, amplitude)
		target.pixel_y = default_pixel_y + rand(-amplitude/3, amplitude/3)
		sleep(interval)

	target.pixel_x = default_pixel_x
	target.pixel_y = default_pixel_y

/mob/living/simple_animal/hostile/giant_spider/psi/should_special_attack(atom/A)
	if(prob(20) && get_current_health() < get_max_health() - 20)
		return TRUE

/datum/ai_holder/simple_animal/spider/psi/can_attack(atom/movable/target, vision_required = TRUE)
	ai_log("can_attack() : Entering.", AI_LOG_TRACE)
	if (vision_required && !can_see_target(target))
		return FALSE
	if (ismob(target) && (target?:psi?:suppressed == 0))
		return FALSE
	return can_pursue(target)

/datum/ai_holder/simple_animal/spider/psi/special_attack(atom/movable/AM)
	holder.visible_message(SPAN_DANGER("\The giant spider shakes rapidly as the space around it starts distorting!"))
	rattle_animation(holder, 6 SECONDS)
	animate(holder.get_filter("distortion"), size = 3, time = 2 SECONDS)
	set_busy(TRUE)
	holder.restore_health(40, DAMAGE_BRUTE)
	playsound(get_turf(holder), 'sound/effects/psi/power_fabrication.ogg', 100, TRUE)
	addtimer(new Callback(src, PROC_REF(finish_special), holder, TRUE), 2 SECONDS)
	return TRUE

/datum/ai_holder/simple_animal/spider/psi/proc/finish_special(mob/target, stay_blurred)
	set_busy(FALSE)

	var/datum/effect/spark_spread/spark = new
	var/turf/T = get_turf(target)
	spark.set_up(5,1,T)
	spark.attach(T)
	spark.start()

	var/list/possible_destinations = shuffle(RANGE_TURFS(target, 20))
	var/turf/destination
	for(var/turf/floor as anything in possible_destinations)
		if(floor.density)
			continue
		if(get_dist(floor, target) <= 8)
			continue
		if(floor?.air?.total_moles < 60)
			continue
		destination = floor
		break

	if(!destination)
		destination = pick(possible_destinations)

	target.forceMove(destination)

	animate(target.get_filter("distortion"), size = stay_blurred ? 1 : 0)

	var/datum/effect/spark_spread/new_spark = new
	new_spark.set_up(5,1,destination)
	new_spark.attach(destination)
	new_spark.start()
