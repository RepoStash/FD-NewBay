/obj/item/missile_equipment/payload/explosive
	name = "explosive charge"
	desc = "An explosive charge. Detonates when the missile is triggered."
	icon_state = "explosive"

	matter = list(
		MATERIAL_PLASTEEL = 100000,
		MATERIAL_TITANIUM = 50000,
		MATERIAL_SILVER = 20000,
		MATERIAL_GOLD = 20000,
		MATERIAL_PHORON = 60000
	)

/obj/item/missile_equipment/payload/explosive/on_trigger(atom/triggerer)
	explosion(get_turf(src), 16)

	..()
