/mob/living/exosuit/premade/vindicator
	name = "Vindicator"
	desc = "A heavily armored combat exosuit."

/mob/living/exosuit/premade/vindicator/Initialize()
	if(!arms)
		arms = new /obj/item/mech_component/manipulators/combat(src)
		arms.color = "#262c34"
	if(!legs)
		legs = new /obj/item/mech_component/propulsion/combat(src)
		legs.color = "#262c34"
	if(!head)
		head = new /obj/item/mech_component/sensors/combat/vindicator(src)
		head.color = "#262c34"
	if(!body)
		body = new /obj/item/mech_component/chassis/combat(src)
		body.color = "#262c34"

	. = ..()

/obj/item/mech_component/sensors/combat/vindicator/prebuild()
	..()
	software = new(src)
	software.installed_software = list(MECH_SOFTWARE_UTILITY, MECH_SOFTWARE_ENGINEERING, MECH_SOFTWARE_WEAPONS, MECH_SOFTWARE_MEDICAL)

/mob/living/exosuit/premade/vindicator/spawn_mech_equipment()
	..()
	install_system(new /obj/item/mech_equipment/ballistic_shield(src), HARDPOINT_LEFT_HAND)
	install_system(new /obj/item/mech_equipment/mounted_system/taser/plasma_rifle(src), HARDPOINT_RIGHT_HAND)
	install_system(new /obj/item/mech_equipment/light(src), HARDPOINT_HEAD)
	install_system(new /obj/item/mech_equipment/shields(src), HARDPOINT_BACK)
	install_system(new /obj/item/mech_equipment/flash(src), HARDPOINT_LEFT_SHOULDER)
	install_system(new /obj/item/mech_equipment/mounted_system/taser/plasma(src), HARDPOINT_RIGHT_SHOULDER)

/mob/living/exosuit/premade/nestor
	name = "Nestor"
	desc = "An emergency-purposed rescue exosuit."

/mob/living/exosuit/premade/nestor/Initialize()
	if(!arms)
		arms = new /obj/item/mech_component/manipulators/heavy(src)
		arms.color = COLOR_WHITE
	if(!legs)
		legs = new /obj/item/mech_component/propulsion/spider(src)
		legs.color = COLOR_WHITE
	if(!head)
		head = new /obj/item/mech_component/sensors/heavy/nestor(src)
		head.color = COLOR_WHITE
	if(!body)
		body = new /obj/item/mech_component/chassis/heavy(src)
		body.color = COLOR_WHITE

	. = ..()

/obj/item/mech_component/sensors/heavy/nestor/prebuild()
	..()
	software = new(src)
	software.installed_software = list(MECH_SOFTWARE_UTILITY, MECH_SOFTWARE_ENGINEERING, MECH_SOFTWARE_WEAPONS, MECH_SOFTWARE_MEDICAL)

/mob/living/exosuit/premade/nestor/spawn_mech_equipment()
	..()
	install_system(new /obj/item/mech_equipment/drill/diamond(src), HARDPOINT_LEFT_HAND)
	install_system(new /obj/item/mech_equipment/clamp(src), HARDPOINT_RIGHT_HAND)
	install_system(new /obj/item/mech_equipment/light(src), HARDPOINT_HEAD)
	install_system(new /obj/item/mech_equipment/sleeper(src), HARDPOINT_BACK)
	install_system(new /obj/item/mech_equipment/flash(src), HARDPOINT_LEFT_SHOULDER)
	install_system(new /obj/item/mech_equipment/mounted_system/taser/plasma(src), HARDPOINT_RIGHT_SHOULDER)
