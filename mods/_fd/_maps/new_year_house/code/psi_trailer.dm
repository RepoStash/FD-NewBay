/mob/living/simple_animal/holo_npc/door
	name = "wooden door"
	desc = "Literally just a door."
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/wood_door.dmi'
	pixel_x = -16
	icon_state = "wood"
	icon_living = "wood"
	icon_dead = "wood"

/mob/living/simple_animal/holo_npc/door/start_thinking()
	spawn(8 SECONDS)
		icon_state = "woodopen"
		icon_living = "woodopen"
		icon_dead = "woodopen"
		playsound(src.loc, 'mods/_fd/_maps/small_exoplanet_1/sounds/doorknock.wav', 70, 1)

	spawn(22 SECONDS)
		animate(src, 5 SECONDS, alpha = 0)
	spawn(27 SECONDS)
		qdel(src)

// НЕВИДИМЫЙ ЗАКАДРОВЫЙ ГОЛОС
/mob/living/simple_animal/holo_npc/text
	name = "---"
	desc = "---"
	icon = 'mods/_fd/_maps/new_year_house/icons/psi_trailer.dmi'
	icon_state = null
	icon_living = null
	icon_dead = null

/mob/living/simple_animal/holo_npc/text/start_thinking()
	spawn(27 SECONDS)
		ISay("АНИМЕ ПРОИЗВОДСТВА СТУДИИ 'TEOTR BROS'...")

// МУЗЫКУ МЫ ЗАПУСКАЕМ С ЭТОГО НПС, ИБО ОН БУДЕТ В СЦЕНЕ ВСЕГДА!

	spawn(28 SECONDS)
		playsound(src.loc, 'mods/_fd/_maps/new_year_house/trailer_music.mp3', 20, 0)

	spawn(57 SECONDS)
		ISay("ПРИ ПОДДЕРЖКЕ ОРГАНИЗАЦИИ 'TRINARY'...")

	spawn(88 SECONDS)
		ISay("СЦЕНАРИЙ ЗА АВТОРСТВОМ ФРИДРИХА МАЛХА...")

	spawn(125 SECONDS)
		ISay("РЕЖИССУРА И ПОСТАНОВКА РАЙНЕРА МАЛХА...")

	spawn(178 SECONDS)
		ISay("ОЖИДАЕМОЕ ПРОДОЛЖЕНИЕ ПОЛЮБИВШЕГОСЯ СПИНОФФА...")
		visible_message(SPAN_NOTICE("Музыка внезапно начинает менять тон..."))

	spawn(180 SECONDS)
		playsound(src.loc, 'mods/_fd/_maps/new_year_house/trailer_alt.mp3', 20, 0)

	spawn(300 SECONDS)
		ISay("'META-HUMAN: LOADED GUNS'")

	spawn(305 SECONDS)
		visible_message(SPAN_NOTICE("Сквозь гул ночных улиц раздаётся звон открывающей двери какого-то магазина. Наружу вываливается максимально неопрятный, вероятно весьма вонючий мужлан с целофановым пакетиком в руках."))
		playsound(src.loc, 'mods/_fd/_maps/new_year_house/urban.wav', 20, 0)

	spawn(330 SECONDS)
		ISay("(ожидайтевпервомквартале2525гогода)")
	spawn(332 SECONDS)
		qdel(src)

/mob/living/simple_animal/holo_npc/hidero
	name = "Hidero Wakamatsu"
	desc = "Какой-то подпивасный блондинистый хрыщ. Издали похож на твоего типичного соседа с Плутона."
	icon = 'mods/_fd/_maps/new_year_house/icons/psi_trailer.dmi'
	icon_state = "hidero"
	icon_living = "hidero"
	icon_dead = "hidero"

	color = "#ffe02e"

/mob/living/simple_animal/holo_npc/hidero/start_thinking()
	alpha = 0
	invisibility = 50
	dir = NORTH

	spawn(310 SECONDS)
		invisibility = 0
		animate(src, 5 SECONDS, alpha = 150)
	spawn(312 SECONDS)
		forceMove(get_step(src, NORTH))
		visible_message(SPAN_NOTICE("[src] прикрывает лицо от фонарных столбов."))
	spawn(313 SECONDS)
		forceMove(get_step(src, NORTH))
	spawn(314 SECONDS)
		forceMove(get_step(src, NORTH))
	spawn(315 SECONDS)
		dir = EAST
		visible_message(SPAN_NOTICE("[src] подкуривает сигарету при помощи пальца, глядя на вывеску пивнушки."))
	spawn(316 SECONDS)
		dir = SOUTH
	spawn(318 SECONDS)
		ISay("Пиздец.")
	spawn(320 SECONDS)
		ISay("Ну и денёк.")
		dir = NORTH
	spawn(321 SECONDS)
		forceMove(get_step(src, NORTH))
	spawn(322 SECONDS)
		animate(src, 5 SECONDS, alpha = 0)
		forceMove(get_step(src, NORTH))
	spawn(323 SECONDS)
		forceMove(get_step(src, NORTH))
	spawn(328 SECONDS)
		qdel(src)


