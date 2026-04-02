//Примитивный код примитивного пепелаца. Ничего лишнего. Даже стыковки.

/obj/overmap/visitable/ship/a_destroyer
	name = "unknown alien vessel"
	desc = "Sensor array is detecting a medium-sized alien battleship. It shows some life signatures aboard."
	color = "#661c77"
	icon = 'mods/_fd/_maps/a_destroyer/icons/a_destroyer.dmi'
	icon_state = "ship"
	moving_state = "ship_moving"
	fore_dir = NORTH
	vessel_size = SHIP_SIZE_SMALL
	burn_delay = 0.5 SECONDS
	hide_from_reports = TRUE
	skill_needed = SKILL_TRAINED
	vessel_mass = 12000

/area/a_destroyer
	name = "\improper hull"

/area/a_destroyer/interior
	name = "\improper interior"

// С зонами не парюсь, ибо пепелац - чисто админский. ВОЗМОЖНО, в будущем переделаю его под ивентовую локацию уже для игроков.

/datum/map_template/ruin/away_site/a_destroyer
	name = "Unknown alien vessel"
	id = "a_destroyer"
	description = ""
	prefix = "mods/_fd/_maps/a_destroyer/maps/"
	suffixes = list("a_destroyer.dmm")
	spawn_cost = 0.5
