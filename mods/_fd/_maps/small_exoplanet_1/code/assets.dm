/obj/item/device/flashlight/lantern/grim_torch
	name = "torch"
	desc = "A simple stick, used for lighting."
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/lighting.dmi'
	icon_state = "mtorch"
	item_state = "oxycandle"
	w_class = ITEM_SIZE_LARGE

/obj/item/device/flashlight/lantern/grim_torch/on_update_icon()
	..()
	if(on)
		item_state = "oxycandle_on"
	else
		item_state = "oxycandle"

/obj/item/fd/quest_item/cutters
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/tools.dmi'
	icon_state = "arm-cutter"
	desc = "Enough to cut some chains."
	name = "industrial cutters"
	force = 5

/obj/item/fd/quest_item/cell
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/artefacts.dmi'
	icon_state = "powercell_open"
	desc = "Grab it and run!"
	name = "GATEWAY CORRUPTED POWERCELL"
	w_class = ITEM_SIZE_LARGE

/obj/structure/fd/blue_torch
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/light.dmi'
	icon_state = "standingb1"
	name = "torch holder"
	desc = "Just a light source, emmiting cold blue colors."
	anchored = TRUE
	opacity = FALSE
	density = TRUE

/obj/structure/fd/blue_torch/Initialize()
	. = ..()
	set_light(3, 1, l_color = "#39a8e7")

/obj/structure/fd/cave_flora
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/foliage.dmi'
	name = "cave flora"
	desc = "Just some unique mineshaft grass, nothing more."
	anchored = TRUE
	opacity = FALSE
	density = FALSE

/obj/structure/fd/cave_flora/glowing
	icon_state = "glowshroom2"

/obj/structure/fd/cave_flora/glowing/Initialize()
	. = ..()
	set_light(3, 0.7, l_color = "#b7be52")

/obj/structure/fd/cave_decor
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/cave_decor.dmi'
	icon_state = "minecart_fallen"
	name = "cave decoration"
	desc = "Just an mineshaft element."
	anchored = TRUE
	opacity = FALSE
	density = FALSE

/obj/structure/fd/fuse_box
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/ms_wallstuff2.dmi'
	icon_state = "fusebox_metal"
	name = "fusebox"
	desc = "Electrical fusebox."
	anchored = TRUE
	opacity = FALSE
	density = FALSE

/obj/structure/fd/junk
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/ms_trash.dmi'
	icon_state = "0,0"
	name = "trash"
	desc = "Just an pile of various used trash."
	anchored = TRUE
	opacity = FALSE
	density = FALSE

/obj/structure/fd/building_stuff
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/ms_obstacles.dmi'
	icon_state = "0,0"
	name = "plate"
	desc = "Just an wooden plate."
	anchored = TRUE
	opacity = FALSE
	density = FALSE

/obj/structure/fd/chains
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/chains.dmi'
	icon_state = "chains"
	name = "steel chains"
	desc = "Pretty heavy and durable."
	anchored = TRUE
	opacity = FALSE
	density = TRUE
	layer = ABOVE_DOOR_LAYER

/obj/structure/fd/chains/use_tool(obj/item/I, mob/user, params)
	. = ..()

	if(istype(I, /obj/item/fd/quest_item/cutters))
		visible_message("<span class='danger'>[usr] начинает разрезать стальные цепи при помощи [I].</span>")
		if(do_after(user, 50))
			qdel(src)

/obj/item/material/knife/ritual/grim
	icon = 'mods/_fd/fd_assets/icons/obj/items/eldritch.dmi'
	icon_state = "rust_blade"
	item_state = "render"

/obj/structure/fd/thorns
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/foliage.dmi'
	icon_state = "thornbush"
	name = "thorns"
	desc = "Pretty dense flora, which regenerate after each attack."
	anchored = TRUE
	opacity = TRUE
	density = TRUE
	layer = ABOVE_HUMAN_LAYER
	var/cleared = FALSE

/obj/structure/fd/thorns/use_tool(obj/item/I, mob/user, params)
	. = ..()

	if(istype(I, /obj/item/material/knife/ritual/grim) && !cleared)
		visible_message("<span class='danger'>[usr] размахивает [I], разрывая один слой растительности за другим.</span>")
		if(do_after(user, 50))
			cleared = TRUE
			density = FALSE
			opacity = FALSE
			update_icon()

