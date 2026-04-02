/obj/machinery/telecomms
	working_sounds = list('mods/_fd/immersive_sounds/sounds/SOMA/server_loop_01.ogg', 'mods/_fd/immersive_sounds/sounds/SOMA/server_loop_02.ogg', 'mods/_fd/immersive_sounds/sounds/SOMA/server_loop_03.ogg')
	action_sound = list('mods/_fd/immersive_sounds/sounds/SOMA/server_movement_02.ogg', 'mods/_fd/immersive_sounds/sounds/SOMA/server_movement_03.ogg', 'mods/_fd/immersive_sounds/sounds/SOMA/server_movement_04.ogg', 'mods/_fd/immersive_sounds/sounds/SOMA/server_movement_05.ogg')
	startup_sound = list('mods/_fd/immersive_sounds/sounds/SOMA/server_switch_start_01.ogg', 'mods/_fd/immersive_sounds/sounds/SOMA/server_lever_reset_01.ogg')
	working_volume = 3

/obj/machinery/telecomms/Process()
	..()
	if(on && !(GET_FLAGS(stat, MACHINE_STAT_EMPED)) && !(integrity <= 0))
		play_working_soundloop()
	else
		stop_working_soundloop()

/obj/machinery/telecomms/receive_information()
	if(on)
		addtimer(new Callback(src, PROC_REF(play_action_sound), rand(10,100)))
	..()
