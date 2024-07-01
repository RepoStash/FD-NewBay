/area/map_template/shelters_alt
	name = "\improper Ancient elevator"
	icon_state = "hallC1"
	icon = 'icons/turf/areas.dmi'
/area/map_template/shelters_alt/shelters_alt2
	name = "\improper Ancient crashsite"

/datum/map_template/ruin/exoplanet/shelter1
	name = "Ancient elevator"
	id = "shelter1"
	description = "A shelter for those who live on local ruined ecumenopolis."
	suffixes = list("shelters/shelter_1.dmm")
	spawn_cost = 1
	template_flags = TEMPLATE_FLAG_CLEAR_CONTENTS|TEMPLATE_FLAG_NO_RUINS
	ruin_tags = RUIN_WRECK

/datum/map_template/ruin/exoplanet/shelter2
	name = "Ancient crashsite"
	id = "shelter2"
	description = "A shelter for those who live on local ruined ecumenopolis."
	suffixes = list("shelters/shelter_2.dmm")
	spawn_cost = 0.6
	template_flags = TEMPLATE_FLAG_CLEAR_CONTENTS|TEMPLATE_FLAG_NO_RUINS
	ruin_tags = RUIN_WRECK