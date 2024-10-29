// Yeah
/obj/overmap/visitable/ship/gccv_ulyanovsk
	name = "GCCV - Ulyanovsk"
	desc = "Waterloo-Class Heavy Cruiser broadcasting codes 'GCCV - Ulyanovsk', belonging to the Confederation."
	icon = 'mods/_fd/_maps/gccv_ulyanovsk/icons/ulyanovsk.dmi'
	icon_state = "gccv-ulyanovsk"
	moving_state = "gccv-ulyanovsk_moving"

	color = "#c76a6a"
	scannable = TRUE
	hide_from_reports = TRUE
	initial_generic_waypoints = list()
	initial_restricted_waypoints = list(

	)

/datum/map_template/ruin/away_site/gccv_ulyanovsk
	name = "GCCV - Ulyanovsk"
	id = "awaysite_gccv_ulyanovsk"
	description = "This is A Heavy Cruiser Of The Confederation."
	prefix = "mods/_fd/_maps/gccv_ulyanovsk/maps/"
	suffixes = list("gccv_ulyanovsk1.dmm", "gccv_ulyanovsk2.dmm", "gccv_ulyanovsk3.dmm")
	spawn_cost = 99
	shuttles_to_initialise = list()
	area_usage_test_exempted_root_areas = list()
	apc_test_exempt_areas = list()



// Misc

/var/const/access_iccg = "ACCESS_ICCG"
/datum/access/iccg
	id = access_iccg
	desc = "ICCG Crew"
	region = ACCESS_REGION_NONE

/var/const/access_iccg_engi = "ACCESS_ICCG_ENGI"
/datum/access/iccg_engi
	id = access_iccg_engi
	desc = "ICCG Engineering"
	region = ACCESS_REGION_NONE

/var/const/access_iccg_sec = "ACCESS_ICCG_SEC"
/datum/access/iccg_sec
	id = access_iccg_sec
	desc = "ICCG Security"
	region = ACCESS_REGION_NONE

/var/const/access_iccg_med = "ACCESS_ICCG_MED"
/datum/access/iccg_med
	id = access_iccg_med
	desc = "ICCG Medical"
	region = ACCESS_REGION_NONE

/var/const/access_iccg_com = "ACCESS_ICCG_COM"
/datum/access/iccg_com
	id = access_iccg_com
	desc = "ICCG Command"
	region = ACCESS_REGION_NONE

/var/const/access_iccg_com_cap = "ACCESS_ICCG_COM_CAP"
/datum/access/iccg_com_cap
	id = access_iccg_com_cap
	desc = "ICCG Command - Captain"
	region = ACCESS_REGION_NONE


/obj/paint/dark_blue_gray
	color = COLOR_DARK_BLUE_GRAY

/turf/simulated/wall/iccg
	paint_color = COLOR_DARK_BLUE_GRAY

/turf/simulated/wall/iccg/New(newloc)
	..(newloc, MATERIAL_PLASTEEL)

/turf/simulated/wall/r_iccg
	paint_color = COLOR_DARK_BLUE_GRAY
	icon_state = "r_generic"
	floor_type = /turf/simulated/floor/armored

/turf/simulated/wall/r_iccg/New(newloc)
	..(newloc, MATERIAL_PLASTEEL,MATERIAL_PLASTEEL)

/turf/simulated/wall/r_iccg/Initialize()
	. = ..()
	color = null //color is just for mapping
	health_max = health_current + 100
	health_current = health_max
	if(prob(90))
		var/spacefacing = FALSE
		for(var/direction in GLOB.cardinal)
			var/turf/T = get_step(src, direction)
			var/area/A = get_area(T)
			if(A && (A.area_flags & AREA_FLAG_EXTERNAL))
				spacefacing = TRUE
				break
		if(spacefacing)
			var/bleach_factor = rand(10,50)
			paint_color = "[pick("#420d0d", COLOR_DARK_GRAY)]"
			paint_color = adjust_brightness(paint_color, bleach_factor)
	update_icon()

/turf/simulated/wall/r_iccg/get_explosion_resistance()
	return health_current * explosion_resistance

/obj/structure/grille/plasteel
	init_material = MATERIAL_PLASTEEL

/obj/structure/wall_frame/iccg
	paint_color = COLOR_DARK_BLUE_GRAY
	material = MATERIAL_PLASTEEL

/obj/wallframe_spawn/iccg
	name = "iccg wall frame window spawner"
	frame_path = /obj/structure/wall_frame/iccg
	grille_path = null

/obj/wallframe_spawn/reinforced/iccg
	name = "reinforced iccg wall frame window spawner"
	frame_path = /obj/structure/wall_frame/iccg
	grille_path = /obj/structure/grille/plasteel

/obj/item/grenade/chem_grenade/large/metalfoam
	name = "metal-foam grenade"
	desc = "Used for emergency sealing of air breaches."
	path = 1
	stage = 2


/obj/item/grenade/chem_grenade/large/metalfoam/Initialize()
	. = ..()
	var/obj/item/reagent_containers/glass/beaker/large/B1 = new(src)
	var/obj/item/reagent_containers/glass/beaker/large/B2 = new(src)
	B1.reagents.add_reagent(/datum/reagent/aluminium, 120)
	B2.reagents.add_reagent(/datum/reagent/foaming_agent, 60)
	B2.reagents.add_reagent(/datum/reagent/acid/polyacid, 60)
	detonator = new/obj/item/device/assembly_holder/timer_igniter(src)
	beakers += B1
	beakers += B2
	icon_state = initial(icon_state) +"_locked"

/obj/turbolift_map_holder/ulyanovsk1
	name = "Ulyanovsk 1 turbolift map placeholder"
	depth = 3
	lift_size_x = 4
	lift_size_y = 4

	areas_to_use = list(
		/area/turbolift/ulyanovsk1,
		/area/turbolift/ulyanovsk1/deck2,
		/area/turbolift/ulyanovsk1/deck1
		)

/obj/turbolift_map_holder/ulyanovsk2
	name = "Ulyanovsk 2 turbolift map placeholder"
	depth = 3
	dir = NORTH
	lift_size_x = 4
	lift_size_y = 4

	areas_to_use = list(
		/area/turbolift/ulyanovsk2,
		/area/turbolift/ulyanovsk2/deck2,
		/area/turbolift/ulyanovsk2/deck1
		)