/mob/living/simple_animal/holo_npc/ardent
	name = "Ardent Mire"
	desc = "Относительно рослый, 'огненный' парень в дерзком прикиде. Его правая нога полностью заменена облегчённым 'прыжковым' протезом."
	icon = 'mods/_fd/_maps/new_year_house/icons/psi_trailer.dmi'
	icon_state = "ardent_civil"
	icon_living = "ardent_civil"
	icon_dead = "ardent_civil"

	color = "#ee711e"

/mob/living/simple_animal/holo_npc/ardent/start_thinking()
// ПЕРВАЯ СЕКЦИЯ ТРЕЙЛЕРА, БЕЗ МУЗЫКИ - НАЧАЛО ТУТ

	dir = WEST
	visible_message(SPAN_NOTICE("Спешно прилизывая волосы, [src] быстрым шагом подходит к двери."))
	spawn(4 SECONDS)
		ISay("Соберись, Маер. Наверняка, там ничего серьёзного...")
		dir = SOUTH
	spawn(7 SECONDS)
		visible_message(SPAN_NOTICE("[src] кладёт руку на деревянную дверь, слегка толкая её вперёд"))
	spawn(8 SECONDS)
		forceMove(get_step(src, SOUTH))
	spawn(11 SECONDS)
		forceMove(get_step(src, SOUTH))
		ISay("Директор Ян- Ларивьен? Вы хотели меня видеть?")
	spawn(21 SECONDS)
		visible_message(SPAN_NOTICE("[src] неуверенно кивнул."))
	spawn(22 SECONDS)
		animate(src, 5 SECONDS, alpha = 0)

// ПЕРВАЯ СЕКЦИЯ ТРЕЙЛЕРА, БЕЗ МУЗЫКИ - КОНЕЦ ТУТ
// За кадром меняем Арденту прикид и ставим его в центр
	spawn(26 SECOND)
		icon_state = "ardent_combat"
		icon_living = "ardent_combat"
		icon_dead = "ardent_combat"
		dir = EAST

// ВТОРАЯ СЕКЦИЯ ТРЕЙЛЕРА - НАЧАЛО ТУТ

	spawn(27 SECONDS)
		animate(src, 5 SECONDS, alpha = 150)
	spawn(29 SECONDS)
		new /obj/temporary(get_turf(src),4, 'icons/effects/effects.dmi', "kick")
		visible_message(SPAN_NOTICE("[src] кряхтит."))
		dir = SOUTH
		playsound(src.loc, 'sound/weapons/genhit1.ogg', 50, 1)
	spawn(32 SECONDS)
		new /obj/temporary(get_turf(src),4, 'icons/effects/effects.dmi', "smash")
		playsound(src.loc, 'sound/weapons/genhit3.ogg', 50, 1)
		forceMove(get_step(src, WEST))
		forceMove(get_step(src, WEST))
		dir = EAST
		SetTransform(1,1,1,-90)
	spawn(33 SECONDS)
		visible_message(SPAN_WARNING("[src] кашляет, в попытках восстановить сбитое дыхание."))
	spawn(38 SECONDS)
		ISay("Мне, так-то, двадцать-")
	spawn(39 SECONDS)
		SetTransform(1,1,1,0)
		visible_message(SPAN_NOTICE("[src] неуклюже встаёт обратно на ноги."))
	spawn(43 SECONDS)
		ISay("Как ты там, ещё раз...назвал себя?")
	spawn(50 SECONDS)
		ISay("Последний вопрос! Последний!!!")
	spawn(55 SECONDS)
		ISay("Чё не 'проводник'-то сразу?...")
		visible_message(SPAN_NOTICE("[src] посмеивается."))
	spawn(56 SECONDS)
		animate(src, 5 SECONDS, alpha = 0)

// ВТОРАЯ СЕЦИЯ ТРЕЙЛЕРА - КОНЕЦ ТУТ

	spawn(60 SECONDS)
		forceMove(get_step(src, NORTH))
		forceMove(get_step(src, EAST))
		icon_state = "ardent_combat2"
		icon_living = "ardent_combat2"
		icon_dead = "ardent_combat2"

// ТРЕТЬЯ СЕКЦИЯ ТРЕЙЛЕРА - НАЧАЛО ТУТ

	spawn(63 SECONDS)
		animate(src, 5 SECONDS, alpha = 150)
	spawn(67 SECONDS)
		visible_message(SPAN_NOTICE("[src] зевает, почёсывая ранее разбитый нос."))
		dir = SOUTH
	spawn(68 SECONDS)
		forceMove(get_step(src, SOUTH))
	spawn(69 SECONDS)
		forceMove(get_step(src, SOUTH))
	spawn(74 SECONDS)
		ISay("Не переживай, дюймовочка, это раздражение взаимно.")
	spawn(79 SECONDS)
		dir = EAST
		ISay("Так что давай, быстрее начнём - быстрее закончим.")
	spawn(85 SECONDS)
		animate(src, 5 SECONDS, alpha = 0)

