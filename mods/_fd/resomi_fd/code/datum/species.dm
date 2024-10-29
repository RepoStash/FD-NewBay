#define CULTURE_HUMAN_MARTIAN_FD        "Martian, Surfacer"
#define CULTURE_HUMAN_MARSTUN_FD        "Martian, Tunneller"
#define CULTURE_HUMAN_LUNAPOOR_FD       "Luna, Lower Class"
#define CULTURE_HUMAN_LUNARICH_FD       "Luna, Upper Class"
#define CULTURE_HUMAN_VENUSIAN_FD       "Venusian, Zoner"
#define CULTURE_HUMAN_BELTER_FD         "Belter, Ceres"
#define CULTURE_HUMAN_PLUTO_FD          "Plutonian"

#define HOME_SYSTEM_LUNA_FD       "Luna"
#define HOME_SYSTEM_MARS_FD       "Mars"
#define HOME_SYSTEM_VENUS_FD      "Venus"
#define HOME_SYSTEM_CERES_FD      "Ceres"
#define HOME_SYSTEM_PLUTO_FD      "Pluto"

/datum/species/resomi
	name = SPECIES_RESOMI
	name_plural = "Resomii"
	description = "A race of feathered raptors who developed in a cold world. \
	Extremely fragile, they developed hunting skills that emphasized taking \
	out their prey without themselves getting hit. They are pretty new species, \
	discovered by humans."

	min_age = 15
	max_age = 65
	hidden_from_codex = FALSE
	health_hud_intensity = 3

	blood_color = "#d514f7"
	flesh_color = "#5f7bb0"
	base_color = "#001144"
	tail = "resomitail"
	tail_hair = "feathers"
	strength = STR_HIGH
	breath_pressure = 12

	move_trail = /obj/decal/cleanable/blood/tracks/paw

	icobase = 			'packs/infinity/icons/mob/human_races/species/resomi/body.dmi'
	deform = 			'packs/infinity/icons/mob/human_races/species/resomi/body.dmi'
	damage_overlays = 	'packs/infinity/icons/mob/human_races/species/resomi/damage_overlay.dmi'
	damage_mask = 		'packs/infinity/icons/mob/human_races/species/resomi/damage_mask.dmi'
	blood_mask = 		'packs/infinity/icons/mob/human_races/species/resomi/blood_mask.dmi'
	preview_icon =		'packs/infinity/icons/mob/human_races/species/resomi/preview.dmi'
	husk_icon = 		'packs/infinity/icons/mob/human_races/species/resomi/husk.dmi'

	slowdown = -0.8 //speed fix?

	darksight_range = 7
	darksight_tint = DARKTINT_GOOD
	flash_mod = 2
	total_health = 150
	brute_mod = 1.35
	burn_mod =  1.35
	metabolism_mod = 2.0
	mob_size = MOB_SMALL
	holder_type = /obj/item/holder/human
	light_sensitive = 6
	blood_volume = 280
	hunger_factor = DEFAULT_HUNGER_FACTOR * 1.5
	thirst_factor = DEFAULT_THIRST_FACTOR * 1.3
	taste_sensitivity = TASTE_SENSITIVE
	body_temperature = 314.15

	spawn_flags = SPECIES_CAN_JOIN | SPECIES_IS_WHITELISTED | SPECIES_NO_FBP_CONSTRUCTION | SPECIES_NO_FBP_CHARGEN
	appearance_flags = SPECIES_APPEARANCE_HAS_HAIR_COLOR | SPECIES_APPEARANCE_HAS_SKIN_COLOR | SPECIES_APPEARANCE_HAS_EYE_COLOR | SPECIES_APPEARANCE_HAS_A_SKIN_TONE
	bump_flag = MONKEY
	swap_flags = MONKEY|SLIME|SIMPLE_ANIMAL
	push_flags = MONKEY|SLIME|SIMPLE_ANIMAL|ALIEN

	cold_level_1 = 180
	cold_level_2 = 130
	cold_level_3 = 70
	heat_level_1 = 320
	heat_level_2 = 370
	heat_level_3 = 600
	heat_discomfort_level = 292
	heat_discomfort_strings = list(
		"Вашу кожу покалывает от жары.",
		"Вам жарко.")
	cold_discomfort_level = 200
	cold_discomfort_strings = list(
		"Вы не чувствуете своих лап из-за холода.",
		"Вы чувствуете усталость и чувство холода.",
		"Ваши перья щетинятся от холода.")

	has_limbs = list(
		BP_CHEST =  list("path" = /obj/item/organ/external/chest),
		BP_GROIN =  list("path" = /obj/item/organ/external/groin),
		BP_HEAD =   list("path" = /obj/item/organ/external/head),
		BP_L_ARM =  list("path" = /obj/item/organ/external/arm),
		BP_R_ARM =  list("path" = /obj/item/organ/external/arm/right),
		BP_L_LEG =  list("path" = /obj/item/organ/external/leg),
		BP_R_LEG =  list("path" = /obj/item/organ/external/leg/right),
		BP_L_HAND = list("path" = /obj/item/organ/external/hand/resomi),
		BP_R_HAND = list("path" = /obj/item/organ/external/hand/right/resomi),
		BP_L_FOOT = list("path" = /obj/item/organ/external/foot/resomi),
		BP_R_FOOT = list("path" = /obj/item/organ/external/foot/right/resomi)
		)

	has_organ = list(
		BP_HEART =    /obj/item/organ/internal/heart,
		BP_LUNGS =    /obj/item/organ/internal/lungs,
		BP_LIVER =    /obj/item/organ/internal/liver/resomi,
		BP_STOMACH =  /obj/item/organ/internal/stomach,
		BP_KIDNEYS =  /obj/item/organ/internal/kidneys/resomi,
		BP_BRAIN =    /obj/item/organ/internal/brain,
		BP_EYES =     /obj/item/organ/internal/eyes/resomi
		)

	unarmed_types = list(
		/datum/unarmed_attack/bite/sharp,
		/datum/unarmed_attack/claws,
		/datum/unarmed_attack/punch,
		/datum/unarmed_attack/stomp/weak
		)

	inherent_verbs = list(
		/mob/living/carbon/human/proc/resomi_sonar_ping,
		/mob/living/proc/toggle_pass_table,
		/mob/proc/switch_tail_layer
		)

	descriptors = list(
		/datum/mob_descriptor/height = -8,
		/datum/mob_descriptor/build = -8
		)

	available_cultural_info = list(
		TAG_CULTURE = list(
			CULTURE_HUMAN_LUNAPOOR_FD,
			CULTURE_HUMAN_LUNARICH_FD,
			CULTURE_HUMAN_VENUSIAN_FD,
			CULTURE_HUMAN_MARTIAN_FD,
			CULTURE_HUMAN_MARSTUN_FD,
			CULTURE_HUMAN_PLUTO_FD,
			CULTURE_HUMAN_BELTER_FD,
			CULTURE_RESOMI_TEMALI,
			CULTURE_RESOMI_SHAYAMI,
			CULTURE_RESOMI_SHOSHONI,
			CULTURE_RESOMI_ATARI,
			CULTURE_RESOMI_OTHER,
			CULTURE_RESOMI_SPACER,
			CULTURE_OTHER
		),
		TAG_HOMEWORLD = list(
			HOME_SYSTEM_RESOMI_ALISH,
			HOME_SYSTEM_LUNA_FD,
			HOME_SYSTEM_VENUS_FD,
			HOME_SYSTEM_MARS_FD,
			HOME_SYSTEM_PLUTO_FD,
			HOME_SYSTEM_CERES_FD,
			HOME_SYSTEM_OTHER
		),
		TAG_FACTION = list(
			FACTION_RESOMI_URE,
			FACTION_RESOMI_CONCORD,
			FACTION_RESOMI_INDEPENDENT,
			FACTION_FREETRADE,
			FACTION_XYNERGY,
			FACTION_EXPEDITIONARY,
			FACTION_CORPORATE,
			FACTION_MAJOR_BILL,
			FACTION_OTHER
		),
		TAG_RELIGION =  list(
			RELIGION_OTHER
		)
	)

