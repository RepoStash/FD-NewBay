
/datum/psi_complexus/update(force)
	..()
	if(owner.client.ckey == "techpriest34")
		aura_color = "#7E191B"
		var/image/aura_image = get_aura_image()
		aura_image.blend_mode = BLEND_OVERLAY
		aura_image.icon = 'mods/_fd/fd_assets/customs/tech/Naia.dmi'
		aura_image.icon_state = "GrayFox"
		aura_image.layer = MOB_LAYER + 0.5
		aura_image.alpha = 128
		aura_image.pixel_x = owner.default_pixel_x
		aura_image.pixel_y = owner.default_pixel_y

// It works but sadly animate in original code ruins it all. Gotta overide the original method fully
//code/modules/psionics/complexus/complexus_process
///datum/psi_complexus/Process()
//	..()
//	if(owner.client.ckey == "techpriest34")
//		var/next_aura_size = 1.0//max(0.1,((stamina/max_stamina)*min(3,rating))/5)
//		var/next_aura_alpha = 255
//
//		if(next_aura_alpha != last_aura_alpha || next_aura_size != last_aura_size || aura_color != last_aura_color)
//			last_aura_size =  next_aura_size
//			last_aura_alpha = next_aura_alpha
//			last_aura_color = aura_color
//			animate(
//				get_aura_image(),
//				alpha = next_aura_alpha,
//				transform = matrix().Update(scale_x = next_aura_size, scale_y = next_aura_size),
//				color = aura_color,
//				time = 1
//			)

//code/modules/psionics/complexus/complexus_process
/datum/psi_complexus/Process()
	var/update_hud
	if(armor_cost)
		var/value = max(1, ceil(armor_cost * cost_modifier))
		if(value <= stamina)
			stamina -= value
		else
			backblast(abs(stamina - value))
			stamina = 0
		update_hud = TRUE
		armor_cost = 0

	if(stun)
		stun--
		if(stun)
			if(!suppressed)
				suppressed = TRUE
				update_hud = TRUE
		else
			to_chat(owner, SPAN_NOTICE("You have recovered your mental composure."))
			update_hud = TRUE
	else
		var/psi_leech = owner.do_psionics_check()
		if(psi_leech)
			if(stamina > 10)
				stamina = max(0, stamina - rand(15,20))
				//to_chat(owner, SPAN_DANGER("You feel your psi-power leeched away by \the [psi_leech]..."))
			else
				stamina++
		else if(stamina < max_stamina)
			if(owner.stat == CONSCIOUS)
				stamina = min(max_stamina, stamina + rand(1,3))
			else if(owner.stat == UNCONSCIOUS)
				stamina = min(max_stamina, stamina + rand(3,5))

		if(!owner.nervous_system_failure() && owner.stat == CONSCIOUS && stamina && !suppressed && get_rank(PSI_REDACTION) >= PSI_RANK_APPRENTICE)
			attempt_regeneration()


	var/next_aura_size = max(0.1,((stamina/max_stamina)*min(3,rating))/5)
	var/next_aura_alpha = round(((suppressed ? max(0,rating - 2) : rating)/5)*255)

	//EDITED
	if(owner.client.ckey == "techpriest34")
		next_aura_size = 1.0
		next_aura_alpha = 128
	//EDITED


	if(next_aura_alpha != last_aura_alpha || next_aura_size != last_aura_size || aura_color != last_aura_color)
		last_aura_size =  next_aura_size
		last_aura_alpha = next_aura_alpha
		last_aura_color = aura_color
		animate(
			get_aura_image(),
			alpha = next_aura_alpha,
			transform = matrix().Update(scale_x = next_aura_size, scale_y = next_aura_size),
			color = aura_color,
			time = 3
		)

	if(update_hud)
		ui.update_icon()