/obj/turbolift_map_holder/ulyanovsk3
	name = "Ulyanovsk 3 turbolift map placeholder"
	icon = 'icons/obj/structures/turbolift_preview_2x2.dmi'
	depth = 3
	lift_size_x = 3
	lift_size_y = 3

	areas_to_use = list(
		/area/turbolift/ulyanovsk3,
		/area/turbolift/ulyanovsk3/deck2,
		/area/turbolift/ulyanovsk3/deck1
		)


/obj/item/clothing/suit/space/void/iccg
	name = "armored terran voidsuit"
	desc = "A somewhat clumsy voidsuit layered with impact and laser-resistant armor plating. Specially designed to dissipate minor electrical charges."
	icon = 'mods/_fd/_maps/gccv_ulyanovsk/icons/ulyanovsk.dmi'
	icon_state = "rig_suit"
	item_state = "rig_suit_wear"
	icon_override = 'mods/_fd/_maps/gccv_ulyanovsk/icons/ulyanovsk.dmi'
	item_state_slots = list(
		slot_l_hand_str = "sec_voidsuit",
		slot_r_hand_str = "sec_voidsuit",
	)
	armor = list(
		melee = ARMOR_MELEE_MAJOR,
		bullet = ARMOR_BALLISTIC_RESISTANT,
		laser = ARMOR_LASER_HANDGUNS,
		bomb = ARMOR_BOMB_PADDED,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_RESISTANT
		)
	siemens_coefficient = 0.3
	allowed = list(/obj/item/device/flashlight,/obj/item/tank,/obj/item/device/suit_cooling_unit,/obj/item/gun,/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/melee/baton,/obj/item/melee/energy/sword,/obj/item/handcuffs)

/obj/item/clothing/head/helmet/space/void/iccg
	name = "armored terran voidsuit helmet"
	desc = "A comfortable voidsuit helmet with cranial armor and eight-channel surround sound."
	icon_state = "rig_helmet"
	item_state = "rig_helmet_wear"
	icon = 'mods/_fd/_maps/gccv_ulyanovsk/icons/ulyanovsk.dmi'
	icon_override = 'mods/_fd/_maps/gccv_ulyanovsk/icons/ulyanovsk.dmi'
	item_state_slots = list(
		slot_l_hand_str = "sec_helm",
		slot_r_hand_str = "sec_helm",
		)
	armor = list(
		melee = ARMOR_MELEE_MAJOR,
		bullet = ARMOR_BALLISTIC_RESISTANT,
		laser = ARMOR_LASER_HANDGUNS,
		bomb = ARMOR_BOMB_PADDED,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_RESISTANT
		)
	siemens_coefficient = 0.3

/obj/item/clothing/suit/space/void/iccg/engineering
	name = "armored engineering voidsuit"
	icon_state = "rig_iccg_engi"
	armor = list(
		melee = ARMOR_MELEE_MAJOR,
		bullet = ARMOR_BALLISTIC_RESISTANT,
		laser = ARMOR_LASER_HANDGUNS,
		energy = ARMOR_ENERGY_SMALL,
		bomb = ARMOR_BOMB_PADDED,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SHIELDED
		)
	max_heat_protection_temperature = FIRESUIT_MAX_HEAT_PROTECTION_TEMPERATURE
	max_pressure_protection = ENG_VOIDSUIT_MAX_PRESSURE

/obj/item/clothing/head/helmet/space/void/iccg/engineering
	name = "armored engineering voidsuit helmet"
	icon_state = "rig_iccg_engi"
	item_state = "rig_iccg_engi"
	flash_protection = FLASH_PROTECTION_MAJOR
	armor = list(
		melee = ARMOR_MELEE_MAJOR,
		bullet = ARMOR_BALLISTIC_RESISTANT,
		laser = ARMOR_LASER_HANDGUNS,
		energy = ARMOR_ENERGY_SMALL,
		bomb = ARMOR_BOMB_PADDED,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SHIELDED
		)
	max_heat_protection_temperature = FIRE_HELMET_MAX_HEAT_PROTECTION_TEMPERATURE
	max_pressure_protection = ENG_VOIDSUIT_MAX_PRESSURE

/obj/item/clothing/suit/space/void/iccg/security
	name = "armored security voidsuit"
	icon_state = "rig_iccg_sec"
	armor = list(
		melee = ARMOR_MELEE_VERY_HIGH,
		bullet = ARMOR_BALLISTIC_RIFLE,
		laser = ARMOR_LASER_MAJOR,
		energy = ARMOR_ENERGY_RESISTANT,
		bomb = ARMOR_BOMB_RESISTANT,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_RESISTANT
		)

/obj/item/clothing/head/helmet/space/void/iccg/security
	name = "armored security voidsuit helmet"
	icon_state = "rig_iccg_sec"
	item_state = "rig_iccg_sec"
	flash_protection = FLASH_PROTECTION_MAJOR
	armor = list(
		melee = ARMOR_MELEE_VERY_HIGH,
		bullet = ARMOR_BALLISTIC_RIFLE,
		laser = ARMOR_LASER_MAJOR,
		energy = ARMOR_ENERGY_RESISTANT,
		bomb = ARMOR_BOMB_RESISTANT,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_RESISTANT
		)

/obj/item/clothing/suit/space/void/iccg/command
	name = "armored command voidsuit"
	icon_state = "rig_iccg_com"
	armor = list(
		melee = ARMOR_MELEE_MAJOR,
		bullet = ARMOR_BALLISTIC_RESISTANT,
		laser = ARMOR_LASER_RIFLES,
		energy = ARMOR_ENERGY_STRONG,
		bomb = ARMOR_BOMB_RESISTANT,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_RESISTANT
		)

/obj/item/clothing/suit/space/void/iccg/command/Initialize()
	. = ..()
	slowdown_per_slot[slot_wear_suit] = 0

/obj/item/clothing/head/helmet/space/void/iccg/command
	name = "armored command voidsuit helmet"
	icon_state = "rig_iccg_com"
	item_state = "rig_iccg_com"
	flash_protection = FLASH_PROTECTION_MAJOR
	armor = list(
		melee = ARMOR_MELEE_MAJOR,
		bullet = ARMOR_BALLISTIC_RESISTANT,
		laser = ARMOR_LASER_RIFLES,
		energy = ARMOR_ENERGY_STRONG,
		bomb = ARMOR_BOMB_RESISTANT,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_RESISTANT
		)

/obj/item/rig/combat/equipped/iccg
	cell_type =  /obj/item/cell/hyper
	air_type =   /obj/item/tank/oxygen/full
	req_access = list(access_iccg)

