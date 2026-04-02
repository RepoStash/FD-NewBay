/obj/item/organ/internal/brain/insectoid/nabber/proc/change_skin_color()
	set name = "Change Skin Color"
	set desc = "Changes your skin color."
	set category = "Abilities"
	set src in usr
	if (!owner || owner.incapacitated())
		return

	var/new_skin = input("Please select skin color.", "Skin Color", owner.skin_color) as color|null
	if(!new_skin)
		return

	var/list/ergb = rgb2num(new_skin)
	if(!do_after(owner, 1 SECOND, do_flags = DO_SHOW_PROGRESS | DO_BOTH_CAN_TURN))
		return

	if(!owner.change_skin_color(ergb[1], ergb[2], ergb[3]))
		return

	owner.visible_message(SPAN_NOTICE("Кожа \The [owner] начинает переливатся всеми цветами радуги, останавливаясь на новом оттенке!"),SPAN_NOTICE("Вы сменили свой цвет кожи."),)

	owner.force_update_limbs()
	owner.update_body()

/obj/item/organ/internal/brain/insectoid/nabber/New()
	..()
	verbs |= /obj/item/organ/internal/brain/insectoid/nabber/proc/change_skin_color


/datum/grab/nab/masticate(obj/item/grab/G, attack_damage)
	var/assailant = G.assailant
	if(!assailant)
		return

	var/hit_zone = G.assailant.zone_sel.selecting
	var/obj/item/organ/external/damaging = G.affecting.get_organ(hit_zone)

	admin_attack_log(G.assailant, G.affecting, "Chews their victim.", "Was chewed.", "chewed")
	G.affecting.visible_message(SPAN_DANGER("[G.assailant] chews on [G.affecting]'s [damaging.name]!"))

	var/turf/location = get_turf(G.assailant)
	playsound(location, 'sound/weapons/bite.ogg', 25, 1, -1)

	// Casting everything before damage because limb can easily fly off after taking so much damage
	var/obj/item/organ/internal/stomach/stomach = G.assailant.internal_organs_by_name[BP_STOMACH]
	var/obj/item/organ/external/limb = G.affecting.organs_by_name[G.target_zone]

	if(!G.affecting.apply_damage(attack_damage, DAMAGE_BRUTE, hit_zone, DAMAGE_FLAG_SHARP|DAMAGE_FLAG_EDGE, used_weapon = "mandibles"))
		return

	if(!stomach || BP_IS_ROBOTIC(limb) || BP_IS_CRYSTAL(limb))
		return

	stomach.ingested.add_reagent(/datum/reagent/nutriment/protein, 3)
