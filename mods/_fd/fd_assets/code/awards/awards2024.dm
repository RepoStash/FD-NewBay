/obj/item/fd/award
	name = "golden cinema tape"
	desc = "A golden cinema tape. This one is award for the greatest episodic character "
	icon = 'mods/_fd/fd_assets/code/awards/awards2024.dmi'
	icon_state = "episode"

/obj/item/fd/award/comic
	name = "golden comic statue"
	desc = "A golden comic statue. This one is award for the greatest comic character"
	force = 20 // it's gonna hurt
	attack_cooldown = 21
	icon_state = "comic"

//

/obj/item/fd/award/drama
	name = "golden drama statue"
	desc = "A golden drama statue. This one is award for the greatest drama character"
	force = 20
	attack_cooldown = 21
	icon_state = "drama"

//

/obj/item/fd/award/charisma
	name = "golden sheet"
	desc = "A golden sheet with some text on it. This one is award for the greatest charisma"
	icon_state = "charisma"

//


/obj/item/fd/award/father
	name = "golden sheet"
	desc = "A golden sheet with some text on it. This one is award for the greatest father character"
	icon_state = "father"

// Tulip

/obj/item/fd/award/mother
	name = "golden tulip statue"
	desc = "A golden tulip statue. This one is award for the greatest mother character"
	force = 20
	attack_cooldown = 21
	icon_state = "tulip"

//

/obj/item/fd/award/heart
	name = "heart locker"
	desc = "A part of heart-kind locker. It can be attached to another one!"
	icon_state = "heart_1"
	var/obj/item/fd/award/heart/attached

/obj/item/fd/award/heart/two
	icon_state = "heart_2"

// I wrote this code in 04:22 and it CURSED...
// Honestly, wanna kill myselve for that code

/obj/item/fd/award/heart/use_tool(obj/item/fd/award/heart/heart, mob/living/user, list/click_params)
	. = ..()
	if(!isnull(attached) || !isnull(heart.attached)) // We don't need second heart
		to_chat(user, SPAN_NOTICE("You can't attach third piece of heart to completed heart."))
		return


	playsound(loc, 'sound/items/metal_clicking_9.ogg', 5)
	visible_message(SPAN_NOTICE("[user] connects two pieces of heart!"), SPAN_NOTICE("You hear a [pick("clack", "scrape", "clank")]"), 4)

	forceMove(heart)
	heart.attached = src

	heart.icon_state = "heart"
	heart.desc = "A completed heart-kind locker."


/obj/item/fd/award/heart/attack_self(mob/living/carbon/user)
	. = ..()

	if(isnull(attached))
		return

	icon_state = initial(icon_state)
	desc = initial(desc)
	user.put_in_hands(attached)
	attached = null


	playsound(loc, 'sound/items/metal_clicking_9.ogg', 5)
	visible_message(SPAN_NOTICE("[user] disconnects heart into two pieces!"), SPAN_NOTICE("You hear a [pick("clack", "scrape", "clank")]"), 4)

//

/obj/item/fd/award/male
	name = "golden male statue"
	desc = "A golden male statue. This one is award for the greatest male character"
	force = 20
	attack_cooldown = 21
	icon_state = "male"

/obj/item/fd/award/female
	name = "golden female statue"
	desc = "A golden female statue. This one is award for the greatest female character"
	force = 20
	attack_cooldown = 21
	icon_state = "female"

// KANARYSS

/obj/item/clothing/head/award
	name = "golden cowboy hat"
	desc = "A wide-brimmed hat, in the prevalent style of America's frontier period. This one is award for the greatest LQBT++++ character."
	item_icons = list(
		slot_head_str = 'mods/_fd/fd_assets/code/awards/awardonmob.dmi'
	)
	icon = 'mods/_fd/fd_assets/code/awards/awards2024.dmi'
	icon_state = "cowboyhat"
	item_state = "cowboy_hat"

// Head of Assholes!

/obj/item/clothing/head/award/asshole
	name = "horns"
	desc = "A golden horns. This one is award for the greatest ASSHOLE character."
	icon_state = "asshole"
	item_state = "asshole"

/obj/item/material/twohanded/spear/asshole
	name = "trident"
	desc = "A golder trident, that can be used as a spear. This one is award for the greatest ASSHOLE character"
	unbreakable = TRUE
	icon = 'mods/_fd/fd_assets/code/awards/awards2024.dmi'
	icon_state = "fork"
	item_state = "fork"
	base_icon = "fork"
	material = null
	applies_material_colour = FALSE
	applies_material_name = FALSE
	item_icons = list(
		slot_r_hand_str = 'mods/_fd/fd_assets/code/awards/awardonmob.dmi',
		slot_l_hand_str = 'mods/_fd/fd_assets/code/awards/awardonmob.dmi'
	)

// HAIL THE SALAT!

/obj/item/clothing/head/award/salat
	name = "laurel wreath"
	desc = "The laurel wreath is just like Caesar's! This one is award for the greatest lovely character"
	icon_state = "salat"
	item_state = "salat"

/obj/item/fd/award/viewers
	name = "golden star"
	desc = "A golden star. This one is award for the viewers love"
	force = 20
	attack_cooldown = 21
	icon_state = "tulip"


// Gonna make it in one case

/obj/item/storage/secure/briefcase/awards
	startswith = list(
		/obj/item/fd/award,
		/obj/item/fd/award/comic,
		/obj/item/fd/award/drama,
		/obj/item/fd/award/drama,
		/obj/item/fd/award/charisma,
		/obj/item/fd/award/father,
		/obj/item/fd/award/mother,
		/obj/item/storage/medalbox/awards
	)

/obj/item/storage/secure/briefcase/awards/second
	startswith = list(
		/obj/item/fd/award/male,
		/obj/item/fd/award/female,
		/obj/item/clothing/head/award,
		/obj/item/clothing/head/award/asshole,
		/obj/item/material/twohanded/spear/asshole,
		/obj/item/clothing/head/award/salat,
		/obj/item/fd/award/viewers
	)

/obj/item/storage/secure/briefcase/awards/Initialize()
	. = ..()
	make_exact_fit()


// container for hearts
/obj/item/storage/medalbox/awards
	contents_allowed = list(/obj/item/fd/award)
	startswith = list(
		/obj/item/fd/award/heart,
		/obj/item/fd/award/heart/two
	)

/obj/item/storage/medalbox/awards/Initialize()
	. = ..()
	make_exact_fit()
