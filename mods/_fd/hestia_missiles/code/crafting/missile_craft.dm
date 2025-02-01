/material/plasteel/generate_recipes(reinforce_material)
	. = ..()
	if(reinforce_material)	//recipes below don't support composite materials
		return
	. += new/datum/stack_recipe/missile(src)

/datum/stack_recipe/missile
	title = "missile casing"
	difficulty = 5
	req_amount = 50
	time = 120 SECONDS
	result_type = /obj/structure/missile