// ТРЕТЬЯ СЕКЦИЯ ТРЕЙЛЕРА - КОНЕЦ ТУТ

	spawn(90 SECONDS)
		dir = WEST
		forceMove(get_step(src, NORTH))
		icon_state = "ardent_combat3"
		icon_living = "ardent_combat3"
		icon_dead = "ardent_combat3"
		pixel_x = 10

// ЧЕТВЁРТАЯ СЕКЦИЯ ТРЕЙЛЕРА - НАЧАЛО ТУТ

	spawn(93 SECONDS)
		animate(src, 5 SECONDS, alpha = 150)
	spawn(99 SECONDS)
		animate(src, 5 SECONDS, alpha = 0)

	spawn(140 SECONDS)
		icon_state = "ardent_civil"
		icon_living = "ardent_civil"
		icon_dead = "ardent_civil"
		pixel_x = 0
		dir = EAST
		forceMove(get_step(src, EAST))

	spawn(145 SECONDS)
		animate(src, 5 SECONDS, alpha = 150)
	spawn(164 SECONDS)
		dir = NORTH
	spawn(169 SECONDS)
		animate(src, 5 SECONDS, alpha = 0)

// ЧЕТВЁРТАЯ СЕКЦИЯ ТРЕЙЛЕРА - КОНЕЦ ТУТ

	spawn(175 SECONDS)
		dir = WEST
		pixel_x = 10
		icon_state = "ardent_combat"
		icon_living = "ardent_combat"
		icon_dead = "ardent_combat"
	spawn(180 SECONDS)
		animate(src, 5 SECONDS, alpha = 150)
	spawn(185 SECONDS)
		new /obj/temporary(get_turf(src),4, 'icons/effects/effects.dmi', "emppulse")
		visible_message(SPAN_NOTICE("[src] сдавил рукой плечо незнакомца."))
		ISay("Иначе что? Убьёшь меня, как того парня?")
	spawn(187 SECONDS)
		animate(src, 5 SECONDS, alpha = 0)

	spawn(243 SECONDS)
		SetTransform(1,1,1,90)
		dir = EAST
		pixel_x = 0
		forceMove(get_step(src, EAST))
		forceMove(get_step(src, SOUTH))

	spawn(244 SECONDS)
		animate(src, 5 SECONDS, alpha = 150)
	spawn(255 SECONDS)
		visible_message(SPAN_NOTICE("[src] хрипит и кашляет сквозь шлем, пытаясь с трудом перевернуться на спину."))
	spawn(257 SECONDS)
		dir = SOUTH
		visible_message(SPAN_WARNING("[src] жадно глотает воздух."))
	spawn(258 SECONDS)
		ISay("З-знаете, что?...")
	spawn(263 SECONDS)
		ISay("...я был, в принципе, н-не против, когда мне предложили избить пару клоунов.")
	spawn(268 SECONDS)
		ISay("Кибер-самурай с-с Ван Хельсингом б-были даже прикольными- в каком-то р-роде, ага.")
	spawn(274 SECONDS)
		ISay("Д-да и вампирша, будь лет н-на сто помоложе - даже была бы в моём вкусе...")
	spawn(282 SECONDS)
		visible_message(SPAN_WARNING("[src] кашляет!"))
	spawn(284 SECONDS)
		ISay("...но ебучая инквизиция.")
	spawn(292 SECONDS)
		icon_state = "ardent_combat4"
		icon_living = "ardent_combat4"
		icon_dead = "ardent_combat4"
		visible_message(SPAN_DANGER("Правая рука [src] внезапно загорается ярким пламенем!"))
		ISay("Инквизиция - это уже я-явно перебор.")
	spawn(296 SECONDS)
		qdel(src)

/mob/living/simple_animal/holo_npc/vivian
	name = "Vivian Rockwell"
	desc = "Стройная, слегка покоцанная девчушка в строгом барменском одеянии. Её левая нога вывернута, с таким не побегаешь..."
	icon = 'mods/_fd/_maps/new_year_house/icons/psi_trailer.dmi'
	icon_state = "vivian"
	icon_living = "vivian"
	icon_dead = "vivian"

	color = "#5abee6"

/mob/living/simple_animal/holo_npc/vivian/start_thinking()
	alpha = 0
	invisibility = 50

	spawn(244 SECONDS)
		invisibility = 0
		animate(src, 5 SECONDS, alpha = 150)
	spawn(246 SECONDS)
		ISay("Ардент! Ардент!!!")
	spawn(250 SECONDS)
		ISay("Маер, мать твою за ногу - приходи в себя!")
	spawn(252 SECONDS)
		dir = WEST
	spawn(253 SECONDS)
		dir = NORTH
	spawn(255 SECONDS)
		dir = SOUTH
		ISay("Слава Селене! Ещё дышит!")

	spawn(296 SECONDS)
		qdel(src)

/mob/living/simple_animal/holo_npc/inq
	name = "UNKNOWN"
	desc = "Неизвестный в тяжёлой силовой броне, стилизованной под старомодную инквизицию."
	icon = 'mods/_fd/_maps/new_year_house/icons/psi_trailer.dmi'
	icon_state = "antag6"
	icon_living = "antag6"
	icon_dead = "antag6"

	color = "#f8c930"

