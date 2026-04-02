/obj/overmap/visitable/sector/perci
	name = "ТЫ НЕ ДОЛЖЕН ЭТОГО ВИДЕТЬ, ЭТО КОСТЫЛЬ"
	desc = "ТЫ НЕ ДОЛЖЕН ЭТОГО ВИДЕТЬ, ЭТО КОСТЫЛЬ."
	invisibility = 50

/datum/map_template/ruin/away_site/perci
	name = "Perci Nightmares"
	id = "awaysite_perci"
	spawn_cost = 2
	description = "..."
	prefix = "mods/_fd/_maps/perci_nightmare/maps/"
	suffixes = list("nightmare.dmm")
	area_usage_test_exempted_root_areas = list(/area/perci)
	apc_test_exempt_areas = list(
		/area/perci = NO_SCRUBBER|NO_VENT|NO_APC
	)

/area/perci
	requires_power = FALSE

/mob/living/simple_animal/npc_alive/doctor1
	name = "Unknown"
	desc = "Неизвестная личность в медицинском халате и прочих врачебных принадлежностях...почему я не могу рассмотреть его лицо?"
	icon_state = "perci_doctor2"
	icon_living = "perci_doctor2"
	icon_dead = "perci_doctor2"

/mob/living/simple_animal/npc_alive/doctor1/start_scene()
	ISay("Коммандер Эндсли, вы уверены?")
	forceMove(get_step(src, SOUTH))
	spawn(2 SECONDS)
		forceMove(get_step(src, SOUTH))
	spawn(4 SECONDS)
		forceMove(get_step(src, SOUTH))
	spawn(6 SECONDS)
		forceMove(get_step(src, SOUTH))
	spawn(8 SECONDS)
		forceMove(get_step(src, SOUTH))
	spawn(10 SECONDS)
		forceMove(get_step(src, SOUTH))
		ISay("Не будет ли имплант...гуманнее?")
	spawn(12 SECONDS)
		forceMove(get_step(src, SOUTH))
	spawn(14 SECONDS)
		forceMove(get_step(src, SOUTH))
	spawn(16 SECONDS)
		forceMove(get_step(src, SOUTH))
	spawn(18 SECONDS)
		forceMove(get_step(src, SOUTH))
	spawn(20 SECONDS)
		forceMove(get_step(src, SOUTH))
	spawn(22 SECONDS)
		ISay("Понимаю, коммандер...")
		forceMove(get_step(src, SOUTH))
	spawn(24 SECONDS)
		forceMove(get_step(src, SOUTH))
	spawn(26 SECONDS)
		forceMove(get_step(src, SOUTH))
	spawn(27 SECONDS)
		forceMove(get_step(src, SOUTH))
		visible_message(SPAN_NOTICE("[src] коротко кивает, прислоняя руку к наушнику."))
	spawn(28 SECONDS)
		forceMove(get_step(src, SOUTH))
	spawn(29 SECONDS)
		ISay("Внимание отделению, везём срочного пациента. Освободите седьмую операционную.")
		forceMove(get_step(src, SOUTH))
	spawn(30 SECONDS)
		forceMove(get_step(src, SOUTH))
	spawn(31 SECONDS)
		forceMove(get_step(src, SOUTH))
	spawn(32 SECONDS)
		ISay("Это приказ коммандера Эндсли. Мы НЕ БУДЕМ его обсуждать.")
		forceMove(get_step(src, SOUTH))
	spawn(33 SECONDS)
		forceMove(get_step(src, SOUTH))
	spawn(34 SECONDS)
		forceMove(get_step(src, SOUTH))
	spawn(35 SECONDS)
		forceMove(get_step(src, SOUTH))
	spawn(36 SECONDS)
		visible_message(SPAN_DANGER("[src] с хлопком распахивает дверь."))
		forceMove(get_step(src, SOUTH))
