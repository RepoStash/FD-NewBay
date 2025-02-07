// Это - заглушка. Она не должна стать ПОСТОЯННОЙ. Её нужно будет заменить НОРМАЛЬНЫМ полноценным кодом расы, а не замаскированным симпл мобом!

#define SPECIES_COCKROACH       "Tartakan"
#define LANGUAGE_COCKROACH "Pesh-Ab"

/datum/species/tartakan
	name = SPECIES_COCKROACH
	name_plural = "Tartakan"

	darksight_range = 8
	darksight_tint = DARKTINT_GOOD

	has_organ = list()
	siemens_coefficient = 0
	blood_color = COLOR_ORANGE
	flesh_color = "#a3481d"
	species_flags = SPECIES_FLAG_NO_SLIP | SPECIES_FLAG_NO_POISON | SPECIES_FLAG_NO_EMBED | SPECIES_FLAG_NO_TANGLE | SPECIES_FLAG_NO_PAIN
	spawn_flags = SPECIES_IS_RESTRICTED
	genders = list(MALE)
	icobase = null
	deform = null
	damage_overlays = null
	damage_mask = null
	blood_mask = null

	total_health = 300                   // Point at which the mob will enter crit.
	unarmed_types = list(/datum/unarmed_attack/stomp, /datum/unarmed_attack/kick, /datum/unarmed_attack/punch, /datum/unarmed_attack/bite/sharp)

	natural_armour_values = list(
		melee = ARMOR_MELEE_RESISTANT,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SHIELDED
		)
	brute_mod =      0.5
	toxins_mod =     0
	radiation_mod =  0

	oxy_mod =        0.5
	flash_mod =      0
	slowdown = 1

	cold_level_1 = 180 //Default 260
	cold_level_2 = 120 //Default 200
	cold_level_3 = 60  //Default 120

	heat_level_1 = 300 //Default 360
	heat_level_2 = 350 //Default 400
	heat_level_3 = 700 //Default 1000

	heat_discomfort_level = 250
	heat_discomfort_strings = list(
		"Your shell starts to melt.",
		"You feel uncomfortably warm.",
		"Your overheated skin itches."
		)
	cold_discomfort_level = 190
	poison_types = list(GAS_PHORON = TRUE)

	hud_type = /datum/hud_data/tartakan

	strength = STR_HIGH
	min_age = 10
	max_age = 200

	speech_sounds = list(
		'mods/_fd/tartakans/sounds/talk1.ogg',
		'mods/_fd/tartakans/sounds/talk2.ogg',
		'mods/_fd/tartakans/sounds/talk3.ogg',
		'mods/_fd/tartakans/sounds/talk4.ogg'
	)
	speech_chance = 50

/datum/species/tartakan/handle_post_spawn(mob/living/carbon/human/tartakan/H)
	H.ai_holder = new /datum/ai_holder/human/tartakan (H)

/datum/ai_holder/human/tartakan
	base_wander_delay = 2
	wander_chance = 55
	wander_when_pulled = TRUE
	violent_breakthrough = FALSE
	flee_from_allies = TRUE
	lose_target_timeout = 30 SECONDS

/datum/hud_data/tartakan

	gear = list(
		"i_clothing" =   list("loc" = ui_iclothing, "name" = "Uniform",      "slot" = slot_w_uniform, "state" = "center", "toggle" = 1),
		"back" =         list("loc" = ui_back,      "name" = "Back",         "slot" = slot_back,      "state" = "back"),
		"id" =           list("loc" = ui_id,        "name" = "ID",           "slot" = slot_wear_id,   "state" = "id"),
		"storage1" =     list("loc" = ui_storage1,  "name" = "Left Pocket",  "slot" = slot_l_store,   "state" = "pocket"),
		"storage2" =     list("loc" = ui_storage2,  "name" = "Right Pocket", "slot" = slot_r_store,   "state" = "pocket"),
		"belt" =         list("loc" = ui_belt,      "name" = "Belt",         "slot" = slot_belt,      "state" = "belt")
		)