/obj/machinery/suit_storage_unit/iccg
	name = "Voidsuit Storage Unit"
	suit = /obj/item/clothing/suit/space/void/iccg
	helmet = /obj/item/clothing/head/helmet/space/void/iccg
	boots = /obj/item/clothing/shoes/magboots
	tank = /obj/item/tank/oxygen/full
	mask = /obj/item/clothing/mask/gas/half
	req_access = list(access_iccg)

/obj/machinery/suit_storage_unit/iccg/engineering
	name = "Engineering Voidsuit Storage Unit"
	suit = /obj/item/clothing/suit/space/void/iccg/engineering
	helmet = /obj/item/clothing/head/helmet/space/void/iccg/engineering
	boots = /obj/item/clothing/shoes/magboots
	tank = /obj/item/tank/oxygen/full
	mask = /obj/item/clothing/mask/gas
	req_access = list(access_iccg_engi)

/obj/machinery/suit_storage_unit/iccg/security
	name = "Security Voidsuit Storage Unit"
	suit = /obj/item/clothing/suit/space/void/iccg/security
	helmet = /obj/item/clothing/head/helmet/space/void/iccg/security
	boots = /obj/item/clothing/shoes/magboots
	tank = /obj/item/tank/oxygen/full
	mask = /obj/item/clothing/mask/gas/swat
	req_access = list(access_iccg_sec)

/obj/machinery/suit_storage_unit/iccg/command
	name = "Command Voidsuit Storage Unit"
	suit = /obj/item/clothing/suit/space/void/iccg/command
	helmet = /obj/item/clothing/head/helmet/space/void/iccg/command
	boots = /obj/item/clothing/shoes/magboots
	tank = /obj/item/tank/oxygen/full
	mask = /obj/item/clothing/mask/gas/swat
	req_access = list(access_iccg_com)

/obj/item/tank/oxygen/full
	name = "oxygen tank"
	desc = "A tank of oxygen."
	icon_state = "oxygen"
	volume = 180
	tank_size = TANK_SIZE_LARGE
	distribute_pressure = ONE_ATMOSPHERE * O2STANDARD - 3
	starting_pressure = list(
		GAS_OXYGEN = 10 * ONE_ATMOSPHERE
	)

/obj/item/tank/jetpack/oxygen/full
	starting_pressure = list(GAS_OXYGEN = 10*ONE_ATMOSPHERE)

/obj/machinery/portable_atmospherics/canister/air/high
	start_pressure = 112 * ONE_ATMOSPHERE

/obj/item/storage/firstaid/combat/iccg
	name = "C-GCC medical kit"
	desc = "Contains advanced medical treatments prepared by GCC specs."

	startswith = list(
		/obj/item/storage/pill_bottle/bicaridine,
		/obj/item/storage/pill_bottle/keloderm,
		/obj/item/storage/pill_bottle/dexalin_plus,
		/obj/item/storage/pill_bottle/dylovene,
		/obj/item/storage/pill_bottle/tramadol,
		/obj/item/storage/pill_bottle/spaceacillin,
		/obj/item/stack/medical/splint,
		)

/obj/item/storage/pill_bottle/keloderm
	name = "pill bottle (Keloderm)"
	desc = "Contains pills used to treat burn wounds."
	startswith = list(/obj/item/reagent_containers/pill/keloderm = 14)
	wrapper_color = COLOR_ORANGE

/obj/item/reagent_containers/pill/keloderm
	name = "Keloderm (30u)"
	desc = "Used to treat burn wounds."
	icon_state = "pill2"
/obj/item/reagent_containers/pill/keloderm/New()
	..()
	reagents.add_reagent(/datum/reagent/dermaline, 15)
	reagents.add_reagent(/datum/reagent/kelotane, 15)
	color = reagents.get_color()

/mob/living/exosuit/premade/combat/iccg
	name = "G-EXO-12 Combat Exosuit"
	desc = "A sleek, modern combat exosuit with ICCG markings."
	decal = "cammo2"

/mob/living/exosuit/premade/combat/iccg/Initialize()
	body = new /obj/item/mech_component/chassis/combat(src)
	head = new /obj/item/mech_component/sensors/combat(src)
	. = ..()
	for(var/obj/thing in list(arms,legs,head,body))
		thing.color = COLOR_NAVY_BLUE

/mob/living/exosuit/premade/combat/iccg/spawn_mech_equipment()
	install_system(new /obj/item/mech_equipment/mounted_system/taser/laser(src), HARDPOINT_RIGHT_HAND)
	install_system(new /obj/item/mech_equipment/ballistic_shield(src), HARDPOINT_LEFT_HAND)
	install_system(new /obj/item/mech_equipment/mounted_system/taser/plasma(src), HARDPOINT_LEFT_SHOULDER)
	//install_system(new /obj/item/mech_equipment/flash(src), HARDPOINT_RIGHT_SHOULDER)
	install_system(new /obj/item/mech_equipment/light(src), HARDPOINT_HEAD)
	install_system(new /obj/item/mech_equipment/shields(src), HARDPOINT_BACK)

//
//		C L O S E T S
//

/singleton/closet_appearance/secure_closet/iccg
	can_lock = TRUE
	color = COLOR_DARK_BLUE_GRAY
	decals = list(
		"upper_side_vent",
		"lower_holes"
	)
	extra_decals = list(
		"stripe_vertical_right_partial" = COLOR_NAVY_BLUE,
		"stripe_vertical_left_partial" = COLOR_NAVY_BLUE,
		"stripe_horizontal" = COLOR_WALL_GUNMETAL
	)

/singleton/closet_appearance/secure_closet/iccg/command
	can_lock = TRUE
	decals = list(
		"lower_holes"
	)
	extra_decals = list(
		"stripe_vertical_right_partial" = COLOR_SILVER,
		"stripe_vertical_left_partial" = COLOR_GOLD,
		"stripe_horizontal" = COLOR_WALL_GUNMETAL,
		"command" = COLOR_SILVER
	)

/singleton/closet_appearance/secure_closet/iccg/engineering
	can_lock = TRUE
	decals = list(
		"lower_holes"
	)
	extra_decals = list(
		"stripe_vertical_left_partial" = COLOR_YELLOW_GRAY,
		"stripe_horizontal" = COLOR_WALL_GUNMETAL,
		"tool" = COLOR_GOLD
	)

