/mob/living/carbon/human/ascent_monarch/Defiler/Initialize(mapload, new_species)
	. = ..()

	QDEL_NULL(internal_organs_by_name["system controller"])

	remove_language(LANGUAGE_SKRELLIAN)
	remove_language("Ascent-Glow")
	remove_language("Ascent-Voc")
	remove_language("Worldnet")
	universal_understand = TRUE

	tf_scale_x = 0.75
	tf_scale_y = 0.75
	SetTransform()

	eye_color = "#ba7300"
	update_eyes()

	for(var/singleton/hierarchy/skill/skill in GLOB.skills)
		skillset.skill_list[skill.type] = SKILL_UNSKILLED
	skillset.skill_list[SKILL_HAULING] = SKILL_EXPERIENCED
	skillset.skill_list[SKILL_COMBAT] = SKILL_EXPERIENCED

	verbs += /mob/living/proc/ventcrawl
	verbs += /mob/living/proc/hide

	mob_size = MOB_MEDIUM

/mob/living/carbon/human/ascent_monarch/Defiler/reset_layer()
	. = ..()
	if(!hiding)
		layer = LYING_HUMAN_LAYER

/obj/landmark/Defiler
	name = "Defiler spawn"
	icon_state = "x"

/obj/landmark/Defiler/Initialize()
	..()
	return INITIALIZE_HINT_LATELOAD

/obj/landmark/Defiler/LateInitialize(mapload, ...)
	. = ..()
	var/mob/living/carbon/human/ascent_monarch/Defiler/mob = new(loc)
	mob.ckey = "1"
	mob.SetSleeping(10)
	mob.stat = 1
	mob.lay_down()
	qdel(src)
