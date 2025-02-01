// Payloads

/datum/fabricator_recipe/payload
	name = "explosive charge"
	path = /obj/item/missile_equipment/payload/explosive
	category = "Payload"
	fabricator_types = list(FABRICATOR_CLASS_MISSILE)

/datum/fabricator_recipe/payload/antimissile
	name = "PREDATOR missile disabler system"
	path = /obj/item/missile_equipment/payload/antimissile

/datum/fabricator_recipe/payload/diffuser
	name = "dynamic antiphase emitter"
	path = /obj/item/missile_equipment/payload/diffuser

/datum/fabricator_recipe/payload/emp
	name = "EMP charge"
	path = /obj/item/missile_equipment/payload/emp

/datum/fabricator_recipe/payload/nuclear
	name = "small nuclear warhead"
	path = /obj/item/missile_equipment/payload/nuclear

/datum/fabricator_recipe/payload/big_nuclear
	name = "nuclear warhead"
	path = /obj/item/missile_equipment/payload/big_nuclear

//datum/fabricator_recipe/payload/void
//	name = "void warhead"
//	path = /obj/item/missile_equipment/payload/void

// Thrusters

/datum/fabricator_recipe/thruster
	name = "missile booster"
	path = /obj/item/missile_equipment/thruster
	category = "Thrusters"
	fabricator_types = list(FABRICATOR_CLASS_MISSILE)

/datum/fabricator_recipe/thruster/hunter
	name = "HUNTER warp booster"
	path = /obj/item/missile_equipment/thruster/hunter

/datum/fabricator_recipe/thruster/point
	name = "pointman missile booster"
	path = /obj/item/missile_equipment/thruster/point

/datum/fabricator_recipe/thruster/planet
	name = "planetary missile booster"
	path = /obj/item/missile_equipment/thruster/planet

// Utility

/datum/fabricator_recipe/utility
	name = "automatic missile activator"
	path = /obj/item/missile_equipment/autoarm
	category = "Utility"
	fabricator_types = list(FABRICATOR_CLASS_MISSILE)

/datum/fabricator_recipe/utility/passenger
	name = "COMFMASTER Mk3 passenger compartments"
	path = /obj/item/missile_equipment/passenger