/mob/living/simple_animal/holo_npc/inq/start_thinking()
	alpha = 0
	invisibility = 50

	spawn(250 SECONDS)
		invisibility = 0
		animate(src, 5 SECONDS, alpha = 150)
	spawn(253 SECONDS)
		forceMove(get_step(src, SOUTH))
	spawn(256 SECONDS)
		forceMove(get_step(src, SOUTH))
	spawn(260 SECONDS)
		forceMove(get_step(src, SOUTH))
	spawn(263 SECONDS)
		dir = EAST

	spawn(296 SECONDS)
		qdel(src)

/mob/living/simple_animal/holo_npc/okita
	name = "Okita Takeda"
	desc = "Высокий, худощавый мужчина с длинными, седыми волосами. Его исписанное шрамами лицо и поникший взгляд сильно контрастирует с рыжим."
	icon = 'mods/_fd/_maps/new_year_house/icons/psi_trailer.dmi'
	icon_state = "okita_combat2"
	icon_living = "okita_combat2"
	icon_dead = "okita_combat2"

	color = "#5abee6"

/mob/living/simple_animal/holo_npc/okita/start_thinking()
// ТРЕТЬЯ СЕКЦИЯ ТРЕЙЛЕРА - НАЧАЛО ТУТ

	alpha = 0
	invisibility = 50

	spawn(63 SECONDS)
		visible_message(SPAN_NOTICE("Ночь, крыша. Окита и Ардент стоят почти у самого края, пока снизу открывается вид на вход в некое барное заведение."))
		invisibility = 0
		animate(src, 5 SECONDS, alpha = 150)
	spawn(67 SECONDS)
		ISay("Никогда бы не подумал...")
	spawn(70 SECONDS)
		ISay("...что мы снова окажемся в одной команде.")
		dir = WEST
	spawn(80 SECONDS)
		visible_message(SPAN_NOTICE("[src] молча кивнул, возвращая шлем на голову."))
	spawn(82 SECONDS)
		icon_state = "okita_combat"
		icon_living = "okita_combat"
		icon_dead = "okita_combat"
	spawn(83 SECONDS)
		dir = SOUTH
	spawn(85 SECONDS)
		animate(src, 5 SECONDS, alpha = 0)

// ТРЕТЬЯ СЕКЦИЯ ТРЕЙЛЕРА - КОНЕЦ ТУТ

	spawn(90 SECONDS)
		dir = EAST
		forceMove(get_step(src, NORTH))
		icon_state = "okita_combat3"
		icon_living = "okita_combat3"
		icon_dead = "okita_combat3"
		pixel_x = -10

// ЧЕТВЁРТАЯ СЕКЦИЯ ТРЕЙЛЕРА - НАЧАЛО ТУТ

	spawn(93 SECONDS)
		animate(src, 5 SECONDS, alpha = 150)
	spawn(96 SECONDS)
		ISay("Какое там стоп-слово?...")
	spawn(99 SECONDS)
		animate(src, 5 SECONDS, alpha = 0)

// ЧЕТВЁРТАЯ СЕКЦИЯ ТРЕЙЛЕРА - КОНЕЦ ТУТ

	spawn(218 SECONDS)
		pixel_x = 0
		dir = WEST
		icon_state = "okita_combat"
		icon_living = "okita_combat"
		icon_dead = "okita_combat"
	spawn(221 SECONDS)
		animate(src, 5 SECONDS, alpha = 150)
	spawn(226 SECONDS)
		visible_message(SPAN_NOTICE("[src] скалится в практически истерической улыбке."))
		ISay("Ну давайте, шеф! Пол дела уже сделано! Осталось спустить курок!")
	spawn(232 SECONDS)
		ISay("Вышибите мне мозги к чёртовой матери! Это ведь задача легче лёгкого!!!")
	spawn(237 SECONDS)
		animate(src, 5 SECONDS, alpha = 0)

/mob/living/simple_animal/holo_npc/naoki
	name = "Naoki Yano"
	desc = "Хорошо слаженная женщина с обломанными рогами. Обе её руки заменены протезами неизвестной марки. Выглядит уставшей."
	icon = 'mods/_fd/_maps/new_year_house/icons/psi_trailer.dmi'
	icon_state = "naoki_civil2"
	icon_living = "naoki_civil2"
	icon_dead = "naoki_civil2"

	color = "#ff0202"

/mob/living/simple_animal/holo_npc/naoki/start_thinking()
// ПЕРВАЯ СЕКЦИЯ ТРЕЙЛЕРА, БЕЗ МУЗЫКИ - НАЧАЛО ТУТ
	alpha = 0
	invisibility = 50
	dir = EAST

	spawn(8 SECONDS)
		invisibility = 0
		animate(src, 5 SECONDS, alpha = 150)
	spawn(12 SECONDS)
		visible_message(SPAN_NOTICE("[src] хмуро поглядыват на папку в руке."))
	spawn(14 SECONDS)
		ISay("Менее официально, Ардент.")
	spawn(17 SECONDS)
		dir = NORTH
	spawn(19 SECONDS)
		visible_message(SPAN_NOTICE("[src] машет документами в руке."))
		ISay("Есть новости, которые нужно обсудить.")

	spawn(22 SECOND)
		animate(src, 5 SECONDS, alpha = 0)

