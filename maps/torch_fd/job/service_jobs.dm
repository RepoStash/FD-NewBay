/datum/job/chief_steward
	title = "Chief Steward"
	department = "Service"
	department_flag = SRV
	total_positions = 0
	spawn_positions = 0
	minimum_character_age = 0
	ideal_character_age = 35
	economic_power = 6
	minimal_player_age = 7
	supervisors = "the Executive Officer"
	outfit_type = /singleton/hierarchy/outfit/job/torch/crew/service/chief_steward
	allowed_branches = list(
		/datum/mil_branch/expeditionary_corps,
		/datum/mil_branch/civilian = /singleton/hierarchy/outfit/job/torch/crew/service/cook,
		/datum/mil_branch/fleet = /singleton/hierarchy/outfit/job/torch/crew/service/chief_steward/fleet
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/contractor,
		/datum/mil_rank/ec/e7,
		/datum/mil_rank/fleet/e7,
		/datum/mil_rank/fleet/e6
	)

	min_skill = list(
		SKILL_BUREAUCRACY = SKILL_TRAINED,
		SKILL_COOKING = SKILL_TRAINED,
		SKILL_BOTANY = SKILL_BASIC,
		SKILL_CHEMISTRY = SKILL_BASIC
	)
	access = list(
		access_bridge,
		access_torch_fax,
		access_chief_steward,
		access_solgov_crew,
		access_radio_comm,
		access_radio_serv,
		access_emergency_storage,
		access_janitor,
		access_commissary,
		access_hydroponics,
		access_kitchen,
		access_o_mess
	)

/datum/job/chaplain
	title = "Chaplain"
	department = "Service"
	department_flag = SRV
	total_positions = 0
	spawn_positions = 0
	minimum_character_age = list(SPECIES_HUMAN = 24)
	ideal_character_age = 40
	economic_power = 6
	minimal_player_age = 0
	supervisors = "the Executive Officer"
	outfit_type = /singleton/hierarchy/outfit/job/torch/crew/service/chaplain
	allowed_branches = list(
		/datum/mil_branch/civilian,
		/datum/mil_branch/expeditionary_corps = /singleton/hierarchy/outfit/job/torch/crew/service/chaplain/ec,
		/datum/mil_branch/fleet = /singleton/hierarchy/outfit/job/torch/crew/service/chaplain/fleet)
	allowed_ranks = list(
		/datum/mil_rank/civ/contractor,
		/datum/mil_rank/fleet/o1,
		/datum/mil_rank/fleet/o2,
		/datum/mil_rank/ec/o1)
	min_skill = list(SKILL_BUREAUCRACY = SKILL_BASIC)

	access = list(
		access_morgue, access_chapel_office,
		access_crematorium, access_solgov_crew,
		access_radio_serv
	)

/datum/job/janitor
	title = "Sanitation Technician"
	department = "Service"
	department_flag = SRV
	total_positions = 0
	spawn_positions = 0
	supervisors = "the Chief Steward"
	minimum_character_age = list(SPECIES_HUMAN = 20)
	ideal_character_age = 20
	alt_titles = list(
		"Custodian",
		"Janitor")
	outfit_type = /singleton/hierarchy/outfit/job/torch/crew/service/janitor
	allowed_branches = list(
		/datum/mil_branch/civilian,
		/datum/mil_branch/expeditionary_corps = /singleton/hierarchy/outfit/job/torch/crew/service/janitor/ec,
		/datum/mil_branch/fleet = /singleton/hierarchy/outfit/job/torch/crew/service/janitor/fleet
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/contractor,
		/datum/mil_rank/fleet/e2,
		/datum/mil_rank/fleet/e3,
		/datum/mil_rank/fleet/e4
	)
	min_skill = list(   SKILL_HAULING = SKILL_BASIC)

	access = list(
		access_maint_tunnels, access_emergency_storage,
		access_janitor, access_solgov_crew,
		access_radio_serv
	)


/datum/job/chef
	title = "Steward"
	department = "Service"
	department_flag = SRV
	total_positions = 1
	spawn_positions = 1
	minimum_character_age = 0
	supervisors = "the Chief Steward"
	alt_titles = list(
		"Bartender",
		"Cook",
		"Culinary Specialist"
	)
	outfit_type = /singleton/hierarchy/outfit/job/torch/crew/service/cook
	allowed_branches = list(
		/datum/mil_branch/civilian,
		/datum/mil_branch/expeditionary_corps = /singleton/hierarchy/outfit/job/torch/crew/service/cook/ec,
		/datum/mil_branch/fleet = /singleton/hierarchy/outfit/job/torch/crew/service/cook/fleet
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/contractor,
		/datum/mil_rank/civ/civ,
		/datum/mil_rank/ec/e3,
		/datum/mil_rank/ec/e5,
		/datum/mil_rank/fleet/e2,
		/datum/mil_rank/fleet/e3,
		/datum/mil_rank/fleet/e4,
		/datum/mil_rank/fleet/e5
	)

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
	skill_points = 52
	access = list(
		access_commissary,
		access_hydroponics,
		access_kitchen,
		access_radio_serv,
		access_solgov_crew,
		access_o_mess
	)


/datum/job/crew
	title = "Crewman"
	department = "Service"
	department_flag = SRV
	total_positions = 9
	spawn_positions = 9
	supervisors = "the Chief Steward"
	loadout_allowed = TRUE
	minimum_character_age = 0
	ideal_character_age = 20
	allowed_branches = list(
		/datum/mil_branch/expeditionary_corps,
		/datum/mil_branch/fleet = /singleton/hierarchy/outfit/job/torch/crew/service/crewman/fleet,
		/datum/mil_branch/scga = /singleton/hierarchy/outfit/job/torch/crew/service/crewman/army,
		/datum/mil_branch/civilian
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/civ,
		/datum/mil_rank/ec/e3,
		/datum/mil_rank/fleet/e2,
		/datum/mil_rank/fleet/e3,
		/datum/mil_rank/fleet/e4,
		/datum/mil_rank/scga/e2,
		/datum/mil_rank/scga/e3,
		/datum/mil_rank/scga/e4
	)
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
	skill_points = 52

	access = list(
		access_maint_tunnels, access_emergency_storage,
		access_solgov_crew, access_radio_serv
	)
