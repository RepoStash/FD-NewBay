/obj/machinery/atmospherics/unary/vent_scrubber
	working_sounds = list('sound/machines/scrubber-active.ogg')
	working_volume = 3

/obj/machinery/atmospherics/unary/vent_scrubber/Process()
	if (hibernate > world.time) //lummox forgive me
		return 1
	if(use_power || !(inoperable()))
		play_working_soundloop()
	else
		stop_working_soundloop()
	. = ..()