// ПЕРВАЯ СЕКЦИЯ ТРЕЙЛЕРА, БЕЗ МУЗЫКИ - КОНЕЦ ТУТ
// Наоки ещё может пригодиться, пока не убираем её

// ЧЕТВЁРТАЯ СЕКЦИЯ ТРЕЙЛЕРА - НАЧАЛО ТУТ

	spawn(88 SECONDS)
		forceMove(get_step(src, NORTH))
		forceMove(get_step(src, NORTH))
	spawn(93 SECONDS)
		ISay("Весь Сол трещит по швам.")
	spawn(95 SECONDS)
		ISay("Стоило разобраться с одной проблемой...")
		visible_message(SPAN_NOTICE("Напарники стоят посреди какого-то склада, в окружении людей в масках."))
	spawn(99 SECONDS)
		ISay("...как нам на голову свалилось ещё десять.")
	spawn(105 SECONDS)
		ISay("Пошедшие по рукам технологии пришельцев...")
	spawn(112 SECONDS)
		visible_message(SPAN_NOTICE("Мужчина, хлюпая стальными ботинками по лужам, волочит на встречу полицейским полу-живое тело."))
		ISay("...Вигиланты, решившие что они имеют право вершить чужие судьбы.")
	spawn(128 SECONDS)
		ISay("Анархисты.")
	spawn(138 SECONDS)
		ISay("Те, что всё ещё следуя ЕГО заветам перекраивают мир под себя.")
		forceMove(get_step(src, NORTH))
		forceMove(get_step(src, EAST))
		icon_state = "naoki_civil"
		icon_living = "naoki_civil"
		icon_dead = "naoki_civil"
		dir = SOUTH
	spawn(145 SECONDS)
		visible_message(SPAN_NOTICE("[src] делает глубокую сигаретную затяжку."))
		animate(src, 5 SECONDS, alpha = 150)
		ISay("Это не та работёнка, с которой могут справиться спец-службы.")
	spawn(149 SECONDS)
		ISay("Что уж говорить о городской полиции...")
	spawn(155 SECONDS)
		ISay("У них нет и шанса на победу против организованной группы мета-людей.")
		visible_message(SPAN_NOTICE("[src] бросает окурок вниз."))
		dir = WEST
	spawn(159 SECONDS)
		ISay("И именно поэтому мы должны вмешаться в ситуацию прежде, чем их маленькие стычки перерастут в полноценную войну.")
	spawn(169 SECONDS)
		visible_message(SPAN_NOTICE("[src] вздыхает."))
		animate(src, 5 SECONDS, alpha = 0)
	spawn(175 SECONDS)
		ISay("Хоть что-то не меняется...")

// ЧЕТВЁРТАЯ СЕКЦИЯ ТРЕЙЛЕРА - КОНЕЦ ТУТ

	spawn(180 SECONDS)
		forceMove(get_step(src, SOUTH))
		forceMove(get_step(src, WEST))
		dir = SOUTH
		icon_state = "naoki_civil3"
		icon_living = "naoki_civil3"
		icon_dead = "naoki_civil3"

	spawn(196 SECONDS)
		visible_message(SPAN_NOTICE("[src] усмехается, утирая кровь с лица."))
		animate(src, 5 SECONDS, alpha = 150)
	spawn(198 SECONDS)
		ISay("Решили рубить с головы, да?")
	spawn(204 SECONDS)
		animate(src, 5 SECONDS, alpha = 0)
	spawn(210 SECONDS)
		qdel(src)


/*	spawn(X SECONDS)
		qdel(src)*/

/mob/living/simple_animal/holo_npc/saturio
	name = "Saturio Amantes"
	desc = "Низкорослый, практически карликовый человек, словно сошедший со страниц классического фэнтези."
	icon = 'mods/_fd/_maps/new_year_house/icons/psi_trailer.dmi'
	icon_state = "saturio"
	icon_living = "saturio"
	icon_dead = "saturio"

	color = "#27f531"

/mob/living/simple_animal/holo_npc/saturio/start_thinking()

	alpha = 0
	invisibility = 50
	SetTransform(0.9)

	spawn(155 SECONDS)
		invisibility = 0
		animate(src, 5 SECONDS, alpha = 150)
		forceMove(get_step(src, SOUTH))
	spawn(156 SECONDS)
		dir = EAST
	spawn(164 SECONDS)
		ISay("У вас там, долговязых, что - пафосная диета поголовно? Уши вянут!!!")
	spawn(169 SECONDS)
		animate(src, 5 SECONDS, alpha = 0)
	spawn(184 SECONDS)
		qdel(src)

/mob/living/simple_animal/holo_npc/minions_static
	name = "UNKNOWN"
	desc = "Неизвестные в странных клоунских масках."
	icon = 'mods/_fd/_maps/new_year_house/icons/psi_trailer.dmi'
	icon_state = "minions"
	icon_living = "minions"
	icon_dead = "minions"

