// Нужен исключительно для того, чтобы активировать остальные спавнеры

/obj/structure/holo_starter
	name = "holo orb"
	desc = "Сфера, содержащая в себе короткий фрагмент воспоминаний на основе когнитивных данных участников."
	var/cutscene_id = "test"
	icon = 'mods/_fd/event_tools/icons/telescience.dmi'
	icon_state = "portal-telegraph-startup"
	density = FALSE
	anchored = TRUE

/obj/structure/holo_starter/attack_hand(mob/user)
	if(do_after(user, 5 SECONDS, src, DO_PUBLIC_UNIQUE | DO_BAR_OVER_USER))
		for(var/obj/holo_spawner/mobs in orange(10, src))
			if(mobs.character_id == cutscene_id)
				mobs.start_scene()
		qdel(src)

/obj/holo_spawner
	name = "ТЫ НЕ ДОЛЖЕН ЭТОГО ВИДЕТЬ"
	desc = "Не, серьёзно, это баг!"
	icon = 'mods/_fd/event_tools/icons/landmarks_static.dmi'
	icon_state = "ai_spawn"
	var/character_id = "test"
	var/character_to_spawn = null

/obj/holo_spawner/proc/start_scene()
	new character_to_spawn(src.loc)
	qdel(src)

/mob/living/simple_animal/holo_npc
	name = "TEST"
	desc = "TEST"
	icon = 'mods/_fd/fd_assets/icons/animals/prime_soul.dmi'
	icon_state = "body"
	icon_living = "body"
	icon_dead = "body"
	response_help = "tries to poke"
	response_disarm = "shoves"
	response_harm = "hits"
	speed = 4
	movement_cooldown = 0
	maxHealth = 999999
	health = 999999
	a_intent = I_HELP
	faction = "holo"
	status_flags = GODMODE
	does_spin = FALSE
	density = FALSE
	pass_flags = PASS_FLAG_TABLE|PASS_FLAG_GLASS|PASS_FLAG_GRILLE
	mob_size = MOB_SMALL

	alpha = 0
	color = COLOR_TEAL

	var/seen = FALSE

/mob/living/simple_animal/holo_npc/proc/start_thinking()
	return

/mob/living/simple_animal/holo_npc/Life()
	..()

	if(!seen)
		for(var/mob/living/L in orange(10,src))
			if(L.key && L.client)
				seen = TRUE
				alpha = 50
				spawn(1 SECOND)
					alpha = 100
				spawn(2 SECONDS)
					alpha = 150
				start_thinking()
				break

/mob/living/simple_animal/holo_npc/alexey
	name = "Alexey Dostoevsky"
	desc = "Старый адмирал Экспедиционного Корпуса и последний официальный правитель ЦПСС. Похоже, он действительно был готов на всё, чтобы победить..."
	icon = 'mods/_fd/event_tools/icons/holo_npc.dmi'
	icon_state = "alexey"
	icon_living = "alexey"
	icon_dead = "alexey"

/mob/living/simple_animal/holo_npc/alexey/start_thinking()
	dir = turn(dir,-90)
	ISay("Сахароза, отчёт по ситуации.")
	forceMove(get_step(src, WEST))
	spawn(1 SECOND)
		forceMove(get_step(src, WEST))
	spawn(2 SECOND)
		forceMove(get_step(src, WEST))
	spawn(15 SECOND) //Спим, ждём пока Сахар ответит
		dir = turn(dir,-90)
	spawn(17 SECOND)
		forceMove(get_step(src, NORTH))
	spawn(20 SECOND)
		dir = turn(dir,90)
		visible_message(SPAN_NOTICE("[src] усаживается в капитанское кресло."))
	spawn(22 SECOND)
		ISay("Каков статус заряда?")
	spawn(32 SECOND) //Ждём ответ
		ISay("Всего минуту, значит...сомневаюсь, что этого будет достаточно.")
	spawn(38 SECOND)
		ISay("Одни против двадцати четырёх. Они не будут дожидаться нашего следующего действия.")
		visible_message(SPAN_NOTICE("[src] достаёт из пальто помятую сигарету, зажимая её в зубах."))
	spawn(44 SECOND)
		ISay("Хотя, мне ли рассказывать тебе про наши шансы, мдам-с.")

/mob/living/simple_animal/holo_npc/sahar
	name = "SAHAR"
	desc = "Высокая, хорошо сложенная девушка, кажущаяся...какой-то неживой. И этот штрихкод с именем на шее?..."
	icon = 'mods/_fd/event_tools/icons/holo_npc.dmi'
	icon_state = "sahar"
	icon_living = "sahar"
	icon_dead = "sahar"

/mob/living/simple_animal/holo_npc/sahar/start_thinking()
	dir = turn(dir,-90)
	visible_message(SPAN_NOTICE("[src] быстро бегает пальцами по приборной панели."))
	spawn(5 SECONDS)
		ISay("Уровень щитов упал до 39%, системы Геркулес и Тесей выведены из строя.")
	spawn(10 SECONDS)
		ISay("Мне не хотелось бы разочаровывать вас, однако ещё одного подобного гамбита мы не переживём, господин главный командующий.")
	spawn(25 SECONDS) //Ждём, пока Достоевский сядет
		ISay("Оставшиеся юниты, Вавилон и Одиссей - уже переведены на защиту ядра. Капитан Минделеев практически закончил с его подготовкой.")
	spawn(30 SECONDS)
		ISay("Если очень сильно повезёт - они выиграют нам ещё минуту времени.")
