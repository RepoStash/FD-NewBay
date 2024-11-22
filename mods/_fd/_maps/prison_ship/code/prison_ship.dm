/obj/overmap/visitable/ship/prison_ship
	name = "Unknown damaged transport ship"
	desc = "Sensor array is detecting a large transport ship which has been severely damaged. It shows some weak life signatures aboard."
	color = "#661c77"
	icon = 'maps/event/placeholders/gen-64.dmi'
	icon_state = "cf-dingo"
	moving_state = "ship_moving"
	fore_dir = EAST
	vessel_size = SHIP_SIZE_SMALL
	burn_delay = 0.5 SECONDS
	hide_from_reports = TRUE
	skill_needed = SKILL_TRAINED
	vessel_mass = 12000

/area/prison_ship/
	name = "\improper &%#@!*!%#"

/area/prison_ship/interior
	name = "\improper &%#@!&*!%#"

/datum/map_template/ruin/away_site/prison_ship
	name = "Unknown damaged transport ship"
	id = "prison_ship"
	description = ""
	prefix = "mods/_fd/_maps/prison_ship/maps/"
	suffixes = list("prison_ship.dmm")
	spawn_cost = 0.5

/obj/submap_landmark/joinable_submap/prison_ship
	name = "&%#@!*!%#"
	archetype = /singleton/submap_archetype/prison_ship

/singleton/submap_archetype/prison_ship
	descriptor = "???"
	map = "&%#@!*!%#"
	crew_jobs = list(/datum/job/submap/prison_ship/player)

/datum/job/submap/prison_ship/player
	title = "New Player"
	total_positions = 10
	spawn_positions = 10
	supervisors = "none"
	info = "none"
	whitelisted_species = list(SPECIES_HUMAN,SPECIES_IPC,SPECIES_SPACER,SPECIES_GRAVWORLDER,SPECIES_VATGROWN,SPECIES_TRITONIAN,SPECIES_ALIEN,SPECIES_UNATHI,SPECIES_VOX,SPECIES_TAJARA,SPECIES_UNATHI)
	loadout_allowed = TRUE
	skill_points = 52

/obj/submap_landmark/spawnpoint/prison_ship/player
	name = "New Player"
	movable_flags = MOVABLE_FLAG_EFFECTMOVE
