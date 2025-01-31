/datum/map_template/ruin/away_site/cascade
	name = "cascade"
	id = "cascade_rooms"
	spawn_cost = 2
	description = "..."
	prefix = "mods/_fd/_maps/cascade/maps/"
	suffixes = list("cascade.dmm")
	area_usage_test_exempted_root_areas = list(/area/map_template/cascade)
	apc_test_exempt_areas = list(
		/area/map_template/cascade = NO_SCRUBBER|NO_VENT|NO_APC
	)

/datum/map_template/ruin/away_site/bs_device
	name = "bluespace cascade"
	id = "bs_device"
	spawn_cost = 2
	description = "..."
	prefix = "mods/_fd/_maps/cascade/maps/"
	suffixes = list("device.dmm")
	area_usage_test_exempted_root_areas = list(/area/map_template/cascade)
	apc_test_exempt_areas = list(
		/area/map_template/cascade = NO_SCRUBBER|NO_VENT|NO_APC
	)

/area/map_template/cascade

	name = "random area"
	requires_power = 0

/area/map_template/bs_device

	name = "bluespace cascade"
	requires_power = 0
