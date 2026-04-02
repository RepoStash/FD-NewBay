/datum/job/newplayer
	title = "New Player"
	total_positions = 10
	spawn_positions = 10
	supervisors = "GM's word"
	loadout_allowed = TRUE
	skill_points = 52

/datum/job/newplayer/equip(mob/living/carbon/human/H, alt_title, datum/mil_branch/branch, datum/mil_rank/grade)
	. = ..()
	// We need to STUN them
	H.stunned = 100000
	to_chat(H, SPAN_DANGER(FONT_LARGE("ГМ готовит для вас место. Пока - вы можете пообщаться.")))
	log_and_message_admins("заспавнился как [title] и застаннен! Не забудьте снять ему стан, после спавна!", H)

/obj/submap_landmark/spawnpoint/newplayers
	name = "New Player"
	movable_flags = MOVABLE_FLAG_EFFECTMOVE