/datum/species/resomi/equip_survival_gear(mob/living/carbon/human/H)
	..()
	H.equip_to_slot_or_del(new /obj/item/clothing/glasses/sunglasses/lenses(H), slot_glasses)

/datum/species/resomi/get_surgery_overlay_icon(mob/living/carbon/human/H)
	return 'packs/infinity/icons/mob/human_races/species/resomi/surgery.dmi'

/datum/species/resomi/skills_from_age(age)
	switch(age)
		if(0 to 17)		. = 0
		if(18 to 25)	. = 2
		if(26 to 35)	. = 6
		else			. = 0

/datum/species/resomi
	default_emotes = list(
		/singleton/emote/audible/chuckle/resomi,
		/singleton/emote/audible/cough/resomi,
		/singleton/emote/audible/laugh/resomi,
		/singleton/emote/audible/scream/resomi,
		/singleton/emote/audible/sneeze/resomi,
		/singleton/emote/audible/peep/resomi,
		/singleton/emote/audible/rustle/resomi,
		/singleton/emote/audible/trill/resomi,
		/singleton/emote/audible/warble/resomi,
		/singleton/emote/audible/wurble/resomi
		)

#undef CULTURE_HUMAN_MARTIAN_FD
#undef CULTURE_HUMAN_MARSTUN_FD
#undef CULTURE_HUMAN_LUNAPOOR_FD
#undef CULTURE_HUMAN_LUNARICH_FD
#undef CULTURE_HUMAN_VENUSIAN_FD
#undef CULTURE_HUMAN_BELTER_FD
#undef CULTURE_HUMAN_PLUTO_FD

#undef HOME_SYSTEM_LUNA_FD
#undef HOME_SYSTEM_MARS_FD
#undef HOME_SYSTEM_VENUS_FD
#undef HOME_SYSTEM_CERES_FD
#undef HOME_SYSTEM_PLUTO_FD