/obj/structure/fd/thorns/update_icon()
	..()
	if(cleared)
		icon_state = "thorns_lowering"

/obj/item/device/flashlight/lantern/grim
	name = "lantern"
	desc = "A mining lantern."
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/lighting.dmi'
	icon_state = "lamp"
	item_state = "lantern"

/obj/item/device/flashlight/lantern/on_update_icon()
	..()
	if(on)
		item_state = "lantern-on"
	else
		item_state = "lantern"

/obj/structure/curtain/grim_red
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/structure.dmi'
	icon_state = "curtain1"

/obj/structure/curtain/grim_red/toggle()
	set_opacity(!opacity)
	if(opacity)
		icon_state = "curtain1"
		layer = ABOVE_HUMAN_LAYER
	else
		icon_state = "curtain"
		layer = ABOVE_WINDOW_LAYER

/obj/machinery/door/blast/grim
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/structure.dmi'
	icon_state = "shutter0"
	icon_state_open = "shutter1"
	icon_state_opening = "shutter_opening"
	icon_state_closed = "shutter0"
	icon_state_closing = "shutter_closing"

	icon_state_open_broken = "shutter1"
	icon_state_closed_broken = "shutter0"

	health_max = 9000
	block_air_zones = TRUE

/obj/machinery/button/blast_door/shaft_access
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/machines.dmi'
	name = "coin machine"
	desc = "It controls blast doors, remotely. There is also a lette - '10 coins for entrance'."
	icon_state = "steward_machine_off"
	var/coins = 0
	var/fulfilled = FALSE

/obj/machinery/button/blast_door/shaft_access/Initialize()
	. = ..()
	START_PROCESSING(SSobj, src)

/obj/machinery/button/blast_door/shaft_access/Process()

	if(coins >= 10)
		fulfilled = TRUE

	if(fulfilled)
		update_icon()

/obj/machinery/button/blast_door/shaft_access/use_tool(obj/item/I, mob/user, params)
	. = ..()

	if(istype(I, /obj/item/fd/soulcoin))
		qdel(I)
		coins += 1

/obj/machinery/button/blast_door/shaft_access/interface_interact(user)
	if(!CanInteract(user, DefaultTopicState()))
		return FALSE
	if(!fulfilled)
		return
	if(istype(user, /mob/living/carbon))
		playsound(src, "button", 60)
	activate(user)
	return TRUE

/obj/machinery/button/blast_door/shaft_access/on_update_icon()
	if(fulfilled)
		icon_state = "steward_machine"

	if(operating)
		icon_state = "steward_machine"

/obj/item/fd/soulcoin
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/enigma_husks.dmi'
	icon_state = "soultoken"
	name = "bloody coin"
	desc = "Someone said that this thing will help us enter the mineshaft."
	w_class = ITEM_SIZE_TINY

/obj/structure/fd/coin_grounded
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/enigma_husks.dmi'
	icon_state = "soultoken_floor"
	name = "SOULCOIN"
	desc = "You need this to enter the shaft."
	anchored = TRUE
	opacity = FALSE
	density = FALSE
	var/ticket = /obj/item/fd/soulcoin

/obj/structure/fd/coin_grounded/attack_hand(mob/living/user)
	if(!ishuman(user))
		return 0
	visible_message("<span class='notice'>[usr] подбирает [src].</span>")
	var/obj/item/flame/candle/grim/B = new ticket(get_turf(src))
	usr.put_in_hands(B)
	qdel(src)

/obj/structure/fd/wall_decor
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/decoration.dmi'
	icon_state = "black_drape"
	name = "wall decor"
	desc = "An old, scratched picture."
	anchored = TRUE
	opacity = FALSE

/obj/structure/fd/wall_decor2
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/decor.dmi'
	icon_state = "luna1"
	name = "wall decor"
	desc = "An old, scratched picture."
	anchored = TRUE
	opacity = FALSE

/obj/structure/fd/darts
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/darts.dmi'
	icon_state = "dartboard"
	name = "wall dartboard"
	desc = "An old, scratched board, used to play darts on."
	anchored = FALSE
	density = TRUE
	opacity = FALSE

