/obj/item/storage/pill_bottle/dice/vipo
	icon = 'mods/_fd/fd_assets/icons/obj/items/ritualdice.dmi'
	startswith = list(
		/obj/item/dice/vipo = 6
	)

/obj/item/dice/vipo
	name = "cryptic dice"
	icon = 'mods/_fd/fd_assets/icons/obj/items/ritualdice.dmi'
	var/text_results = list("ona-ar", "di'ir", "tash", "fah'ri", "patu", "shaik")

/obj/item/dice/vipo/Initialize()
	. = ..()
	roll_die()

/obj/item/dice/vipo/roll_die()
	var/result = rand(1, sides)
	icon_state = "d6[result]"
	name = text_results[result]
	return text_results[result]

/obj/item/dice/vipo/attack_self(mob/user as mob)
	var/result = roll_die()
	user.visible_message(SPAN_NOTICE("[user] has thrown the cryptic dice. It lands on [result]."), \
						SPAN_NOTICE("You throw the cryptic dice. It lands on a [result]."), \
						SPAN_NOTICE("You hear the cryptic dice landing on a [result]."))

/obj/item/dice/vipo/throw_impact()
	var/result = roll_die()
	src.visible_message(SPAN_NOTICE("\The cryptic dice lands on [result]."))