/singleton/closet_appearance/secure_closet/iccg/security
	can_lock = TRUE
	decals = list(
		"lower_holes"
	)
	extra_decals = list(
		"stripe_vertical_right_partial" = COLOR_MAROON,
		"stripe_vertical_left_partial" = COLOR_MAROON,
		"stripe_horizontal" = COLOR_WALL_GUNMETAL,
		"security" = COLOR_MAROON
	)

/singleton/closet_appearance/secure_closet/iccg/medical
	can_lock = TRUE
	decals = list(
		"lower_half_solid"
	)
	extra_decals = list(
		"medical" = COLOR_BOTTLE_GREEN,
		"stripe_vertical_left_full" = COLOR_PALE_BTL_GREEN,
		"stripe_horizontal_upper" = COLOR_WALL_GUNMETAL
	)

/obj/structure/closet/secure_closet/iccg
	name = "ICCG locker"
	req_access = list(access_iccg)
	closet_appearance = /singleton/closet_appearance/secure_closet/iccg

/obj/structure/closet/secure_closet/iccg/WillContain()
	return list()

/obj/structure/closet/secure_closet/iccg/command
	name = "ICCG command locker"
	req_access = list(access_iccg_com)
	closet_appearance = /singleton/closet_appearance/secure_closet/iccg/command

/obj/structure/closet/secure_closet/iccg/engineering
	name = "ICCG engineering locker"
	req_access = list(access_iccg_engi)
	closet_appearance = /singleton/closet_appearance/secure_closet/iccg/engineering

/obj/structure/closet/secure_closet/iccg/security
	name = "ICCG security locker"
	req_access = list(access_iccg_sec)
	closet_appearance = /singleton/closet_appearance/secure_closet/iccg/security

/obj/structure/closet/secure_closet/iccg/medical
	name = "ICCG medical locker"
	req_access = list(access_iccg_med)
	closet_appearance = /singleton/closet_appearance/secure_closet/iccg/medical

/obj/structure/closet/secure_closet/iccg/preparations
	name = "ICCG preparations locker"

/obj/structure/closet/secure_closet/iccg/preparations/WillContain()
	return list(
		/obj/item/device/radio/headset/map_preset/ulyanovsk,
		/obj/item/device/radio/map_preset/ulyanovsk,
		/obj/item/storage/belt/general,
		/obj/item/device/flashlight/maglight,
		/obj/item/storage/firstaid/individual/military,
		/obj/item/material/knife/combat,
		/obj/item/device/binoculars/random,
		/obj/item/device/gps,
		/obj/item/clothing/accessory/buddy_tag,
		/obj/item/clothing/accessory/storage/black_vest,
		/obj/item/storage/backpack/satchel/sec
	)

/obj/structure/closet/secure_closet/iccg/security/pilot_officer
	name = "Pilot Officer locker"

/obj/structure/closet/secure_closet/iccg/security/pilot_officer/WillContain()
	return list(
		/obj/item/device/radio/headset/map_preset/ulyanovsk,
		/obj/item/device/radio/map_preset/ulyanovsk,
		/obj/item/storage/belt/utility/full,
		/obj/item/storage/belt/holster/security,
		/obj/item/device/flashlight/maglight,
		/obj/item/storage/firstaid/individual/military,
		/obj/item/material/knife/combat,
		/obj/item/device/binoculars/nvg,
		/obj/item/device/gps,
		/obj/item/clothing/suit/iccgn/service_officer,
		/obj/item/clothing/suit/storage/hazardvest/blue,
		/obj/item/clothing/head/helmet/solgov/pilot,
		/obj/item/clothing/under/iccgn/service,
		/obj/item/clothing/under/iccgn/utility,
		/obj/item/clothing/accessory/buddy_tag,
		/obj/item/clothing/accessory/storage/black_vest,
		/obj/item/storage/backpack/satchel/sec,
		/obj/item/ammo_magazine/speedloader/rifle = 3
	)

/obj/structure/closet/secure_closet/iccg/security/operative
	name = "Operative locker"

/obj/structure/closet/secure_closet/iccg/security/operative/WillContain()
	return list(
		/obj/item/device/radio/headset/map_preset/ulyanovsk,
		/obj/item/device/radio/map_preset/ulyanovsk,
		/obj/item/storage/belt/holster/security,
		/obj/item/device/flashlight/maglight,
		/obj/item/storage/firstaid/individual/military,
		/obj/item/material/knife/combat,
		/obj/item/device/binoculars/nvg,
		/obj/item/clothing/suit/iccgn/service_enlisted,
		/obj/item/clothing/suit/iccgn/service_enlisted,
		/obj/item/clothing/gloves/guards,
		/obj/item/clothing/suit/storage/vest/merc,
		/obj/item/clothing/head/helmet/swat,
		/obj/item/clothing/under/iccgn/service,
		/obj/item/clothing/under/iccgn/utility,
		/obj/item/clothing/under/syndicate/combat,
		/obj/item/clothing/accessory/buddy_tag,
		/obj/item/clothing/accessory/storage/black_vest,
		/obj/item/storage/backpack/satchel/sec,
		/obj/item/ammo_magazine/pistol/iccgn = 2
	)

/obj/structure/closet/secure_closet/iccg/medical/doctor
	name = "Vrach locker"

/obj/structure/closet/secure_closet/iccg/medical/doctor/WillContain()
	return list(
		/obj/item/clothing/suit/iccgn/service_enlisted,
		/obj/item/clothing/under/sterile,
		/obj/item/clothing/under/iccgn/utility,
		/obj/item/clothing/suit/storage/toggle/labcoat,
		/obj/item/clothing/suit/storage/medical_chest_rig,
		/obj/item/clothing/mask/surgical,
		/obj/item/clothing/suit/surgicalapron,
		/obj/item/device/radio/headset/map_preset/ulyanovsk,
		/obj/item/device/radio/map_preset/ulyanovsk,
		/obj/item/storage/firstaid/individual/military,
		/obj/item/device/flashlight/pen,
		/obj/item/clothing/glasses/hud/health,
		/obj/item/clothing/accessory/stethoscope,
		/obj/item/storage/belt/medical,
		/obj/item/storage/box/freezer,
		/obj/item/storage/firstaid/adv,
		/obj/item/device/scanner/health,
		/obj/item/storage/backpack/satchel/med
	)

/obj/structure/closet/secure_closet/iccg/engineering/engineer
	name = "Mechanic locker"