//Врач сделал в сумме 24 шага, чтобы зайти в операционную!
	spawn(37 SECONDS)
		forceMove(get_step(src, SOUTH))
	spawn(38 SECONDS)
		dir = turn(dir,90)
		ISay("Доктор Кондраки? Разве вы не должны быть...")
	spawn(46 SECONDS)
		ISay("Будет тут через секунду.")
		dir = turn(dir,90)
	spawn(66 SECONDS)
		dir = turn(dir,-90)
		ISay("П-поняла!")
	spawn(68 SECONDS)
		forceMove(get_step(src, SOUTH))
		dir = turn(dir,-90)
	spawn(69 SECONDS)
		forceMove(get_step(src, SOUTH))
	spawn(70 SECONDS)
		forceMove(get_step(src, SOUTH))
	spawn(71 SECONDS)
		forceMove(get_step(src, SOUTH))
	spawn(72 SECONDS)
		dir = turn(dir,90)
	spawn(112 SECONDS)
		ISay("Перси, смотри на меня, хорошо?...")
	spawn(116 SECONDS)
		ISay("Главное не закрывай глаза, всё будет-")

/mob/living/simple_animal/npc_alive/doctor2
	name = "Unknown"
	desc = "Неизвестная личность в медицинском халате и прочих врачебных принадлежностях...почему я не могу рассмотреть его лицо?"
	icon_state = "perci_doctor1"
	icon_living = "perci_doctor1"
	icon_dead = "perci_doctor1"

/mob/living/simple_animal/npc_alive/doctor2/start_scene()
	dir = turn(dir,90)
	spawn(38 SECONDS)
		dir = turn(dir,-180)
	spawn(40 SECONDS)
		ISay("Боюсь, там я уже ничем не смогу помочь.")
	spawn(44 SECONDS)
		ISay("Пациент готов?")
	spawn(50 SECONDS)
		dir = turn(dir,-90)
		ISay("Огромная просьба - придерживайте его.")
	spawn(56 SECONDS)
		dir = turn(dir,90)
		ISay("У нас закончилась анестезия. Оперировать придётся на живца.")
	spawn(64 SECONDS)
		dir = turn(dir,90)
		ISay("Абигейл, ты тоже.")
	spawn(68 SECONDS)
		visible_message(SPAN_NOTICE("[src] копается в инструментах на столе."))
	spawn(72 SECONDS)
		icon_state = "perci_doctor1_saw"
	spawn(74 SECONDS)
		dir = turn(dir,-180)
	spawn(78 SECONDS)
		ISay("Постарайся сконцентрировать своё внимание на чём-то другом, Перси.")
		visible_message(SPAN_WARNING("[src] прислоняет лезвие пилы к правой руке юноши."))
	spawn(80 SECONDS)
		visible_message(SPAN_DANGER("БЛЯТЬ."))
	spawn(81 SECONDS)
		visible_message(SPAN_DANGER("НЕТ."))
	spawn(82 SECONDS)
		ISay("Болеть будет всего пару секунд.")
		visible_message(SPAN_DANGER("БЛЯТЬ."))
		for(var/mob/living/carbon/human/perci in orange(2, src))
			perci.apply_damage(10, DAMAGE_BRUTE, BP_R_ARM)
		playsound(src.loc, 'sound/weapons/circsawhit.ogg', 30, 1)
	spawn(83 SECONDS)
		visible_message(SPAN_DANGER("БЛЯТЬ."))
		for(var/mob/living/carbon/human/perci in orange(2, src))
			perci.apply_damage(20, DAMAGE_BRUTE, BP_R_ARM)
		playsound(src.loc, 'sound/weapons/circsawhit.ogg', 30, 1)
	spawn(84 SECONDS)
		visible_message(SPAN_DANGER("БЛЯ---Я-Я-Я--Я-Я-Я-Я-Я-Я-Я-ЯАААААААААААААА!!!"))
		for(var/mob/living/carbon/human/perci in orange(2, src))
			perci.apply_damage(40, DAMAGE_BRUTE, BP_R_ARM)
		playsound(src.loc, 'sound/weapons/circsawhit.ogg', 30, 1)
	spawn(85 SECONDS)
		for(var/mob/living/carbon/human/perci in orange(2, src))
			perci.apply_damage(80, DAMAGE_BRUTE, BP_R_ARM)
		playsound(src.loc, 'sound/weapons/circsawhit.ogg', 30, 1)
	spawn(90 SECONDS)
		ISay("Господи, да я чуть не оглох...")
	spawn(94 SECONDS)
		visible_message(SPAN_DANGER("В глазах всё красным-красно..."))
		ISay("Персиваль, ты меня слышишь?")
	spawn(98 SECONDS)
		ISay("Верно, осталось совсем немного!")
		visible_message(SPAN_DANGER("Моя...рука..."))
	spawn(100 SECONDS)
		visible_message(SPAN_DANGER("Ру...ка..."))
	spawn(102 SECONDS)
		visible_message(SPAN_DANGER("ААААА----А---А--АА--А-АА-."))
		for(var/mob/living/carbon/human/perci in orange(2, src))
			perci.apply_damage(20, DAMAGE_BRUTE, BP_L_ARM)
		playsound(src.loc, 'sound/weapons/circsawhit.ogg', 30, 1)
	spawn(104 SECONDS)
		visible_message(SPAN_DANGER("ААААААААААААААААААААААААА, СУКА-А!!!"))
		for(var/mob/living/carbon/human/perci in orange(2, src))
			perci.apply_damage(50, DAMAGE_BRUTE, BP_L_ARM)
		playsound(src.loc, 'sound/weapons/circsawhit.ogg', 30, 1)
	spawn(106 SECONDS)
		visible_message(SPAN_DANGER("ХВАТИТ!!! ПРОШУ!!!"))
		for(var/mob/living/carbon/human/perci in orange(2, src))
			perci.apply_damage(100, DAMAGE_BRUTE, BP_L_ARM)
		playsound(src.loc, 'sound/weapons/circsawhit.ogg', 30, 1)
	spawn(107 SECONDS)
		visible_message(SPAN_DANGER("Больно...больно...больно..."))
		ISay("Мы его теряем.")
	spawn(112 SECONDS)
		visible_message(SPAN_DANGER("За что...почему..."))
		ISay("Я предупредил вас сразу - нам НЕЧЕМ ему помочь!")
	spawn(116 SECONDS)
		dir = turn(dir,-90)
		forceMove(get_step(src, NORTH))
		ISay("Скорее, помогите мне переместить его в палату!")