/mob/living/simple_animal/holo_npc/minions_static/start_thinking()
	alpha = 0
	invisibility = 50
	dir = EAST

	spawn(93 SECONDS)
		invisibility = 0
		animate(src, 5 SECONDS, alpha = 150)
	spawn(99 SECONDS)
		animate(src, 5 SECONDS, alpha = 0)
	spawn(107 SECONDS)
		qdel(src)

/mob/living/simple_animal/holo_npc/minions_static2
	name = "UNKNOWN"
	desc = "Неизвестные в странных клоунских масках."
	icon = 'mods/_fd/_maps/new_year_house/icons/psi_trailer.dmi'
	icon_state = "minions"
	icon_living = "minions"
	icon_dead = "minions"

/mob/living/simple_animal/holo_npc/minions_static2/start_thinking()
	alpha = 0
	invisibility = 50
	dir = WEST

	spawn(93 SECONDS)
		invisibility = 0
		animate(src, 5 SECONDS, alpha = 150)
	spawn(99 SECONDS)
		animate(src, 5 SECONDS, alpha = 0)
	spawn(107 SECONDS)
		qdel(src)

/mob/living/simple_animal/holo_npc/minions_static3
	name = "UNKNOWN"
	desc = "Неизвестные в укреплённых бронекостюмах."
	icon = 'mods/_fd/_maps/new_year_house/icons/psi_trailer.dmi'
	icon_state = "minions3"
	icon_living = "minions3"
	icon_dead = "minions3"

/mob/living/simple_animal/holo_npc/minions_static3/start_thinking()
	alpha = 0
	invisibility = 50
	dir = WEST

	spawn(196 SECONDS)
		invisibility = 0
		animate(src, 5 SECONDS, alpha = 150)
	spawn(201 SECONDS)
		ISay("Приступить к ликвидации.")
	spawn(204 SECONDS)
		animate(src, 5 SECONDS, alpha = 0)
	spawn(210 SECONDS)
		qdel(src)

/mob/living/simple_animal/holo_npc/minions_static4
	name = "UNKNOWN"
	desc = "Неизвестные в укреплённых бронекостюмах."
	icon = 'mods/_fd/_maps/new_year_house/icons/psi_trailer.dmi'
	icon_state = "minions3"
	icon_living = "minions3"
	icon_dead = "minions3"

/mob/living/simple_animal/holo_npc/minions_static4/start_thinking()
	alpha = 0
	invisibility = 50
	dir = EAST

	spawn(196 SECONDS)
		invisibility = 0
		animate(src, 5 SECONDS, alpha = 150)
	spawn(204 SECONDS)
		animate(src, 5 SECONDS, alpha = 0)
	spawn(210 SECONDS)
		qdel(src)

/mob/living/simple_animal/holo_npc/antag1
	name = "UNKNOWN"
	desc = "Придурковатый ИПС в чёрной федоре и костюме. Весь прям-таки ИСКРИТ от напряжения."
	icon = 'mods/_fd/_maps/new_year_house/icons/psi_trailer.dmi'
	icon_state = "antag1"
	icon_living = "antag1"
	icon_dead = "antag1"

	color = "#ffea2b"

/mob/living/simple_animal/holo_npc/antag1/start_thinking()
	alpha = 0
	invisibility = 50
	dir = WEST

	spawn(26 SECONDS)
		invisibility = 0
		animate(src, 5 SECONDS, alpha = 150)
	spawn(29 SECONDS)
		visible_message(SPAN_DANGER("[src] взмахивает рукой, ударяя Ardent Mire концентрированной кинетической энергией!"))
	spawn(32 SECONDS)
		visible_message(SPAN_DANGER("[src] поднимает правую ногу, запуская Ardent Mire в полёт через улицу!"))
		ISay("Получай!")
	spawn(36 SECONDS)
		ISay("Вечно малышне вроде тебя охота вмешаться в мои планы.")
	spawn(46 SECONDS)
		ISay("Электрошок! Властитель тока! Приемник самого Теслы!!!")
	spawn(48 SECONDS)
		ISay("...И это будет посленее имя, которое ты услышишь.")
	spawn(51 SECONDS)
		visible_message(SPAN_NOTICE("[src] слегка наклонил голову в вопросительном жесте."))
	spawn(57 SECONDS)
		new /obj/temporary(get_turf(src),4, 'icons/effects/effects.dmi', "white_electricity_constant")
	spawn(58 SECONDS)
		animate(src, 5 SECONDS, alpha = 0)
	spawn(59 SECONDS)
		ISay("Да провались ты!!!")
		forceMove(get_step(src, WEST))
		forceMove(get_step(src, WEST))

	spawn(62 SECONDS)
		qdel(src)

/mob/living/simple_animal/holo_npc/antag2
	name = "UNKNOWN"
	desc = "Неизвестный мускулистый мужчина с инопланетным оружием в руках."
	icon = 'mods/_fd/_maps/new_year_house/icons/psi_trailer.dmi'
	icon_state = "antag2"
	icon_living = "antag2"
	icon_dead = "antag2"

	color = "#e940e0"

