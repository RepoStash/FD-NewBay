// Submap datum and archetype.
/singleton/submap_archetype/khizriel
	descriptor = "IPV Khizriel"
	map = "Khizriel"
	crew_jobs = list(/datum/job/submap/khizriel/crewman, /datum/job/submap/khizriel/cyborg)

/obj/item/card/id/syndicate_command/khizriel
	name = "Khizriel Crewman"
	desc = ""
	registered_name = "Khizriel"
	assignment = "Khizriel Interceptor"
	access = list(access_syndicate)
	color = COLOR_RED_GRAY
	detail_color = COLOR_GRAY40

/obj/item/card/id/synthetic/khizriel

	access = list(access_syndicate)

/datum/job/submap/khizriel/crewman
	title = "Khizriel Crewman"
	total_positions = 12
	spawn_positions = 12
	supervisors = "orders of your Captain."
	info = "You are a lawless crew member of pirate's Vessel - Khizriel. You have no mercy, no remorse or fear. Only greed."
	whitelisted_species = list(SPECIES_HUMAN,SPECIES_IPC,SPECIES_SPACER,SPECIES_GRAVWORLDER,SPECIES_VATGROWN,SPECIES_TRITONIAN,SPECIES_ALIEN,SPECIES_UNATHI, SPECIES_VOX)
	is_semi_antagonist = TRUE
	access = list(access_syndicate)
	outfit_type = /singleton/hierarchy/outfit/job/khizriel/crewman
	loadout_allowed = TRUE
	skill_points = 26
	min_skill = list(
		SKILL_EVA = SKILL_TRAINED,
		SKILL_HAULING = SKILL_BASIC,
		SKILL_COMBAT = SKILL_BASIC,
		SKILL_WEAPONS = SKILL_TRAINED,
		SKILL_PILOT = SKILL_BASIC
	)

/singleton/hierarchy/outfit/job/khizriel/crewman
	name = "Khizriel Crewman"
	uniform = /obj/item/clothing/under/color/black
	l_pocket = /obj/item/device/flashlight/maglight
	shoes = /obj/item/clothing/shoes/black
	id_slot = slot_wear_id
	id_types = list(/obj/item/card/id/syndicate_command/khizriel)
	pda_type = /obj/item/modular_computer/pda

/obj/submap_landmark/spawnpoint/khizriel/crewman
	name = "Khizriel Crewman"
	movable_flags = MOVABLE_FLAG_EFFECTMOVE

/datum/job/submap/khizriel/cyborg
	title = "Khizriel Bot"
	total_positions = 1
	spawn_positions = 1
	supervisors = "Your laws and your crew."
	minimal_player_age = 7
	account_allowed = 0
	economic_power = 0
	loadout_allowed = FALSE
	outfit_type = /singleton/hierarchy/outfit/job/silicon/cyborg
	hud_icon = "hudblank"
	skill_points = 0
	min_skill = list(
		SKILL_BUREAUCRACY   = SKILL_EXPERIENCED,
		SKILL_FINANCE       = SKILL_EXPERIENCED,
		SKILL_EVA           = SKILL_EXPERIENCED,
		SKILL_MECH          = SKILL_EXPERIENCED,
		SKILL_PILOT         = SKILL_EXPERIENCED,
		SKILL_HAULING       = SKILL_UNSKILLED,
		SKILL_COMPUTER      = SKILL_MASTER,
		SKILL_BOTANY        = SKILL_EXPERIENCED,
		SKILL_COOKING       = SKILL_EXPERIENCED,
		SKILL_COMBAT        = SKILL_EXPERIENCED,
		SKILL_WEAPONS       = SKILL_EXPERIENCED,
		SKILL_FORENSICS     = SKILL_EXPERIENCED,
		SKILL_CONSTRUCTION  = SKILL_EXPERIENCED,
		SKILL_ELECTRICAL    = SKILL_EXPERIENCED,
		SKILL_ATMOS         = SKILL_EXPERIENCED,
		SKILL_ENGINES       = SKILL_EXPERIENCED,
		SKILL_DEVICES       = SKILL_EXPERIENCED,
		SKILL_SCIENCE       = SKILL_EXPERIENCED,
		SKILL_MEDICAL       = SKILL_EXPERIENCED,
		SKILL_ANATOMY       = SKILL_EXPERIENCED,
		SKILL_CHEMISTRY     = SKILL_EXPERIENCED
	)

/datum/job/submap/khizriel/cyborg/handle_variant_join(mob/living/carbon/human/H, alt_title)
	return H && H.Robotize(SSrobots.get_mob_type_by_title(alt_title || title))

/datum/job/submap/khizriel/cyborg/equip(mob/living/carbon/human/H)
	return !!H

/datum/job/submap/khizriel/cyborg/New(datum/submap/_owner, abstract_job = FALSE)
	..()
	alt_titles = SSrobots.robot_alt_titles.Copy()
	alt_titles -= title // So the unit test doesn't flip out if a mob or mmi type is declared for our main title.

/obj/submap_landmark/spawnpoint/khizriel/cyborg
	name = "Khizriel Bot"
	movable_flags = MOVABLE_FLAG_EFFECTMOVE
