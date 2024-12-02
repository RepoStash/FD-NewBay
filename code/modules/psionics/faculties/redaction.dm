/singleton/psionic_faculty/redaction
	id = PSI_REDACTION
	name = "Ephanoferia"
	associated_intent = I_HELP
	armour_types = list("bio", "rad")

/singleton/psionic_power/redaction
	faculty = PSI_REDACTION
	admin_log = FALSE
	abstract_type = /singleton/psionic_power/redaction

/singleton/psionic_power/redaction/proc/check_dead(mob/living/target)
	if(!istype(target))
		return FALSE

	if(!isliving(target))
		return FALSE // No more ressurect of COOKIE! :(

	if(target.stat == DEAD || (target.status_flags & FAKEDEATH))
		return TRUE
	return FALSE

/singleton/psionic_power/redaction/invoke(mob/living/user, mob/living/target)
	if(check_dead(target))
		return FALSE
	. = ..()

/singleton/psionic_power/redaction/skinsight
	name =            "Skinsight"
	cost =            3
	cooldown =        30
	use_grab =        TRUE
	min_rank =        PSI_RANK_APPRENTICE
	use_description = "Схватите цель, выберите верхнюю часть тела и зелёный интент, затем нажав по нему захватом ещё раз, чтобы проверить его физическое состояние."

/singleton/psionic_power/redaction/skinsight/invoke(mob/living/user, mob/living/target)
	if(user.zone_sel.selecting != BP_CHEST)
		return FALSE
	. = ..()
	if(.)
		user.visible_message(SPAN_NOTICE("[user] кладёт руку на [target]."))
		to_chat(user, medical_scan_results(target, TRUE, SKILL_MAX))
		return TRUE

/singleton/psionic_power/redaction/mend
	name =            "Mend"
	cost =            7
	cooldown =        50
	use_melee =       TRUE
	min_rank =        PSI_RANK_APPRENTICE
	use_description = "Выберите любую часть тела на зелёном интенте и нажмите по цели, чтобы убрать возможные ранения с указанной зоны."

//UPDATED

/singleton/psionic_power/redaction/mend/invoke(mob/living/user, mob/living/carbon/human/target)
	var/red_rank = user.psi.get_rank(PSI_REDACTION)
	var/pk_rank = user.psi.get_rank(PSI_PSYCHOKINESIS)
	var/obj/item/organ/external/E = target.get_organ(user.zone_sel.selecting)
	if(!istype(user) || !istype(target))
		return FALSE
	. = ..()
	if(.)
		var/option = input(user, "Выберите что-нибудь!", "Какую помощь вы хотите оказать [target]?") in list("Базовая", "Переломы", "Кровотечение", "Конечности", "Органы")
		user.psi.set_cooldown(cooldown)
		if (!option)
			return
		if(option == "Базовая")
			if(do_after(user, 20))
				user.visible_message(SPAN_NOTICE("<i>[user] кладёт руки на плечи [target]...</i>"))
				to_chat(target, SPAN_NOTICE("Вы ощущаете приятное тепло...ваши раны заживают."))
				new /obj/temporary(get_turf(target),8, 'icons/effects/effects.dmi', "redaction_healing")

				if(user.skill_check(SKILL_ANATOMY, SKILL_TRAINED) && user.skill_check(SKILL_MEDICAL, SKILL_TRAINED))
					to_chat(user, SPAN_NOTICE("Помимо прочего, благодаря имеющимся навыкам, вам удалогсь залечить некоторые из менее заметных ран [target], значительно ускорив его реабилитацию."))
					target.adjustBruteLoss(-rand(20,40))
					target.adjustFireLoss(-rand(20,40))

				target.adjustBruteLoss(-(rand(10,20) * red_rank))
				target.adjustFireLoss(-(rand(10,20) * red_rank))
				if(pk_rank >= PSI_RANK_OPERANT)
					var/removal_size = clamp(5-pk_rank, 0, 5)
					var/valid_objects = list()
					for(var/thing in E.implants)
						var/obj/imp = thing

						if(!imp)
							continue

						if(imp.w_class >= removal_size && !istype(imp, /obj/item/implant))
							valid_objects += imp
					if(LAZYLEN(valid_objects))
						var/removing = pick(valid_objects)
						target.remove_implant(removing, TRUE)
						to_chat(user, SPAN_NOTICE("Помимо прочего, вы также извлекли [removing] из [E.name] вашего пациента."))
				return 1
		if(option == "Переломы")