/mob/living/simple_animal/holo_npc/antag2/start_thinking()
	alpha = 0
	invisibility = 50

	spawn(100 SECONDS)
		invisibility = 0
		animate(src, 5 SECONDS, alpha = 150)
	spawn(101 SECONDS)
		forceMove(get_step(src, SOUTH))
	spawn(102 SECONDS)
		forceMove(get_step(src, SOUTH))
	spawn(103 SECONDS)
		forceMove(get_step(src, SOUTH))
	spawn(104 SECONDS)
		forceMove(get_step(src, SOUTH))
	spawn(105 SECONDS)
		animate(src, 5 SECONDS, alpha = 0)
	spawn(111 SECONDS)
		qdel(src)

/mob/living/simple_animal/holo_npc/maximilian
	name = "Maximilian Reeves"
	desc = "Хмурый одноглазый коп с рукой на кобуре. Его физиономия явно видала дни и получше этого."
	icon = 'mods/_fd/_maps/new_year_house/icons/psi_trailer.dmi'
	icon_state = "maximilian"
	icon_living = "maximilian"
	icon_dead = "maximilian"

	color = "#13df00"

/mob/living/simple_animal/holo_npc/maximilian/start_thinking()
	alpha = 0
	invisibility = 50
	dir = EAST

	spawn(110 SECONDS)
		invisibility = 0
		animate(src, 5 SECONDS, alpha = 150)
	spawn(116 SECONDS)
		dir = SOUTH
		ISay("Поднимите его.")
	spawn(118 SECONDS)
		animate(src, 5 SECONDS, alpha = 0)

	spawn(218 SECONDS)
		dir = NORTH
		icon_state = "maximilian2"
		icon_living = "maximilian2"
		icon_dead = "maximilian2"
	spawn(221 SECONDS)
		animate(src, 5 SECONDS, alpha = 150)
	spawn(226 SECONDS)
		visible_message(SPAN_NOTICE("[src] с абсолютно стальным выражением лица направляет револьвер в сторону юноши. По карнизам бьют капли дождя."))
	spawn(234 SECONDS)
		ISay("ДА ЗАТКНИСЬ ТЫ!!!")
	spawn(237 SECONDS)
		animate(src, 5 SECONDS, alpha = 0)
	spawn(243 SECONDS)
		qdel(src)

/mob/living/simple_animal/holo_npc/antag4
	name = "UNKNOWN"
	desc = "Самурай бетонных джунглей, чей лик скрыт под металлической шляпой и маской Они."
	icon = 'mods/_fd/_maps/new_year_house/icons/psi_trailer.dmi'
	icon_state = "antag4"
	icon_living = "antag4"
	icon_dead = "antag4"

	color = "#13df00"

/mob/living/simple_animal/holo_npc/antag4/start_thinking()
	alpha = 0
	invisibility = 50
	dir = WEST

	spawn(110 SECONDS)
		invisibility = 0
		animate(src, 5 SECONDS, alpha = 150)
	spawn(113 SECONDS)
		visible_message(SPAN_WARNING("[src] швыряет избитое тело 'бандита' вперёд."))
	spawn(115 SECONDS)
		dir = SOUTH
	spawn(116 SECONDS)
		forceMove(get_step(src, EAST))
		dir = EAST
	spawn(117 SECONDS)
		forceMove(get_step(src, EAST))
	spawn(118 SECONDS)
		animate(src, 5 SECONDS, alpha = 0)
	spawn(125 SECONDS)
		forceMove(get_step(src, WEST))
		forceMove(get_step(src, WEST))
		forceMove(get_step(src, WEST))
		pixel_x = -10
	spawn(180 SECONDS)
		animate(src, 5 SECONDS, alpha = 150)
	spawn(185 SECONDS)
		ISay("...прочь с дороги.")
	spawn(187 SECONDS)
		animate(src, 5 SECONDS, alpha = 0)
	spawn(192 SECONDS)
		qdel(src)

/mob/living/simple_animal/holo_npc/bandit
	name = "UNKNOWN"
	desc = "Какой-то мужик."
	icon = 'mods/_fd/_maps/new_year_house/icons/psi_trailer.dmi'
	icon_state = "random"
	icon_living = "random"
	icon_dead = "random"

/mob/living/simple_animal/holo_npc/bandit/start_thinking()
	alpha = 0
	invisibility = 50
	dir = WEST
	SetTransform(1,1,1,90)

	spawn(110 SECONDS)
		invisibility = 0
		animate(src, 5 SECONDS, alpha = 150)
	spawn(113 SECOND)
		new /obj/temporary(get_turf(src),4, 'icons/effects/effects.dmi', "disarm")
		playsound(src.loc, 'sound/weapons/genhit2.ogg', 50, 1)
	spawn(114 SECONDS)
		forceMove(get_step(src, WEST))
		forceMove(get_step(src, WEST))
	spawn(115 SECONDS)
		dir = SOUTH
	spawn(118 SECONDS)
		animate(src, 5 SECONDS, alpha = 0)
	spawn(125 SECONDS)
		qdel(src)

