#define FABRICATOR_CLASS_MISSILE "missile fabricator"

/obj/item/stock_parts/circuitboard/autolathe/micro/missile
	name = "circuit board (missile fabricator)"
	build_path = /obj/machinery/fabricator/micro/missile
	board_type = "machine"
	origin_tech = list(TECH_ENGINEERING = 5, TECH_DATA = 5)
	req_components = list(
		/obj/item/stock_parts/matter_bin = 4,
		/obj/item/stock_parts/manipulator = 4,
		/obj/item/stock_parts/micro_laser = 4,
		/obj/item/stock_parts/keyboard = 1,
		/obj/item/stock_parts/console_screen = 1

	)
	additional_spawn_components = list(
		/obj/item/stock_parts/power/apc/buildable = 1
	)

/obj/machinery/fabricator/micro/missile
	name = "missile fabricator"
	desc = "A huge industrial complex machine, primarily used for producing combat warheads, missile props and other space warfare equipment."
	icon = 'mods/_fd/hestia_missiles/icons/missile_fabricator.dmi'
	icon_state = "missile_fabricator"
	base_icon_state = "missile_fabricator"
	idle_power_usage = 50
	icon_width = 64
	active_power_usage = 6000
	mat_efficiency = 1.15
	build_time_multiplier = 0.03
	has_recycler = TRUE
	base_type = /obj/machinery/fabricator/micro/missile
	fabricator_class = FABRICATOR_CLASS_MISSILE
	base_storage_capacity = list(
		/material/plutonium   = 25000,
		/material/deuterium   = 25000,
		/material/uranium   = 25000,
		/material/tritium   = 25000,
		/material/phoron   = 25000,
		/material/steel   = 25000,
		/material/platinum   = 25000,
		/material/aluminium = 25000,
		/material/plasteel   = 25000,
		/material/plasteel/titanium   = 25000,
		/material/gold   = 25000,
		/material/silver   = 25000,
		/material/diamond   = 25000,

	)
	machine_name = "missile fabricator"
	machine_desc = "A huge industrial complex machine, primarily used for producing combat warheads, missile props and other space warfare equipment."