//It's easier to repair severed tendon, than put bones in place or either repair it structure, so no rank check

			if(E.status & ORGAN_TENDON_CUT)
				if(do_after(user, 40))
					new /obj/temporary(get_turf(target),8, 'icons/effects/effects.dmi', "redaction_healing")
					to_chat(user, SPAN_NOTICE("Вы аккуратно сплели новое сухожилие на месте повреждённого в [E.name]."))
					E.status &= ~ORGAN_TENDON_CUT
					return 1

			if(red_rank < PSI_RANK_OPERANT)
				to_chat(user, SPAN_WARNING("Боюсь, ваших сил недостаточно для проведения данной операции!"))
				return 0
			if(!E)
				to_chat(user, SPAN_WARNING("Эта конечность отсутствует!"))
				return 0
			if(BP_IS_ROBOTIC(E))
				to_chat(user, SPAN_WARNING("Эта конечность заменена протезом."))
				return 0
			if(E.is_stump())
				to_chat(user, SPAN_WARNING("Нет смысла тратить силы на этот обрубок. Здесь вы бессильны."))
				return 0
			if(E.status & ORGAN_BROKEN)
				user.visible_message(SPAN_NOTICE("<i>[user] кладёт руку на [target]'s [E.name]...</i>"))
				if(do_after(user, 60))
					new /obj/temporary(get_turf(target),8, 'icons/effects/effects.dmi', "redaction_healing")
					if(!user.skill_check(SKILL_ANATOMY, SKILL_BASIC))
						if(prob(30))
							to_chat(user, SPAN_WARNING("Вы кое-как попытались вновь соединить кости [target], однако сделали своей неопытностью только хуже."))
							target.apply_damage(20,DAMAGE_BRUTE,E)
							return 0
					to_chat(user, SPAN_NOTICE("Вы установили кости на их прежнее место, заделав образовавшиеся на их поверхности трещины."))
					E.status &= ~ORGAN_BROKEN
					E.stage = 0
					to_chat(target, SPAN_NOTICE("Вы ощущаете приятное тепло в районе [E.name]...кости начинают вставать на место."))
					return 1
			else
				to_chat(user, SPAN_WARNING("[E.name] не имеет никаких внутренних повреждений!"))
				return 0

		if(option == "Кровотечение")
			if(red_rank < PSI_RANK_OPERANT)
				to_chat(user, SPAN_WARNING("Боюсь, ваших сил недостаточно для проведения данной операции!"))
				return 0
			if(!E)
				to_chat(user, SPAN_WARNING("Эта конечность отсутствует!"))
				return 0
			if(BP_IS_ROBOTIC(E))
				to_chat(user, SPAN_WARNING("Эта конечность заменена протезом."))
				return 0
			if(E.is_stump())
				to_chat(user, SPAN_WARNING("Нет смысла тратить силы на этот обрубок. Здесь вы бессильны."))
				return 0
			if(E.status & ORGAN_ARTERY_CUT)
				if(do_after(user, 60))
					new /obj/temporary(get_turf(target),8, 'icons/effects/effects.dmi', "redaction_healing")
					if(!user.skill_check(SKILL_ANATOMY, SKILL_BASIC))
						if(prob(30))
							to_chat(user, SPAN_WARNING("Ваша попытка связать разорванные вены в [E.name] закончились ужасным провалом."))
							target.apply_damage(20,DAMAGE_BRUTE,E)
							return 0
					to_chat(user, SPAN_NOTICE("Вы вновь связали разованные вены в [E.name], останавливая внутреннее кровотечение."))
					to_chat(target, SPAN_NOTICE("Вы ощущаете неприятное чувство в районе [E.name]...словно кто-то вновь сплетает ваши вены воедино."))
					E.status &= ~ORGAN_ARTERY_CUT
					return 1
			for(var/datum/wound/W in E.wounds)
				if(W.bleeding())
					if(W.wound_damage() < 30)
						if(do_after(user, 30))
							to_chat(user, SPAN_NOTICE("Вы аккуратно перекрыли поток крови, хлыщащий из [E.name], устранив протечку и зашив её."))
							to_chat(target, SPAN_NOTICE("Вы ощущаете приятное тепло в районе [E.name]...кровь, ранее шедшая из этого места - остановилась."))
							new /obj/temporary(get_turf(target),8, 'icons/effects/effects.dmi', "redaction_healing")
							W.bleed_timer = 0
							W.clamped = TRUE
							E.status &= ~ORGAN_BLEEDING
							return 1
					else
						to_chat(user, SPAN_NOTICE("Это ранение превыше ваших сил."))
						return 0
				else
					to_chat(user, SPAN_WARNING("[E.name] не имеет никаких внутренних повреждений!"))
					return 0

		if(option == "Конечности")
			if(red_rank < PSI_RANK_MASTER)
				to_chat(user, SPAN_WARNING("Боюсь, ваших сил недостаточно для проведения данной операции!"))
				return 0
			if(red_rank >= PSI_RANK_MASTER)

				if(!E)
					var/what =  alert(user, "Вы уверены, что хотите прибегнуть к трансплантации?", "Обратная связь", "Да", "Нет")
					switch(what)
						if("Да")
							if(do_after(user, 120))
								// Remove all stumps first
								for(var/O in target.organs_by_name)
									var/obj/item/organ/external/S = target.organs_by_name[O]
									if(S.is_stump())
										target.visible_message(SPAN_WARNING("[S.name] рассыпается, а на его месте начинает формироваться нечто новое..."))
										qdel(S)
								var/list/missing_limbs = target.species.has_limbs - target.organs_by_name
								if(do_after(user, 30))
									if(!LAZYLEN(missing_limbs))
										return
									var/o_type = pick(missing_limbs)
									new /obj/temporary(get_turf(target),8, 'icons/effects/effects.dmi', "redaction_healing")
									missing_limbs -= o_type
									var/limb_type = target.species.has_limbs[o_type]["path"]
									var/obj/new_limb = new limb_type(target)
									target.visible_message(SPAN_DANGER("Место на теле [target], где раньше был лишь обрубок - внезапно начинает формировать новую [new_limb.name]!"))
									user.visible_message(SPAN_DANGER("[user] выглядит крайне обессиленным."))
									if(!user.skill_check(SKILL_ANATOMY, SKILL_TRAINED) || !user.skill_check(SKILL_MEDICAL, SKILL_BASIC))
										if(prob(60))
											var/limb = pick(BP_L_LEG,BP_R_LEG, BP_L_HAND, BP_R_HAND)
											to_chat(user, SPAN_WARNING("Ваша некомпетентность привела к тому, что во время восстановления [new_limb.name] вы нанесли критический урон вашей конечности!"))
											user.apply_damage(80,DAMAGE_BRUTE,limb)
									user.adjustBruteLoss(rand(30,40))
									user.psi.spend_power(30)

									target.regenerate_icons()

						else
							return 0

		if(option == "Органы")
			if(red_rank < PSI_RANK_MASTER)
				to_chat(user, SPAN_WARNING("Боюсь, ваших сил недостаточно для проведения данной операции!"))
				return 0
			if(red_rank >= PSI_RANK_MASTER)
				for(var/obj/item/organ/internal/I in E.internal_organs)
					if(!BP_IS_ROBOTIC(I) && !BP_IS_CRYSTAL(I) && I.damage > 0)
						if(do_after(user, 120))
							to_chat(user, SPAN_NOTICE("Вы проникаете внутрь тела [target], восстанавливая повреждённый орган: [I]."))
							new /obj/temporary(get_turf(target),8, 'icons/effects/effects.dmi', "redaction_healing")
							var/heal_rate = red_rank
							if(!user.skill_check(SKILL_ANATOMY, SKILL_TRAINED) || !user.skill_check(SKILL_MEDICAL, SKILL_BASIC))
								if(prob(60))
									to_chat(user, SPAN_WARNING("Однако, ваша неопытность приводит к тому, что [target] получает ещё больше урона!"))
									I.damage = max(0, I.damage + rand(5,10))
									return 0
							I.damage = max(0, I.damage - rand(heal_rate,heal_rate*3))
							return 1