/obj/structure/fd/forge_furniture
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/forge.dmi'
	icon_state = "smelter1"
	name = "working equipment"
	desc = "An old, primitive machinery used for various things."
	anchored = TRUE
	density = TRUE
	opacity = FALSE

/obj/structure/fd/grim_bookshelf
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/bookshelf.dmi'
	icon_state = "bookcase"
	name = "bookshelf"
	desc = "An old bookshelf."
	anchored = TRUE
	density = TRUE
	opacity = TRUE

/obj/structure/fd/library_bigart
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/64x64.dmi'
	icon_state = "sherwoods"
	name = "wall art"
	desc = "An old piece of beautiful art."
	anchored = TRUE
	density = FALSE
	opacity = FALSE

/obj/structure/fd/library_bigart2
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/64x64.dmi'
	icon_state = "lake"
	name = "wall art"
	desc = "An old piece of beautiful art."
	anchored = TRUE
	density = FALSE
	opacity = FALSE

/obj/structure/fd/library_bigart3
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/tallstructure.dmi'
	icon_state = "mona"
	name = "wall art"
	desc = "An old piece of beautiful art."
	anchored = TRUE
	density = FALSE
	opacity = FALSE

/obj/structure/fd/signboard_hotel
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/tallstructure.dmi'
	icon_state = "goblet"
	name = "signboard"
	desc = "Very tall hotel signboard."
	anchored = TRUE
	density = FALSE
	opacity = FALSE

/obj/structure/fd/signboard_cargo
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/tallstructure.dmi'
	icon_state = "bsmith"
	name = "signboard"
	desc = "Very tall ship's cargo signboard."
	anchored = TRUE
	density = FALSE
	opacity = FALSE

/obj/item/stool/grim
	name = "bar stool"
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/structure.dmi'
	icon_state = "barstool"
	base_icon = "barstool"
	item_state = "bar_stool"

/obj/item/stool/grim/New(newloc)
	..(newloc,MATERIAL_WALNUT)
	color = null

/obj/item/stool/grim/on_update_icon()

	if(padding_material)
		SetName("[padding_material.display_name] [initial(name)]") //this is not perfect but it will do for now.
		desc = "A padded stool. Apply butt. It's made of [material.use_name] and covered with [padding_material.use_name]."
	else
		SetName("[material.display_name] [initial(name)]")
		desc = "A stool. Apply butt with care. It's made of [material.use_name]."

/obj/structure/bed/chair/wood/grim

/obj/structure/bed/chair/wood/grim/New(newloc)
	..(newloc,MATERIAL_WALNUT)
	color = null

/obj/structure/bed/chair/wood/grim/on_update_icon()
	return

/obj/structure/bed/chair/wood/grim/elite
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/structure.dmi'
	icon_state = "chair2"
	base_icon = "chair2"

/obj/structure/bed/chair/wood/grim/elite2
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/structure.dmi'
	icon_state = "chair1"
	base_icon = "chair1"

/obj/structure/bed/chair/wood/grim/normal
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/structure.dmi'
	icon_state = "chair3"
	base_icon = "chair3"

/obj/item/stool/grim/bench
	name = "wooden bench"
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/structure.dmi'
	icon_state = "benchsmall"
	base_icon = "benchsmall"
	item_state = "bar_stool"

/obj/structure/bed/grim
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/structure.dmi'
	icon_state = "inn_bed"
	base_icon = "inn_bed"

/obj/structure/bed/grim/New(newloc)
	..(newloc,MATERIAL_WALNUT, MATERIAL_LEATHER_GENERIC)
	color = null

/obj/structure/bed/grim/on_update_icon()

	if(material_alteration & MATERIAL_ALTERATION_NAME)
		SetName(padding_material ? "[padding_material.adjective_name] [initial(name)]" : "[material.adjective_name] [initial(name)]") //this is not perfect but it will do for now.

	if(material_alteration & MATERIAL_ALTERATION_DESC)
		desc = initial(desc)
		desc += padding_material ? " It's made of [material.use_name] and covered with [padding_material.use_name]." : " It's made of [material.use_name]."

/obj/structure/bed/grim/big
	name = "big double bed"
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/structure.dmi'
	icon_state = "double"
	base_icon = "double"

/obj/structure/bed/grim/big/New(newloc)
	..(newloc,MATERIAL_WALNUT, MATERIAL_LEATHER_GENERIC)
	color = null