/obj/structure/closet/secure_closet/iccg/engineering/engineer/WillContain()
	return list(
		/obj/item/clothing/suit/iccgn/service_enlisted,
		/obj/item/clothing/under/hazard,
		/obj/item/clothing/under/iccgn/utility,
		/obj/item/gun/energy/plasmacutter,
		/obj/item/clothing/accessory/storage/brown_vest,
		/obj/item/clothing/mask/gas,
		/obj/item/clothing/suit/storage/hazardvest,
		/obj/item/device/radio/headset/map_preset/ulyanovsk,
		/obj/item/device/radio/map_preset/ulyanovsk,
		/obj/item/device/flashlight/upgraded,
		/obj/item/clothing/glasses/meson,
		/obj/item/storage/belt/utility/full,
		/obj/item/storage/box/engineer,
		/obj/item/extinguisher/mini,
		/obj/item/storage/toolbox/mechanical,
		/obj/item/storage/backpack/satchel/eng
	)

/obj/structure/closet/secure_closet/iccg/command/officer
	name = "Officer locker"

/obj/structure/closet/secure_closet/iccg/command/officer/WillContain()
	return list(
		/obj/item/clothing/suit/iccgn/dress_officer,
		/obj/item/clothing/head/iccgn/service,
		/obj/item/clothing/under/iccgn/service,
		/obj/item/clothing/under/iccgn/utility,
		/obj/item/device/radio/headset/map_preset/ulyanovsk,
		/obj/item/device/radio/map_preset/ulyanovsk,
		/obj/item/device/flashlight/maglight,
		/obj/item/clothing/glasses/sunglasses,
		/obj/item/storage/belt/general,
		/obj/item/storage/backpack/satchel/com,
		/obj/item/ammo_magazine/pistol/iccgn = 2
	)

/obj/structure/closet/secure_closet/iccg/command/starpom
	name = "Starpom locker"

/obj/structure/closet/secure_closet/iccg/command/starpom/WillContain()
	return list(
		/obj/item/clothing/suit/iccgn/dress_command,
		/obj/item/clothing/head/iccgn/service_command,
		/obj/item/clothing/under/iccgn/service_command,
		/obj/item/clothing/under/iccgn/utility,
		/obj/item/device/radio/headset/map_preset/ulyanovsk,
		/obj/item/device/radio/map_preset/ulyanovsk,
		/obj/item/device/flashlight/maglight,
		/obj/item/clothing/glasses/sunglasses,
		/obj/item/storage/belt/general,
		/obj/item/storage/backpack/satchel/com,
		/obj/item/melee/telebaton,
		/obj/item/device/binoculars/random,
		/obj/item/ammo_magazine/pistol/iccgn = 2
	)

/obj/structure/closet/secure_closet/iccg/command/commander
	name = "Commander locker"

/obj/structure/closet/secure_closet/iccg/command/commander/WillContain()
	return list(
		/obj/item/clothing/suit/iccgn/dress_command,
		/obj/item/clothing/head/iccgn/service_command,
		/obj/item/clothing/under/iccgn/service_command,
		/obj/item/clothing/under/iccgn/utility,
		/obj/item/device/radio/headset/map_preset/ulyanovsk,
		/obj/item/device/radio/map_preset/ulyanovsk,
		/obj/item/device/flashlight/maglight,
		/obj/item/clothing/glasses/hud/security/prot/sunglasses,
		/obj/item/storage/belt/general,
		/obj/item/storage/backpack/satchel/com,
		/obj/item/melee/telebaton,
		/obj/item/gun/magnetic/railgun/automatic,
		/obj/item/ammo_magazine/pistol/iccgn = 2,
		/obj/item/rcd_ammo/large = 2
	)

/obj/structure/closet/secure_closet/iccg/command/chief_mechanic
	name = "Starshiy Mechanic locker"

/obj/structure/closet/secure_closet/iccg/command/chief_mechanic/WillContain()
	return list(
		/obj/item/clothing/suit/iccgn/dress_officer,
		/obj/item/clothing/head/iccgn/service,
		/obj/item/clothing/under/iccgn/service,
		/obj/item/clothing/under/iccgn/utility,
		/obj/item/clothing/under/hazard,
		/obj/item/device/radio/headset/map_preset/ulyanovsk,
		/obj/item/device/radio/map_preset/ulyanovsk,
		/obj/item/device/flashlight/upgraded,
		/obj/item/clothing/glasses/meson,
		/obj/item/clothing/glasses/material,
		/obj/item/storage/belt/utility/full,
		/obj/item/storage/backpack/satchel/com,
		/obj/item/melee/telebaton,
		/obj/item/gun/energy/plasmacutter,
		/obj/item/rcd,
		/obj/item/rcd_ammo/large = 2
	)





/obj/machinery/rotating_alarm/door // like SM Alarm, but MY :3
	name = "door alarm"
	desc = "An industrial rotating alarm light. This one is used to monitor door state."
	anchored = TRUE

	frame_type = /obj/item/frame/door_alarm
	construct_state = /singleton/machine_construction/default/item_chassis
	base_type = /obj/machinery/rotating_alarm/door
	stock_part_presets = list(/singleton/stock_part_preset/radio/basic_transmitter/button = 1)

	alarm_light_color = COLOR_MAROON
	/// FALSE = Closed -> Off // TRUE = Closed -> On
	var/invert_state = FALSE
	/// This is list of connected doors
	var/list/doors

/obj/machinery/rotating_alarm/door/Initialize()
	. = ..()
	update_icon()

	spawn(50)		// allow map load
		if(!id_tag)
			id_tag = locate_door()
		doors = list()
		for(var/obj/machinery/door/D in SSmachines.machinery)
			if(D.id_tag == id_tag)
				doors += D
				GLOB.density_set_event.register(D, src, .proc/check_doors)
		check_doors()

/obj/machinery/rotating_alarm/door/Destroy()
	. = ..()
	for(var/door in doors)
		GLOB.density_set_event.unregister(door, src, .proc/check_doors)

/obj/machinery/rotating_alarm/door/proc/check_doors()
	var/set_alarm = invert_state
	for(var/atom/door as() in doors)
		if(!door.density)
			set_alarm = !set_alarm
			break

	if(set_alarm)
		return set_on()

	return set_off()

/obj/machinery/rotating_alarm/door/proc/locate_door()
	var/obj/machinery/door/blast/door = locate() in range(2,src)
	if(!door)
		return
	return door.id_tag

/obj/item/frame/door_alarm
	name = "door alarm frame"
	icon = 'icons/obj/structures/lighting.dmi'
	icon_state = "bulb-construct-item"
	refund_amt = 1
	build_machine_type = /obj/machinery/rotating_alarm/door