/mob/living/simple_animal/npc_alive/martin
	name = "Martin Endsley"
	desc = "Дядя...что с твоим лицом? Почему я- не могу вспомнить его?"
	icon_state = "perci_martin"
	icon_living = "perci_martin"
	icon_dead = "perci_martin"

/mob/living/simple_animal/npc_alive/martin/start_scene()
	forceMove(get_step(src, SOUTH))
	spawn(2 SECONDS)
		visible_message(SPAN_WARNING("Мои руки чешутся и горят..."))
		forceMove(get_step(src, SOUTH))
	spawn(4 SECONDS)
		ISay("Более чем.")
		forceMove(get_step(src, SOUTH))
	spawn(6 SECONDS)
		ISay("Мы не можем полагаться на случай.")
		forceMove(get_step(src, SOUTH))
	spawn(8 SECONDS)
		ISay("Сегодня пострадала она. Завтра - пострадает корабль.")
		forceMove(get_step(src, SOUTH))
	spawn(10 SECONDS)
		forceMove(get_step(src, SOUTH))
	spawn(12 SECONDS)
		ISay("Замки - не вечны. Нужно рубить проблему на корню.")
		forceMove(get_step(src, SOUTH))
	spawn(14 SECONDS)
		visible_message(SPAN_WARNING("Нервы ни к чёрту...я уже просто не могу это терпеть."))
		forceMove(get_step(src, SOUTH))
	spawn(16 SECONDS)
		ISay("Это новый рак, доктор. Наши действия - милосердие, а не кара.")
		forceMove(get_step(src, SOUTH))
	spawn(18 SECONDS)
		forceMove(get_step(src, SOUTH))
	spawn(20 SECONDS)
		ISay("Разве вы этого не понимаете?")
		forceMove(get_step(src, SOUTH))
	spawn(22 SECONDS)
		forceMove(get_step(src, SOUTH))
	spawn(24 SECONDS)
		forceMove(get_step(src, SOUTH))
	spawn(26 SECONDS)
		ISay("В таком случае хватит ставить мои решения под сомнение. Делайте свою работу.")
		visible_message(SPAN_NOTICE("[src] выругался."))
		forceMove(get_step(src, SOUTH))
	spawn(28 SECONDS)
		visible_message(SPAN_WARNING("Я готов сдирать с себя кожу кусками, лишь бы зуд прекратился..."))
		forceMove(get_step(src, SOUTH))
	spawn(30 SECONDS)
		forceMove(get_step(src, SOUTH))
	spawn(32 SECONDS)
		visible_message(SPAN_NOTICE("[src] опускает взгляд на парня."))
		forceMove(get_step(src, SOUTH))
	spawn(34 SECONDS)
		forceMove(get_step(src, SOUTH))
	spawn(36 SECONDS)
		ISay("Не смотри на меня таким потерянным взглядом.")
		forceMove(get_step(src, SOUTH))
	spawn(38 SECONDS)
		forceMove(get_step(src, SOUTH))
	spawn(40 SECONDS)
		ISay("Ты ни хуже меня понимаешь то, что я делаю это ради тебя.")
		forceMove(get_step(src, SOUTH))
	spawn(42 SECONDS)
		forceMove(get_step(src, SOUTH))
	spawn(44 SECONDS)
		forceMove(get_step(src, SOUTH))
	spawn(46 SECONDS)
		ISay("...И ради благополучия всех остальных.")
		forceMove(get_step(src, SOUTH))
	spawn(48 SECONDS)
		forceMove(get_step(src, SOUTH))
	spawn(52 SECONDS)
		forceMove(get_step(src, SOUTH))
	spawn(53 SECONDS)
		forceMove(get_step(src, SOUTH))
	spawn(54 SECONDS)
		ISay("Это ещё зачем?")
		forceMove(get_step(src, SOUTH))
	spawn(60 SECONDS)
		visible_message(SPAN_DANGER("[src] слегка надавливает руками на ноги Персиваля."))
		ISay("Ладно, не дёргайся. Сделаешь только хуже.")
	spawn(84 SECONDS)
		ISay("Крепись, солдат! Уже почти всё!")
	spawn(92 SECONDS)
		ISay("Перси, оставайся со мной!")
	spawn(96 SECONDS)
		ISay("Ты наконец-то станешь здоровым человеком! Как все мы!")
	spawn(108 SECONDS)
		dir = turn(dir,90)
		ISay("Так СДЕЛАЙТЕ что-нибудь!")