/obj/structure/bed/grim/bad
	name = "broke bed"
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/structure.dmi'
	icon_state = "shitbed"
	base_icon = "shitbed"

/obj/structure/bed/grim/bad/New(newloc)
	..(newloc,MATERIAL_WALNUT, MATERIAL_LEATHER_GENERIC)
	color = null

/obj/structure/table/rack/grim
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/structure.dmi'
	icon_state = "shelf_big"

/obj/structure/table/rack/grim/Initialize()
	SHOULD_CALL_PARENT(FALSE)

	// reset color/alpha, since they're set for nice map previews
	color = "#ffffff"
	alpha = 255
	update_connections(1)
	update_icon()
	update_desc()
	update_material()

/obj/structure/table/rack/grim/use_tool(obj/item/tool, mob/user, list/click_params)
	SHOULD_CALL_PARENT(FALSE)

	// Unfinished table - Construction stuff
	if (can_plate && !material)
		// Material - Plate table
		if (istype(tool, /obj/item/stack/material))
			material = common_material_add(tool, user, "plat")
			if (material)
				update_connections(TRUE)
				update_icon()
				update_desc()
				update_material()
			return TRUE

		// Wrench - Dismantle
		if (isWrench(tool))
			dismantle(tool, user)
			return TRUE

		// Anything else - Can't put it on an unfinished table
		USE_FEEDBACK_FAILURE("\The [src] needs to be plated before you can put \the [tool] on it.")
		return TRUE

	// Put things on table
	if (!user.unEquip(tool, loc))
		FEEDBACK_UNEQUIP_FAILURE(user, tool)
		return TRUE
	return TRUE

/obj/structure/table/rack/grim/table_rouge
	name = "table"
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/tables.dmi'
	icon_state = "tablewood"

/obj/structure/table/rack/grim/table_lfwb
	name = "table"
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/tables_lfwb.dmi'
	icon_state = "reinf_table2"

/obj/structure/storage/grim1
	name = "chest drawer"
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/structure.dmi'
	icon_state = "drawer1"
	slots = 8
	storage_space = 15

/obj/structure/storage/grim2
	name = "chest drawer"
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/structure.dmi'
	icon_state = "drawer2"
	slots = 8
	storage_space = 15

/obj/structure/storage/grim3
	name = "chest drawer"
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/structure.dmi'
	icon_state = "drawer3"
	slots = 10
	storage_space = 25

/obj/item/storage/mirror/grim
	name = "victorian mirror"
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/structure.dmi'

/obj/item/storage/mirror/grim/MouseDrop(obj/over)
	return

/obj/item/storage/mirror/grim/shatter()
	if (shattered)
		playsound(src, 'sound/effects/hit_on_shattered_glass.ogg', 70, 1)
		return
	shattered = TRUE
	icon_state = "[icon_state]_broke"
	playsound(src, "shatter", 70, 1)
	desc = "Oh no, seven years of bad luck!"

/obj/item/storage/mirror/use_tool(obj/item/I, mob/living/user, list/click_params)
	. = ..()
	if (!.)
		return
	if (prob(I.force) && user.a_intent == I_HURT)
		user.visible_message(SPAN_WARNING("\The [user] smashes \the [src] with \the [I]!"))
		shatter()

/obj/item/storage/mirror/grim/golden
	icon_state = "fancymirror"

/obj/item/storage/mirror/grim/basic
	icon_state = "mirror"

/obj/item/storage/mirror/grim/iron
	icon_state = "mirroriron"

/obj/structure/closet/grim
	setup = 0
	closet_appearance = null

	var/screwdriver_time_needed = 7.5 SECONDS

/obj/structure/closet/grim/examine(mob/user, distance)
	. = ..()
	if(distance <= 1 && !opened)
		to_chat(user, "The lid is [locked ? "tightly secured with screws." : "unsecured and can be opened."]")

/obj/structure/closet/grim/can_open()
	. =  ..()
	if(locked)
		return FALSE