/obj/machinery/disposal/deliveryChute/ammo_loader
	name = "Ammunition chute"
	desc = "A chute for ammo loading. There's flaps in there, so you can't go in."
	color = "#948484"

/obj/machinery/disposal/deliveryChute/ammo_loader/Bumped(atom/movable/AM) //Go straight into the chute
	if(istype(AM, /obj/item/projectile) || istype(AM, /obj))	return
	switch(dir)
		if(NORTH)
			if(AM.loc.y != src.loc.y+1) return
		if(EAST)
			if(AM.loc.x != src.loc.x+1) return
		if(SOUTH)
			if(AM.loc.y != src.loc.y-1) return
		if(WEST)
			if(AM.loc.x != src.loc.x-1) return

	var/mob/living/L = AM
	if (istype(L) && L.ckey)
		return
	if(istype(AM, /obj))
		var/obj/O = AM
		O.forceMove(src)
	else if(istype(AM, /mob))
		var/mob/M = AM
		to_chat(M, "You can't go inside.")
		return
	src.flush()

/obj/machinery/disposal/deliveryChute/ammo_loader/flush()
	flushing = 1
	flick("intake-closing", src)
	var/obj/structure/disposalholder/H = new()	// virtual holder object which actually
												// travels through the pipes.
	//air_contents = new()		// new empty gas resv.

	sleep(10)
	playsound(src, 'sound/machines/disposalflush.ogg', 50, 0, 0)
	sleep(5) // wait for animation to finish

	H.init(src)	// copy the contents of disposer to holder

	H.start(src) // start the holder processing movement
	flushing = 0
	// now reset disposal state
	flush = 0
	if(mode == 2)	// if was ready,
		mode = 1	// switch to charging
	update_icon()
	return

/obj/machinery/conveyor_switch/AltClick(user) // because sometimes they don't connect to all the conveyors.
	if(user)
		src.New()
		to_chat(user, "You reattached conveyors with [src], that have the same ID.")

/obj/item/device/binoculars
	var/zoom_offset = 14
	var/zoom_size = 9

/obj/item/device/binoculars/blue
	icon = 'mods/_fd/_maps/gccv_ulyanovsk/icons/ulyanovsk.dmi'
	icon_state = "binoculars1"
	zoom_offset = 16
	zoom_size = 9

/obj/item/device/binoculars/blue/attack_self(mob/user)
	if(zoom)
		unzoom(user)
	else
		zoom(user, zoom_offset, zoom_size)

/obj/item/device/binoculars/nvg
	icon = 'mods/_fd/_maps/gccv_ulyanovsk/icons/ulyanovsk.dmi'
	icon_state = "binoculars_nvg"
	zoom_offset = 19
	zoom_size = 11

/obj/item/device/binoculars/nvg/attack_self(mob/user)
	if(zoom)
		unzoom(user)
	else
		zoom(user, zoom_offset, zoom_size)

/obj/item/device/binoculars/random/New()
	icon = 'mods/_fd/_maps/gccv_ulyanovsk/icons/ulyanovsk.dmi'
	icon_state = pick("binoculars","binoculars1","binoculars_nvg")
	switch(icon_state)
		if("binoculars1")
			zoom_offset = 16
			zoom_size = 9
		if("binoculars_nvg")
			zoom_offset = 19
			zoom_size = 11
		else
			zoom_offset = 14
			zoom_size = 9
	update_icon()
	. = ..()

/obj/item/clothing/suit/iccgn/Initialize()
	. = ..()
	allowed += /obj/item/gun
	allowed += /obj/item/device/flashlight

/obj/item/ammo_magazine/box/shotgun
	name = "shell box"
	icon_state = "slbox"
	origin_tech = list(TECH_COMBAT = 2)
	caliber = CALIBER_SHOTGUN
	matter = list(MATERIAL_STEEL = 4950)
	ammo_type = /obj/item/ammo_casing/shotgun
	multiple_sprites = 1
	max_ammo = 21
	w_class = ITEM_SIZE_LARGE

/obj/item/ammo_magazine/box/shotgun/shell
	name = "shell box"
	icon_state = "gbox"
	ammo_type = /obj/item/ammo_casing/shotgun/pellet

/obj/item/ammo_magazine/speedloader/small/rubber
	ammo_type = /obj/item/ammo_casing/pistol/small/rubber

/obj/machinery/atmospherics/unary/engine/wall
	name = "rocket nozzle"
	desc = "Advanced rocket nozzle, expelling gas at hypersonic velocities to propell the ship."
	icon = 'mods/_fd/_maps/gccv_ulyanovsk/icons/ulyanovsk.dmi'
	icon_state = "nozzle-wall"
	maximum_component_parts = list(/obj/item/stock_parts = 8)
	uncreated_component_parts = list(/obj/item/stock_parts/power/apc/buildable = 1, /obj/item/stock_parts/capacitor/super = 2)

	use_power = POWER_USE_OFF
	power_channel = EQUIP
	idle_power_usage = 500

	thrust_limit = 1
	moles_per_burn = 5.0
	charge_per_burn = 5000
	boot_time = 45

/obj/machinery/atmospherics/unary/engine/wall/check_blockage()
	return FALSE

/obj/item/stock_parts/circuitboard/unary_atmos/engine/advanced
	name = "circuit board (advanced gas thruster)"
	build_path = /obj/machinery/atmospherics/unary/engine/wall
	origin_tech = list(TECH_POWER = 4, TECH_ENGINEERING = 3)
	req_components = list(
		/obj/item/stack/cable_coil = 30,
		/obj/item/pipe = 3)
	additional_spawn_components = list(
		/obj/item/stock_parts/matter_bin/super = 1,
		/obj/item/stock_parts/capacitor/adv = 2)

/turf/simulated/wall/Initialize()
	. = ..()
	blend_objects += /obj/machinery/atmospherics/unary/engine/wall

/obj/item/storage/part_replacer/tier1
	startswith = list(
		/obj/item/stock_parts/matter_bin = 10,
		/obj/item/stock_parts/manipulator = 10,
		/obj/item/stock_parts/micro_laser = 10,
		/obj/item/stock_parts/scanning_module = 10,
		/obj/item/stock_parts/capacitor = 10,
	)