/obj/item/clothing/suit/storage/perci_dad
	name = "hipster flannel"
	desc = "Stupidly looking flannel, but atleast clean and intact."
	icon = 'mods/_fd/_maps/perci_nightmare/icons/clothing.dmi'
	icon_state = "flannel_brown"
	item_icons = list(
		slot_wear_suit_str = 'mods/_fd/_maps/perci_nightmare/icons/clothing_mob.dmi')

/obj/item/clothing/under/perci_dad
	name = "tactical turtleneck"
	desc = "An modern black turtleneck."
	icon = 'mods/_fd/_maps/perci_nightmare/icons/clothing.dmi'
	item_icons = list(slot_w_uniform_str = 'mods/_fd/_maps/perci_nightmare/icons/clothing_mob.dmi')
	icon_state = "quillturtleneck"
	worn_state = "quillturtleneck"

/obj/item/clothing/accessory/necklace/perci_key
	name = "key necklace"
	desc = "A simple necklace with strange shape."
	icon = 'mods/_fd/_maps/perci_nightmare/icons/clothing.dmi'
	item_icons = list(slot_w_uniform_str = 'mods/_fd/_maps/perci_nightmare/icons/clothing_mob.dmi')
	accessory_icons = list(
		slot_w_uniform_str = 'mods/_fd/_maps/perci_nightmare/icons/clothing_mob.dmi',
		slot_wear_suit_str = 'mods/_fd/_maps/perci_nightmare/icons/clothing_mob.dmi')
	icon_state = "cross"
	slot_flags = SLOT_MASK | SLOT_TIE