/obj/structure/closet/grim/use_tool(obj/item/tool, mob/user, list/click_params)
	// Screwdriver - Toggle lock
	if (isScrewdriver(tool))
		if (opened)
			USE_FEEDBACK_FAILURE("\The [src] needs to be closed before you can screw the lid shut.")
			return TRUE
		playsound(src, 'sound/items/Screwdriver.ogg', 50, TRUE)
		user.visible_message(
			SPAN_NOTICE("\The [user] begins screwing \the [src]'s lid [locked ? "open" : "shut"] with \a [tool]."),
			SPAN_NOTICE("You begin screwing \the [src]'s lid [locked ? "open" : "shut"] with \the [tool].")
		)
		if (!user.do_skilled(screwdriver_time_needed, SKILL_CONSTRUCTION, src, do_flags = DO_REPAIR_CONSTRUCT) || !user.use_sanity_check(src, tool))
			return TRUE
		if (opened)
			USE_FEEDBACK_FAILURE("\The [src] needs to be closed before you can screw the lid shut.")
			return TRUE
		playsound(src, 'sound/items/Screwdriver.ogg', 50, TRUE)
		user.visible_message(
			SPAN_NOTICE("\The [user] screws \the [src]'s lid [locked ? "open" : "shut"] with \a [tool]."),
			SPAN_NOTICE("You screw \the [src]'s lid [locked ? "open" : "shut"] with \the [tool].")
		)
		locked = !locked
		return TRUE

	return ..()

/obj/structure/closet/grim/toggle(mob/user as mob)
	if(!(opened ? close() : open()))
		to_chat(user, SPAN_NOTICE("It won't budge!"))

/obj/structure/closet/grim/req_breakout()
	. = ..()
	if(locked)
		return TRUE

/obj/structure/closet/grim/break_open()
	locked = FALSE
	..()

/obj/structure/closet/grim/metal
	name = "metal closet"
	desc = "It's an old rusted metal closet."
	icon_state = "closed"
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/metal_closet.dmi'

/obj/structure/closet/grim/wood
	name = "wooden closet"
	desc = "It's an old molded closet."
	icon_state = "closed"
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/wooden_closet.dmi'

/obj/structure/closet/grim/wood_crate
	name = "wooden crate"
	desc = "It's an old molded crate."
	icon_state = "closed"
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/wooden_crate.dmi'

/obj/structure/fd/grim_fountain
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/64x64.dmi'
	icon_state = "fountain"
	name = "old fountain"
	desc = "An old, pretty cracked structure with various leaks from side to side. Water in it greenish and dark, probably not very good to drink."
	density = TRUE
	anchored = TRUE
	bound_width = 64

/obj/structure/fd/grim_garg_statue
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/tallstructure.dmi'
	icon_state = "mgargoyle"
	name = "old statue"
	desc = "An old, molded statue of a horrific creature."
	density = TRUE
	anchored = TRUE

/obj/structure/fd/grim_knight_statue1
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/tallstructure.dmi'
	icon_state = "knightstatue2_l"
	name = "old statue"
	desc = "An old, molded statue of a knight, holding an emblem of Innsmouth Order."
	density = TRUE
	anchored = TRUE

/obj/structure/fd/grim_knight_statue2
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/tallstructure.dmi'
	icon_state = "knightstatue2_r"
	name = "old statue"
	desc = "An old, molded statue of a knight, holding an emblem of Innsmouth Order."
	density = TRUE
	anchored = TRUE

/obj/structure/hygiene/sink/grim_well
	name = "well"
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/structure.dmi'
	icon_state = "welly"
	clogged = -1 // how do you clog a well
	density = TRUE

/obj/item/flame/candle/grim
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/lighting.dmi'
	candle_power = 1

/obj/item/flame/candle/grim/Initialize()
	SHOULD_CALL_PARENT(FALSE)
	wax = rand(27 MINUTES, 33 MINUTES) / SSobj.wait // Enough for 27-33 minutes. 30 minutes on average, adjusted for subsystem tickrate.

/obj/structure/fd/torch_wall
	name = "torch"
	desc = "An wall mounted torch ready to light your day."
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/light.dmi'
	icon_state = "torchwall1"
	density = FALSE
	anchored = TRUE
	opacity = FALSE
	var/lit = TRUE
	var/have_torch = TRUE
	var/light_attached = /obj/item/device/flashlight/lantern/grim_torch

/obj/structure/fd/torch_wall/Initialize()
	. = ..()
	set_light(5, 1, l_color = "#da4531")
	START_PROCESSING(SSobj, src)

