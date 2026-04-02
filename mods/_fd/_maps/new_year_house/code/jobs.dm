/datum/job/submap/ny_house
	title = "Actor"
	total_positions = -1
	create_record = TRUE
	skill_points = 52
	no_skill_buffs = TRUE
	max_skill = list(
		SKILL_BUREAUCRACY = SKILL_MAX,
		SKILL_FINANCE = SKILL_MAX,
		SKILL_EVA = SKILL_MAX,
		SKILL_MECH = SKILL_MAX,
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

/datum/job/submap/ny_house/service
	title = "Cook"
	supervisors = "Chef"
	selection_color = "#01882e"
	total_positions = 2
	is_semi_antagonist = TRUE // So they can AOOC us

/datum/job/submap/ny_house/service/chef
	title = "Chef"
	supervisors = "Director"
	total_positions = 1

/datum/job/submap/ny_house/service/bar
	title = "Bartender"
	total_positions = 1

/datum/job/submap/ny_house/service/waiter
	title = "Waiter"
	total_positions = 4


// Spawns

/obj/submap_landmark/spawnpoint/ny_house
	name = "Actor"

/obj/submap_landmark/spawnpoint/ny_house/service
	name = "Cook"

/obj/submap_landmark/spawnpoint/ny_house/service/chef
	name = "Chef"

/obj/submap_landmark/spawnpoint/ny_house/service/bar
	name = "Bartender"

/obj/submap_landmark/spawnpoint/ny_house/service/waiter
	name = "Waiter"


/singleton/submap_archetype/ny_house
	descriptor = "NY House"
	map = "NY House"
	crew_jobs = list(
		/datum/job/submap/ny_house,
		/datum/job/submap/ny_house/service/chef,
		/datum/job/submap/ny_house/service,
		/datum/job/submap/ny_house/service/bar,
		/datum/job/submap/ny_house/service/waiter
	)

/obj/submap_landmark/joinable_submap/ny_house
	name = "NY Party House"
	archetype = /singleton/submap_archetype/ny_house