/mob/living/carbon/human/tartakan
	desc = "A giant four-arms cockroach with surprisingly friendly face."
	see_in_dark = 8
	icon = 'mods/_fd/tartakans/icons/mob.dmi'
	icon_state = "example_male"

	var/outfits = list(/singleton/hierarchy/outfit/tartakan,
						/singleton/hierarchy/outfit/tartakan/alt1,
						/singleton/hierarchy/outfit/tartakan/alt2,
						/singleton/hierarchy/outfit/tartakan/alt3,
						/singleton/hierarchy/outfit/tartakan/alt4,
						/singleton/hierarchy/outfit/tartakan/alt5,
						/singleton/hierarchy/outfit/tartakan/alt6,
						/singleton/hierarchy/outfit/tartakan/alt7,
						/singleton/hierarchy/outfit/tartakan/alt8,
						/singleton/hierarchy/outfit/tartakan/alt10,
						/singleton/hierarchy/outfit/tartakan/alt11,
						/singleton/hierarchy/outfit/tartakan/alt12,
						/singleton/hierarchy/outfit/tartakan/alt13,
						/singleton/hierarchy/outfit/tartakan/alt14,
						/singleton/hierarchy/outfit/tartakan/alt15,
						/singleton/hierarchy/outfit/tartakan/alt16,
						/singleton/hierarchy/outfit/tartakan/alt17,
						/singleton/hierarchy/outfit/tartakan/alt18,
						)

/obj/sprite_helper/tartakan
	icon = 'mods/_fd/tartakans/icons/mob.dmi' // ВСТАВИТЬ СЮДА СПРАЙТ ТАРТАКАНА
	icon_state = "example_male"

/mob/living/carbon/human/tartakan/New()
	..()
	spawn (20)
		fix_icons()
	set_species(SPECIES_COCKROACH)
	add_language(LANGUAGE_COCKROACH)
	equip_outfit(src)

/mob/living/carbon/human/tartakan/proc/equip_outfit(mob/living/carbon/human/tartakan/M)
	var/singleton/hierarchy/outfit/outfit = outfit_by_type(pickweight(outfits))
	outfit.equip(M)

/mob/living/carbon/human/tartakan/Move()
	..()
	update_stuff()

/mob/living/carbon/human/tartakan/forceMove(destination)
	. = ..(destination)
	update_stuff()

/mob/living/carbon/human/tartakan/proc/update_stuff()
	fix_icons()

/mob/living/carbon/human/tartakan/proc/fix_icons()
	icon = null
	icon_state = null
	stand_icon = null
	lying_icon = null
	update_icon = FALSE
	if (!vis_contents.len)
		vis_contents += new /obj/sprite_helper/tartakan
	var/obj/sprite_helper/tartakan/SH = vis_contents[vis_contents.len]
	if (lying || resting)
		SH.icon = turn(icon('mods/_fd/tartakans/icons/mob.dmi'), 90)
	else
		SH.icon = 'mods/_fd/tartakans/icons/mob.dmi'
	SH.dir = dir

/datum/language/tartakan
	name = LANGUAGE_COCKROACH
	desc = "The traditional vocal language, used by tartakan's. Composed from different-tone buzzling and rattling."
	speech_verb = "жужжит"
	ask_verb = "трещит"
	exclaim_verb = "звенит"
	colour = "rough"
	key = "k"
	flags = WHITELISTED
	syllables = list("bzz","shh","bzzZzzZZ","BZZZz","sHHh","trRRrk","krkrkr","BzZ","Shh","KrrrrrT")
	shorthand = "PA"
	has_written_form = FALSE

/datum/language/tartakan/get_random_name()
	var/new_name = "[pick(list("Karton","Buger","Krisp","Hisset","Roacher","Wass","Shellard","Inston","Hopper"))]"
	return new_name