/mob/living/simple_animal/holo_npc/polizei
	name = "UNKNOWN"
	desc = "Неизвестный полицейский."
	icon = 'mods/_fd/_maps/new_year_house/icons/psi_trailer.dmi'
	icon_state = "minions2"
	icon_living = "minions2"
	icon_dead = "minions2"

/mob/living/simple_animal/holo_npc/polizei/start_thinking()
	alpha = 0
	invisibility = 50
	dir = EAST

	spawn(110 SECONDS)
		invisibility = 0
		animate(src, 5 SECONDS, alpha = 150)
	spawn(118 SECONDS)
		animate(src, 5 SECONDS, alpha = 0)
	spawn(125 SECONDS)
		qdel(src)

/mob/living/simple_animal/holo_npc/antag3
	name = "UNKNOWN"
	desc = "Высокая девушка в изысканной аристократической форме Викторианской эпохи. Её глаза закрыты плотной маской, но даже так - через окуляры просвечивает алый огонёк вечно жаждущего ока."
	icon = 'mods/_fd/_maps/new_year_house/icons/psi_trailer.dmi'
	icon_state = "antag3"
	icon_living = "antag3"
	icon_dead = "antag3"

	color = "#c4000a"

/mob/living/simple_animal/holo_npc/antag3/start_thinking()
	alpha = 0
	invisibility = 50
	dir = WEST

	spawn(128 SECONDS)
		invisibility = 0
		animate(src, 5 SECONDS, alpha = 150)
	spawn(141 SECONDS)
		animate(src, 5 SECONDS, alpha = 0)
	spawn(209 SECONDS)
		new /obj/temporary(get_turf(src),4, 'icons/effects/effects.dmi', "rune_teleport")
		forceMove(get_step(src, EAST))
		dir = NORTH
		animate(src, 5 SECONDS, alpha = 150)
	spawn(211 SECONDS)
		dir = SOUTH
	spawn(213 SECONDS)
		new /obj/temporary(get_turf(src),4, 'icons/effects/effects.dmi', "rune_imbue")
	spawn(214 SECONDS)
		animate(src, 5 SECONDS, alpha = 0)
	spawn(219 SECONDS)
		qdel(src)

/mob/living/simple_animal/holo_npc/minions_static5
	name = "UNKNOWN"
	desc = "Неизвестные."
	icon = 'mods/_fd/_maps/new_year_house/icons/psi_trailer.dmi'
	icon_state = "minions4"
	icon_living = "minions4"
	icon_dead = "minions4"

/mob/living/simple_animal/holo_npc/minions_static5/start_thinking()
	alpha = 0
	invisibility = 50
	dir = SOUTH
	SetTransform(1,1,1,-90)

	spawn(209 SECONDS)
		invisibility = 0
		animate(src, 5 SECONDS, alpha = 150)
	spawn(211 SECONDS)
		new /obj/temporary(get_turf(src),4, 'icons/effects/effects.dmi', "rune_convert")
	spawn(212 SECONDS)
		new /obj/temporary(get_turf(src),4, 'icons/effects/effects.dmi', "rune_convert")
	spawn(213 SECONDS)
		new /obj/temporary(get_turf(src),4, 'icons/effects/effects.dmi', "rune_convert")
	spawn(214 SECONDS)
		animate(src, 5 SECONDS, alpha = 0)
	spawn(219 SECONDS)
		qdel(src)


/mob/living/simple_animal/holo_npc/antag5
	name = "UNKNOWN"
	desc = "Неизвестный мужчина в древних как мир обмотках. Он внушает какой-то необъяснимый первородный страх."
	icon = 'mods/_fd/_maps/new_year_house/icons/psi_trailer.dmi'
	icon_state = "antag5"
	icon_living = "antag5"
	icon_dead = "antag5"

	color = "#fdb10c"

/mob/living/simple_animal/holo_npc/antag5/start_thinking()
	alpha = 0
	invisibility = 50
	dir = EAST

	spawn(128 SECONDS)
		invisibility = 0
		animate(src, 5 SECONDS, alpha = 150)
	spawn(141 SECONDS)
		animate(src, 5 SECONDS, alpha = 0)
	spawn(148 SECONDS)
		qdel(src)

/mob/living/simple_animal/holo_npc/jesus
	name = "Jesua Leebowski"
	desc = "Молодой, жизнерадостный парень с вечно сияющей улыбкой на лице. Она кажется вам странной и неестественной."
	icon = 'mods/_fd/_maps/new_year_house/icons/psi_trailer.dmi'
	icon_state = "jesus"
	icon_living = "jesus"
	icon_dead = "jesus"

/mob/living/simple_animal/holo_npc/jesus/start_thinking()
	alpha = 0
	invisibility = 50
	dir = NORTH

	spawn(138 SECONDS)
		invisibility = 0
		animate(src, 5 SECONDS, alpha = 150)
	spawn(140 SECONDS)
		dir = EAST
	spawn(141 SECONDS)
		animate(src, 5 SECONDS, alpha = 0)
	spawn(211 SECONDS)
		ISay("Марри-де-Пари...какое элегантное и яркое имя.")
		visible_message(SPAN_NOTICE("[src] смеётся."))
	spawn(215 SECONDS)
		qdel(src)