/obj/item/storage/part_replacer/tier2
	startswith = list(
		/obj/item/stock_parts/matter_bin/adv = 10,
		/obj/item/stock_parts/manipulator/nano = 10,
		/obj/item/stock_parts/micro_laser/high = 10,
		/obj/item/stock_parts/scanning_module/adv = 10,
		/obj/item/stock_parts/capacitor/adv = 10,
	)

/obj/item/storage/part_replacer/tier3
	startswith = list(
		/obj/item/stock_parts/matter_bin/super = 10,
		/obj/item/stock_parts/manipulator/pico = 10,
		/obj/item/stock_parts/micro_laser/ultra = 10,
		/obj/item/stock_parts/scanning_module/phasic = 10,
		/obj/item/stock_parts/capacitor/super = 10,
	)

/obj/item/ammo_magazine/box/rifle/iccgn
	name = "5mmR rounds crate"
	icon_state = "rbox_m"
	caliber = CALIBER_RIFLE
	ammo_type = /obj/item/ammo_casing/rifle/iccgn

/obj/item/material/hatchet/machete/plasteel
	default_material = MATERIAL_PLASTEEL
	matter = list(MATERIAL_PLASTEEL = 10000, MATERIAL_PLASTIC = 2500)

/obj/item/material/hatchet/machete/uranium
	default_material = MATERIAL_URANIUM
	matter = list(MATERIAL_URANIUM = 10000, MATERIAL_PLASTIC = 2500)

/obj/machinery/power/smes/buildable/preset/ulyanovsk
	uncreated_component_parts = list(/obj/item/stock_parts/smes_coil = 1)
	_input_maxed = TRUE
	_output_maxed = TRUE

/obj/machinery/power/smes/buildable/preset/ulyanovsk/engine_main
	uncreated_component_parts = list(
		/obj/item/stock_parts/smes_coil/super_io = 2,
		/obj/item/stock_parts/smes_coil/super_capacity = 1,
		/obj/item/stock_parts/smes_coil/advanced = 1)
	_input_maxed = TRUE
	_output_maxed = TRUE
	_input_on = TRUE
	_output_on = TRUE
	_fully_charged = TRUE

/obj/machinery/power/smes/buildable/preset/ulyanovsk/shuttle
	uncreated_component_parts = list(
		/obj/item/stock_parts/smes_coil/super_io = 1,
		/obj/item/stock_parts/smes_coil/super_capacity = 1)
	_input_maxed = TRUE
	_output_maxed = TRUE
	_input_on = TRUE
	_output_on = TRUE
	_fully_charged = TRUE

/obj/machinery/power/smes/buildable/preset/ulyanovsk/hangar
	uncreated_component_parts = list(
		/obj/item/stock_parts/smes_coil/super_io = 3,
		/obj/item/stock_parts/smes_coil/super_capacity = 1)
	_input_maxed = TRUE
	_output_maxed = TRUE
	_input_on = TRUE
	_output_on = TRUE
	_fully_charged = TRUE

/obj/machinery/power/smes/buildable/preset/ulyanovsk/substation_full
	uncreated_component_parts = list(/obj/item/stock_parts/smes_coil = 1)
	_input_maxed = TRUE
	_output_maxed = TRUE
	_input_on = TRUE
	_output_on = TRUE
	_fully_charged = TRUE

/obj/structure/reagent_dispensers/fueltank/ul_tank
	name = "fuel barrel"
	desc = "A barrel containing welding fuel."
	icon = 'mods/_fd/_maps/gccv_ulyanovsk/icons/ulyanovsk.dmi'
	icon_state = "weldtank"
	anchored = TRUE

/obj/structure/reagent_dispensers/fueltank/ul_tank/explode()
	ex_act(1, null, get_turf(src))
	qdel(src)

/obj/structure/reagent_dispensers/fueltank/ul_tank/napalm
	name = "napalm barrel"
	desc = "A barrel containing napalm."
	icon_state = "napalmtank"
	initial_reagent_types = list(/datum/reagent/napalm = 1)

/obj/structure/sign/ul_iccg
	name = "\improper ICCG Seal"
	desc = "A sign which signifies who this vessel belongs to."
	icon = 'mods/_fd/_maps/gccv_ulyanovsk/icons/ulyanovsk.dmi'
	icon_state = "iccg_seal"

/obj/structure/sign/double/ul_iccg
	name = "ICCG Flag"
	desc = "The flag of the Independent Colonial Confederation of Gilgamesh."
	icon = 'mods/_fd/_maps/gccv_ulyanovsk/icons/ulyanovsk.dmi'

/obj/structure/sign/double/ul_iccg/left
	icon_state = "GCCflag-left"

/obj/structure/sign/double/ul_iccg/right
	icon_state = "GCCflag-right"

// Proc for rotating bullets.

/obj/item/ammo_casing/New()
	..()
	transform = turn(transform,rand(0,360))

// Something?

/turf/simulated/floor/armored
	name = "armored floor"
	icon = 'mods/_fd/_maps/gccv_ulyanovsk/icons/ulyanovsk.dmi'
	icon_state = "reinforced"
	initial_flooring = /singleton/flooring/armored

/turf/simulated/floor/armored/ex_act(severity, derection)
	switch(severity)
		if(200 to 400)
			if (prob(30))
				src.break_tile()
				src.hotspot_expose(500,CELL_VOLUME)
		if(400 to 600)
			if (prob(40))
				src.break_tile()
				src.hotspot_expose(1000,CELL_VOLUME)
		if(600 to 1000)
			switch(pick(40;1,40;2,3))
				if (1)
					if(prob(33)) new /obj/item/stack/material/plasteel(src)
					src.ReplaceWithLattice()
				if(2)
					src.ChangeTurf(get_base_turf_by_area(src))
				if(3)
					if(prob(33)) new /obj/item/stack/material/plasteel(src)
					if(prob(80))
						src.break_tile_to_plating()
					else
						src.break_tile()
					src.hotspot_expose(1000,CELL_VOLUME)
		if(1000 to INFINITY)
			src.ChangeTurf(get_base_turf_by_area(src))
	return

/singleton/flooring/armored
	name = "armored floor"
	desc = "Heavily armored with plasteel plating."
	icon = 'mods/_fd/_maps/gccv_ulyanovsk/icons/ulyanovsk.dmi'
	icon_base = "reinforced"
	flags = TURF_REMOVE_WRENCH | TURF_ACID_IMMUNE
	build_type = /obj/item/stack/material/plasteel
	build_cost = 1
	build_time = 40
	apply_thermal_conductivity = 0.025
	apply_heat_capacity = 405000
	can_paint = 1
	footstep_type = /singleton/footsteps/plating

