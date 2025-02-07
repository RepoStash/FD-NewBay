/obj/machinery/computer/modular
	startup_sound = list('mods/_fd/immersive_sounds/sounds/SOMA/computer_fan_turn_on.ogg')
	working_sounds = list('mods/_fd/immersive_sounds/sounds/SOMA/computer_fan_verb.ogg')
	shutdown_sound = list('mods/_fd/immersive_sounds/sounds/SOMA/computer_fan_slowing.ogg')
	working_volume = 15

/obj/machinery/computer/modular/Process()
	var/datum/extension/interactive/ntos/os = get_extension(src, /datum/extension/interactive/ntos)
	if(os.on)
		play_working_soundloop()
	else
		stop_working_soundloop()
	. = ..()