/singleton/psionic_power/redaction/cleanse
	name =            "Cleanse"
	cost =            9
	cooldown =        60
	use_melee =       TRUE
	min_rank =        PSI_RANK_MASTER
	use_description = "Нажмите по цели на зелёном интенте, чтобы очистить его от генетических отклонений и иных воздействий радиации."

/singleton/psionic_power/redaction/cleanse/invoke(mob/living/user, mob/living/carbon/human/target)
	if(!istype(user) || !istype(target))
		return FALSE
	. = ..()
	if(.)
		// No messages, as Mend procs them even if it fails to heal anything, and Cleanse is always checked after Mend.
		var/removing = rand(20,25)
		if(target.radiation)
			to_chat(user, SPAN_NOTICE("Вы выводите нежелательные частицы из тела [target]..."))
			if(target.radiation > removing)
				target.radiation -= removing
			else
				target.radiation = 0
			return TRUE
		if(target.getCloneLoss())
			to_chat(user, SPAN_NOTICE("Вы с трудом восстанавливаете прежнюю структуру ДНК [target]..."))
			if(target.getCloneLoss() >= removing)
				target.adjustCloneLoss(-removing)
			else
				target.adjustCloneLoss(-(target.getCloneLoss()))
			return TRUE
		to_chat(user, SPAN_NOTICE("Похоже, что у [target] нет ни радиационного заражения, не генетических отклонений."))
		return FALSE

