/material/plutonium
	name = MATERIAL_PLUTONIUM
	lore_text = "It is the heaviest element that exists in nature. Given its radioactivity, it is extremely harmful to human health. For this same property, it has been used in explosive devices, nuclear fuel, and power plants."
	mechanics_text = "Best isotope for nuclear warheads production."
	wall_name = "bulkhead"
	stack_type = /obj/item/stack/material/plutonium
	radioactivity = 240
	melting_point = 912
	weight = 23
	icon_colour = "#ababab"
	stack_origin_tech = list(TECH_MATERIAL = 5)
	sheet_icon_base = "puck"
	sheet_singular_name = "ingot"
	sheet_plural_name = "ingots"
	is_fusion_fuel = 1
	construction_difficulty = MATERIAL_HARD_DIY
	value = 700

/obj/item/stack/material/plutonium
	name = "plutonium"
	default_type = MATERIAL_PLUTONIUM

/obj/item/stack/material/plutonium/ten
	amount = 10

/obj/item/stack/material/plutonium/fifty
	amount = 50
