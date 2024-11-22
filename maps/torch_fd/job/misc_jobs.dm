/********
Synthetic
********/

/datum/job/cyborg
	total_positions = 0
	spawn_positions = 0
	supervisors = "your laws"
	minimal_player_age = 3
	allowed_ranks = list(
		/datum/mil_rank/civ/synthetic
	)

/datum/job/ai
	minimal_player_age = 7
	total_positions = 0
	spawn_positions = 0
	allowed_ranks = list(
		/datum/mil_rank/civ/synthetic
	)

/*******
Civilian
*******/

/datum/job/new_crew
	title = "Unassigned Crewman"
	total_positions = -1
	spawn_positions = -1
	supervisors = "the Executive Officer"
	economic_power = 8
	department = "Civilian"
	department_flag = CIV
	outfit_type = /singleton/hierarchy/outfit/job/torch/passenger/passenger
	loadout_allowed = TRUE
	announced = TRUE
	max_skill = list(
		SKILL_BUREAUCRACY = SKILL_MAX,
		SKILL_FINANCE = SKILL_MAX,
		SKILL_EVA = SKILL_MAX,
		SKILL_PILOT = SKILL_MAX,
		SKILL_HAULING = SKILL_MAX,
		SKILL_COMPUTER = SKILL_MAX,
		SKILL_BOTANY = SKILL_MAX,
		SKILL_COOKING = SKILL_MAX,
		SKILL_COMBAT = SKILL_MAX,
		SKILL_WEAPONS = SKILL_MAX,
		SKILL_FORENSICS = SKILL_MAX,
		SKILL_CONSTRUCTION = SKILL_MAX,
		SKILL_ELECTRICAL = SKILL_MAX,
		SKILL_ATMOS = SKILL_MAX,
		SKILL_ENGINES = SKILL_MAX,
		SKILL_DEVICES = SKILL_MAX,
		SKILL_SCIENCE = SKILL_MAX,
		SKILL_MEDICAL = SKILL_MAX,
		SKILL_ANATOMY = SKILL_MAX,
		SKILL_CHEMISTRY = SKILL_MAX
	)
	skill_points = 48
	allowed_branches = list(
		/datum/mil_branch/civilian,
		/datum/mil_branch/fleet = /singleton/hierarchy/outfit/job/torch/crew/service/crewman/fleet,
		/datum/mil_branch/expeditionary_corps = /singleton/hierarchy/outfit/job/torch/crew/service/crewman,
		/datum/mil_branch/iccgn = /singleton/hierarchy/outfit/job/iccgn/iccgn_droptroops,
		/datum/mil_branch/scga = /singleton/hierarchy/outfit/job/torch/crew/service/crewman/army
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/civ,
		/datum/mil_rank/civ/contractor,
		/datum/mil_rank/fleet/e2,
		/datum/mil_rank/fleet/e3,
		/datum/mil_rank/fleet/e4,
		/datum/mil_rank/fleet/e5,
		/datum/mil_rank/fleet/e6,
		/datum/mil_rank/fleet/e7,
		/datum/mil_rank/fleet/e8,
		/datum/mil_rank/fleet/e9,
		/datum/mil_rank/fleet/o1,
		/datum/mil_rank/ec/e1,
		/datum/mil_rank/ec/e3,
		/datum/mil_rank/ec/e5,
		/datum/mil_rank/ec/e7,
		/datum/mil_rank/ec/o1,
		/datum/mil_rank/ec/o3,
		/datum/mil_rank/iccgn/of1,
		/datum/mil_rank/iccgn/of2,
		/datum/mil_rank/iccgn/of3,
		/datum/mil_rank/iccgn/of4,
		/datum/mil_rank/iccgn/of5,
		/datum/mil_rank/iccgn/of6,
		/datum/mil_rank/iccgn/of7,
		/datum/mil_rank/iccgn/of8,
		/datum/mil_rank/iccgn/of9,
		/datum/mil_rank/iccgn/or1,
		/datum/mil_rank/iccgn/or3,
		/datum/mil_rank/scga/e2,
		/datum/mil_rank/scga/e3,
		/datum/mil_rank/scga/e4,
		/datum/mil_rank/scga/e5,
		/datum/mil_rank/scga/e6,
		/datum/mil_rank/scga/e7,
		/datum/mil_rank/scga/e8,
		/datum/mil_rank/scga/e9,
		/datum/mil_rank/scga/o1,
		/datum/mil_rank/scga/o2
	)

/datum/job/assistant
	title = "Passenger"
	total_positions = 4
	spawn_positions = 4
	supervisors = "the Executive Officer"
	economic_power = 6
	loadout_allowed = TRUE
	announced = FALSE
	alt_titles = list("Gardener")
	skill_points = 52
	outfit_type = /singleton/hierarchy/outfit/job/torch/passenger/passenger
	allowed_branches = list(/datum/mil_branch/civilian)
	allowed_ranks = list(
		/datum/mil_rank/civ/civ,
		/datum/mil_rank/civ/contractor
	)
	min_goals = 2
	max_goals = 7

/datum/job/merchant
	title = "Merchant"
	department = "Civilian"
	department_flag = CIV
	total_positions = 0
	spawn_positions = 0
	availablity_chance = 30
	supervisors = "the invisible hand of the market"
	ideal_character_age = 30
	minimal_player_age = 0
	create_record = 0
	outfit_type = /singleton/hierarchy/outfit/job/torch/merchant
	allowed_branches = list(
		/datum/mil_branch/civilian,
		/datum/mil_branch/alien
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/civ,
		/datum/mil_rank/alien
	)
	latejoin_at_spawnpoints = 1
	access = list(access_merchant)
	announced = FALSE
	min_skill = list(   SKILL_FINANCE = SKILL_TRAINED,
	                    SKILL_PILOT	  = SKILL_BASIC)

	max_skill = list(   SKILL_PILOT       = SKILL_MAX)
	skill_points = 24
	required_language = null
	give_psionic_implant_on_join = FALSE