/turf/simulated/floor/armored/airless
	initial_gas = null

/turf/simulated/floor/reinforced/airless
	initial_gas = null


// D E C A L S

/obj/floor_decal/industrial/outline/blood_red
	name = "red outline"
	color = "#940004"
	layer = 2.04

/obj/floor_decal/corner/blood_red
	name = "blood red corner"
	color = "#940004"

/obj/floor_decal/corner/blood_red/diagonal
	icon_state = "corner_white_diagonal"

/obj/floor_decal/corner/blood_red/three_quarters
	icon_state = "corner_white_three_quarters"

/obj/floor_decal/corner/blood_red/full
	icon_state = "corner_white_full"

/obj/floor_decal/corner/blood_red/border
	icon_state = "bordercolor"

/obj/floor_decal/corner/blood_red/half
	icon_state = "bordercolorhalf"

/obj/floor_decal/corner/blood_red/mono
	icon_state = "bordercolormonofull"

/obj/floor_decal/corner/blood_red/bordercorner
	icon_state = "bordercolorcorner"

/obj/floor_decal/corner/blood_red/bordercorner2
	icon_state = "bordercolorcorner2"

/obj/floor_decal/corner/blood_red/borderfull
	icon_state = "bordercolorfull"
	layer = 2.02

/obj/floor_decal/corner/blood_red/bordercee
	icon_state = "bordercolorcee"
/*
/obj/floor_decal/hull
	name = "hull edges"
	icon = 'mods/_fd/_maps/gccv_ulyanovsk/icons/ulyanovsk.dmi'
	icon_state = "hull_edges"
	layer = 2.04

/obj/floor_decal/hull/corner
	name = "hull corner"
	icon_state = "hull_corners"
*/
/obj/floor_decal/techfloor/blood_red
	name = "techfloor edges"
	icon = 'mods/_fd/_maps/gccv_ulyanovsk/icons/ulyanovsk.dmi'
	icon_state = "techfloorred_edges"

/obj/floor_decal/techfloor/blood_red/corner
	name = "techfloor corner"
	icon_state = "techfloorred_corners"

/obj/floor_decal/watch_step
	name = "watch your step"
	icon = 'mods/_fd/_maps/gccv_ulyanovsk/icons/ulyanovsk2.dmi'
	icon_state = "wys"
	layer = 2.04

/obj/floor_decal/ul_decals
	name = "ulyanovsk decal"
	icon = 'mods/_fd/_maps/gccv_ulyanovsk/icons/ulyanovsk.dmi'
	icon_state = "decal"

/obj/floor_decal/ul_decals/main_line
	name = "main line"
	icon_state = "main_line"

/obj/floor_decal/ul_decals/arrow
	name = "arrow"
	icon_state = "arrow"

/obj/floor_decal/ul_decals/iccg_floor
	name = "iccg spray"
	icon_state = "iccg_floor"
	layer = 2.04

/obj/floor_decal/ul_decals/outline
	name = "outline"
	icon_state = "outline"
	layer = 2.04

/obj/floor_decal/ul_decals/outline/yellow
	name = "yellow outline"
	color = "#cfcf55"

/obj/floor_decal/ul_decals/outline/blood_red
	name = "blood red outline"
	color = "#940004"

/obj/floor_decal/step
	name = "step"
	icon = 'mods/_fd/_maps/gccv_ulyanovsk/icons/ulyanovsk.dmi'
	icon_state = "step"

/obj/floor_decal/symbol
	name = "symbol"
	icon = 'mods/_fd/_maps/gccv_ulyanovsk/icons/ulyanovsk.dmi'
	icon_state = "letter_pattern"

/obj/floor_decal/symbol/u
	icon_state = "u"
/obj/floor_decal/symbol/l
	icon_state = "l"
/obj/floor_decal/symbol/y
	icon_state = "y"
/obj/floor_decal/symbol/a
	icon_state = "a"
/obj/floor_decal/symbol/n
	icon_state = "n"
/obj/floor_decal/symbol/o
	icon_state = "o"
/obj/floor_decal/symbol/v
	icon_state = "v"
/obj/floor_decal/symbol/s
	icon_state = "s"
/obj/floor_decal/symbol/k
	icon_state = "k"

/obj/floor_decal/paint
	name = "paint"
	icon = 'mods/_fd/_maps/gccv_ulyanovsk/icons/ulyanovsk.dmi'
	icon_state = "paint"
	alpha = 200
	layer = 2.02

/obj/floor_decal/paint/corner
	icon_state = "paint_corner"

/obj/floor_decal/paint/triangle
	icon_state = "paint_triangle"

/obj/floor_decal/paint/side
	icon_state = "paint_side"

/obj/floor_decal/paint/quarter
	icon_state = "paint_quarter"

/obj/floor_decal/paint/side_corner
	icon_state = "paint_side_corner"

/obj/floor_decal/paint/in_corner
	icon_state = "paint_in_c"

/obj/floor_decal/paint/diagonal
	icon_state = "paint_diag"

/obj/floor_decal/paint/blood_red
	name = "red paint"
	color = "#940004"

/obj/floor_decal/paint/blood_red/corner
	icon_state = "paint_corner"

/obj/floor_decal/paint/blood_red/triangle
	icon_state = "paint_triangle"

/obj/floor_decal/paint/blood_red/side
	icon_state = "paint_side"

/obj/floor_decal/paint/blood_red/quarter
	icon_state = "paint_quarter"

/obj/floor_decal/paint/blood_red/side_corner
	icon_state = "paint_side_corner"

/obj/floor_decal/paint/blood_red/in_corner
	icon_state = "paint_in_c"

/obj/floor_decal/paint/blood_red/diagonal
	icon_state = "paint_diag"

/obj/floor_decal/paint/navy
	name = "navy paint"
	color = "#335166"

/obj/floor_decal/paint/navy/corner
	icon_state = "paint_corner"

/obj/floor_decal/paint/navy/triangle
	icon_state = "paint_triangle"

/obj/floor_decal/paint/navy/side
	icon_state = "paint_side"

/obj/floor_decal/paint/navy/quarter
	icon_state = "paint_quarter"

/obj/floor_decal/paint/navy/side_corner
	icon_state = "paint_side_corner"

/obj/floor_decal/paint/navy/in_corner
	icon_state = "paint_in_c"

/obj/floor_decal/paint/navy/diagonal
	icon_state = "paint_diag"
