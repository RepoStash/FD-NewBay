/obj/machinery/atmospherics/unary/vent_pump
	working_sounds = list('mods/_fd/immersive_sounds/sounds/SOMA/vent_loop.ogg')
	working_volume = 3

/obj/machinery/atmospherics/unary/vent_pump/Process()
	if (hibernate > world.time) //sorry
		return 1
	if(can_pump())
		play_working_soundloop()
	else
		stop_working_soundloop()
	. = ..()