/obj/structure/fd/torch_wall/update_icon()
	if(!have_torch && !lit)
		icon_state = "torchwall"

	if(lit)
		icon_state = "torchwall1"

/obj/structure/fd/torch_wall/Process()

	if(!have_torch && !lit)
		set_light(0)
		update_icon()

	if(lit)
		set_light(5, 1, l_color = "#da4531")
		update_icon()

/obj/structure/fd/torch_wall/use_tool(obj/item/I, mob/living/user)
	. = ..()
	if(istype(I,/obj/item/device/flashlight/lantern/grim_torch))
		var/obj/item/device/flashlight/lantern/grim_torch/L = I
		if(lit && have_torch)
			if(L.on == FALSE)
				L.on = TRUE
			else
				return FALSE
		if(!have_torch)
			have_torch = TRUE
			qdel(L)
	if(istype(I,/obj/item/flame/candle/grim))
		var/obj/item/flame/candle/grim/L = I
		if(lit && have_torch)
			if(L.lit == FALSE)
				L.light()
			else
				return FALSE
	if(istype(I,/obj/item/clothing/mask/smokable/cigarette))
		var/obj/item/clothing/mask/smokable/cigarette/L = I
		if(lit && have_torch)
			if(L.lit == FALSE)
				L.light()
			else
				return FALSE

/obj/structure/fd/torch_wall/attack_hand(mob/user as mob)
	if(!have_torch)
		return
	if(!ishuman(user))
		return 0
	visible_message("<span class='notice'>[usr] takes [src] from the wall.</span>")
	var/obj/item/device/flashlight/lantern/grim_torch/B = new light_attached(get_turf(src))
	usr.put_in_hands(B)
	B.on = TRUE
	have_torch = FALSE
	lit = FALSE

/obj/structure/fd/candle_wall
	name = "candles"
	desc = "An wall mounted candles ready to light your day."
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/light.dmi'
	icon_state = "wallcandle1"
	density = FALSE
	anchored = TRUE
	opacity = FALSE
	var/lit = TRUE
	var/have_candle = TRUE
	var/light_attached = /obj/item/flame/candle/grim

/obj/structure/fd/candle_wall/Initialize()
	. = ..()
	set_light(5, 1, l_color = "#e69f43")
	START_PROCESSING(SSobj, src)

/obj/structure/fd/candle_wall/update_icon()
	if(!have_candle && !lit)
		icon_state = "wallcandle2"

	if(lit)
		icon_state = "wallcandle1"

/obj/structure/fd/candle_wall/Process()

	if(!have_candle && !lit)
		set_light(0)
		update_icon()

	if(lit)
		set_light(5, 1, l_color = "#e69f43")
		update_icon()

/obj/structure/fd/candle_wall/use_tool(obj/item/I, mob/living/user)
	. = ..()
	if(istype(I,/obj/item/flame/candle/grim))
		var/obj/item/flame/candle/grim/L = I
		if(lit && have_candle)
			if(L.lit == FALSE)
				L.light()
			else
				return FALSE
		if(!have_candle)
			have_candle = TRUE
			qdel(L)
	if(istype(I,/obj/item/clothing/mask/smokable/cigarette))
		var/obj/item/clothing/mask/smokable/cigarette/L = I
		if(lit && have_candle)
			if(L.lit == FALSE)
				L.light()
			else
				return FALSE

/obj/structure/fd/candle_wall/attack_hand(mob/user as mob)
	if(!have_candle)
		return
	if(!ishuman(user))
		return 0
	visible_message("<span class='notice'>[usr] takes [src] from the wall.</span>")
	var/obj/item/flame/candle/grim/B = new light_attached(get_turf(src))
	usr.put_in_hands(B)
	B.light()
	have_candle = FALSE
	lit = FALSE

/obj/structure/fd/grim_fireplace_big
	name = "fireplace"
	desc = "A house fireplace for all your warm nights."
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/fireplace64.dmi'
	icon_state = "fireplace1"
	density = FALSE
	anchored = TRUE
	opacity = FALSE
	var/lit = TRUE

/obj/structure/fd/grim_fireplace_big/Initialize()
	. = ..()
	set_light(8, 0.8, l_color = "#cf3025", angle = LIGHT_VERY_WIDE)
	START_PROCESSING(SSobj, src)

