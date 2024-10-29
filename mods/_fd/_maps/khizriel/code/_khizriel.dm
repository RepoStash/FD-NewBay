// Map template data.
/datum/map_template/ruin/away_site/khizriel
	name = "IPV Khizriel"
	id = "khizriel"
	description = "."
	prefix = "mods/_fd/_maps/khizriel/maps/"
	suffixes = list("khizriel.dmm")
	spawn_cost = 2
	area_usage_test_exempted_root_areas = /area/ship/khizriel
	shuttles_to_initialise = list(/datum/shuttle/autodock/overmap/khizriel)

/obj/overmap/visitable/sector/khizriel
	name = "Bluespace Residue"
	desc = "/ERROR/."
	icon_state = "event"
	hide_from_reports = TRUE
	sector_flags = OVERMAP_SECTOR_IN_SPACE | OVERMAP_SECTOR_UNTARGETABLE

/obj/submap_landmark/joinable_submap/khizriel
	name = "IPV Khizriel"
	archetype = /singleton/submap_archetype/khizriel
