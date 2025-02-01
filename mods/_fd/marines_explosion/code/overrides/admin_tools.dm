/client/drop_bomb() // Some admin dickery that can probably be done better -- TLE

	var/turf/epicenter = get_turf(mob)
	var/custom_limit = 10000
	var/list/choices = list("Small Bomb", "Medium Bomb", "Big Bomb", "Custom Bomb")
	var/list/falloff_shape_choices = list("CANCEL", "Linear", "Exponential")
	var/choice = input("What size explosion would you like to produce?") as null | anything in choices
	switch(choice)
		if(null)
			return 0
		if("Small Bomb")
			cell_explosion(epicenter, 200, 50)
		if("Medium Bomb")
			cell_explosion(epicenter, 450, 75)
		if("Big Bomb")
			cell_explosion(epicenter, 800, 100)
		if("Custom Bomb")
			var/power = input("Power:") as num|null
			if(!power)
				return

			var/falloff = input("Falloff:") as num|null
			if(!falloff)
				return

			var/shape_choice = input("Select falloff shape:") as null|anything in falloff_shape_choices
			var/explosion_shape = EXPLOSION_FALLOFF_SHAPE_LINEAR
			switch(shape_choice)
				if("CANCEL")
					return 0
				if("Exponential")
					explosion_shape = EXPLOSION_FALLOFF_SHAPE_EXPONENTIAL

			if(power > custom_limit)
				return

			cell_explosion(epicenter, power, falloff, explosion_shape)
	log_and_message_admins("created an admin explosion at [epicenter.loc].")
