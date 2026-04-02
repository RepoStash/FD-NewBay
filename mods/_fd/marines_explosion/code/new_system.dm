// Здесь будет оверрайдится какой-то бред


/datum/effect/system/reagents_explosion/start()
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