/obj/structure/fd/grim_fireplace_big/update_icon()
	if(!lit)
		icon_state = "fireplace0"

	if(lit)
		icon_state = "fireplace1"

/obj/structure/fd/grim_fireplace_big/Process()
	if(!lit)
		set_light(0)
		update_icon()

	if(lit)
		set_light(8, 0.8, l_color = "#cf3025", angle = LIGHT_VERY_WIDE)
		update_icon()

/obj/structure/fd/grim_fireplace
	name = "fireplace"
	desc = "A house fireplace for all your warm nights."
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/light.dmi'
	icon_state = "wallfire1"
	density = FALSE
	anchored = TRUE
	opacity = FALSE
	var/lit = TRUE

/obj/structure/fd/grim_fireplace/Initialize()
	. = ..()
	set_light(8, 0.6, l_color = "#cf3025", angle = LIGHT_WIDE)
	START_PROCESSING(SSobj, src)

/obj/structure/fd/grim_fireplace/update_icon()
	if(!lit)
		icon_state = "wallfire0"

	if(lit)
		icon_state = "wallfire1"

/obj/structure/fd/grim_fireplace/Process()
	if(!lit)
		update_icon()
		set_light(0)
	if(lit)
		set_light(8, 0.6, l_color = "#cf3025", angle = LIGHT_WIDE)
		update_icon()

/obj/structure/fd/grim_window
	name = "window"
	desc = "A house window which emmitting slight glow, transfered from the other side of the building."
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/plastitanium_window.dmi'
	icon_state = "plastitanium_window-0"
	color = "#929292"
	density = TRUE
	anchored = TRUE
	opacity = FALSE

/obj/structure/fd/grim_window/Initialize()
	. = ..()
	set_light(3, 0.8, l_color = "#e2943a")

/obj/structure/moss
	name = "green moss"
	desc = "A pile of gross water plants piled together."
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/moss.dmi'
	icon_state = "moss_square"

/obj/structure/flora/tree/grim/brown
	name = "dead tree"
	desc = "It does look pretty strange, but you can't say why exactly"
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/foliagetall.dmi'
	icon_state = "t11"
	var/chopped = FALSE

/obj/structure/flora/tree/grim/brown/use_tool(obj/item/W, mob/user)
	if(istype(W,/obj/item/material/hatchet))
		if(!chopped)
			visible_message("<span class='notice'>\The [user] starts chopping \the [src]</span>")
			if( do_after(user, 50) )
				visible_message("<span class='notice'>\The [user] cutted \the [src]!</span>")
				new /obj/item/stack/material/wood/ten(get_turf(src))
				chopped = TRUE
				density = FALSE
				icon_state = "t[rand(1, 4)]stump"
		if(chopped)
			to_chat(user,SPAN_NOTICE("This tree is already chopped down to stump!"))
			return FALSE
	return ..()

/obj/structure/flora/tree/grim/brown/New()
	..()
	icon_state = "t[rand(1, 16)]"

/obj/structure/flora/tree/grim/ghost
	name = "dead tree"
	desc = "It's screaming...you can almost hear it."
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/foliagetall.dmi'
	icon_state = "screaming1"

/obj/structure/flora/tree/grim/ghost/use_tool(obj/item/W, mob/user)
	return ..()

/obj/structure/flora/tree/grim/ghost/New()
	..()
	icon_state = "screaming[rand(1, 3)]"

/obj/structure/fd/grim_lamp
	name = "tall lamp post"
	desc = "Very old looking lamp, powered from unknown source."
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/tallstructure.dmi'
	icon_state = "slamp1"
	anchored = TRUE
	layer = ABOVE_HUMAN_LAYER

/obj/structure/fd/grim_lamp/Initialize()
	. = ..()
	set_light(3, 0.7, l_color = "#79da53")

/obj/structure/fd/grim_lamp_double
	name = "tall lamp post"
	desc = "Very old looking lamp, powered from unknown source."
	icon = 'mods/_fd/_maps/small_exoplanet_1/icons/64x64.dmi'
	icon_state = "midlamp1"
	pixel_x = -16
	anchored = TRUE
	layer = ABOVE_HUMAN_LAYER

/obj/structure/fd/grim_lamp_double/Initialize()
	. = ..()
	set_light(5, 0.8, l_color = "#79da53")