/singleton/psionic_power/revive
	name =            "Revive"
	cost =            25
	cooldown =        80
	use_grab =        TRUE
	min_rank =        PSI_RANK_GRANDMASTER
	faculty =         PSI_REDACTION
	use_description = "Схватите цель, выберите голову и зелёный интент, затем нажмите по нему захватом, чтобы попытаться вернуть его к жизни."
	admin_log = FALSE

/singleton/psionic_power/revive/invoke(mob/living/user, mob/living/target)
	if(!isliving(target) || !istype(target) || user.zone_sel.selecting != BP_HEAD)
		return FALSE
	. = ..()
	if(.)
		if(target.stat != DEAD && !(target.status_flags & FAKEDEATH))
			to_chat(user, SPAN_WARNING("Этот человек ещё жив!"))
			return TRUE

		if((world.time - target.timeofdeath) > 6000)
			to_chat(user, SPAN_WARNING("[target] пролежал здесь слишком долго. Нет никакой надежды на то, что его выйдет оживить."))
			return TRUE

		user.visible_message(SPAN_NOTICE("<i>[user] кладёт обе руки на тело [target]...</i>"))
		new /obj/temporary(get_turf(target),6, 'icons/effects/effects.dmi', "green_sparkles")
		if(!do_after(user, 100, target))
			user.psi.backblast(rand(10,25))
			return TRUE

		for(var/mob/observer/G in GLOB.dead_mobs)
			if(G.mind && G.mind.current == target && G.client)
				to_chat(G, SPAN_NOTICE("<font size = 3><b>Your body has been revived, <b>Re-Enter Corpse</b> to return to it.</b></font>"))
				break
		to_chat(target, SPAN_NOTICE("<font size = 3><b>Жизненные силы снова наполняют ваше тело.</b></font>"))
		target.visible_message(SPAN_NOTICE("[target] трясётся в ужасе!"))
		new /obj/temporary(get_turf(target),8, 'icons/effects/effects.dmi', "rune_convert")
		target.adjustOxyLoss(-rand(30,45))
		target.basic_revival()
		return TRUE
