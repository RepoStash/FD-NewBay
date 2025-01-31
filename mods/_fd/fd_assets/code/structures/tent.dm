
/obj/structure/tent
	name = "tent"
	icon = 'mods/_fd/fd_assets/icons/structures/tent/tents_deployed_classic.dmi'
	desc = "Can be torn down with an entrenching tool."
	opacity = FALSE // Seems only the initial turf blocks light, not all of the multitile. Therefore, useless.
	layer = 5.2 // This should be below FLY_LAYER but just thank chairs and other bs
//	health = 200
	appearance_flags = TILE_BOUND

	/// Turf dimensions along the X axis, beginning from left, at ground level
	var/x_dim = 2
	/// Turf dimensions along the Y axis, beginning from bottom, at ground level
	var/y_dim = 4

	/// Roof display icon_state or null to disable
	var/roof_state
	/// Roof image displayed on the roof plane
	var/image/roof_image

/obj/structure/tent/Initialize(mapload, ...)
	. = ..()
	bound_width = x_dim * world.icon_size
	bound_height = y_dim * world.icon_size

/obj/structure/tent/big
	icon_state = "big_interior"
	roof_state = "big_top"
	x_dim = 3
	y_dim = 4

/obj/structure/tent/reqs
	icon_state = "reqs_interior"
	roof_state = "reqs_top"
	x_dim = 4
	y_dim = 4

/obj/structure/tent/cmd
	icon_state = "cmd_interior"
	roof_state = "cmd_top"
	desc = "A standard Sol Gov Army Command Tent. This one comes equipped with a self-powered Overwatch Console and a Telephone. It is very frail, do not burn, expose to sharp objects, or explosives. Can be torn down with an entrenching tool."

/obj/structure/tent/med
	icon_state = "med_interior"
	roof_state = "med_top"
	desc = "A standard Sol Gov Army Medical Tent. This one comes equipped with advanced field surgery facilities. It is very fragile however and won't withstand the rigors of war. Can be torn down with an entrenching tool."

/obj/structure/tent/desert
	icon = 'mods/_fd/fd_assets/icons/structures/tent/tents_deployed_desert.dmi'

/obj/structure/tent/desert/big
	icon_state = "big_interior"
	roof_state = "big_top"
	x_dim = 3
	y_dim = 4

/obj/structure/tent/desert/reqs
	icon_state = "reqs_interior"
	roof_state = "reqs_top"
	x_dim = 4
	y_dim = 4

/obj/structure/tent/desert/cmd
	icon_state = "cmd_interior"
	roof_state = "cmd_top"
	desc = "A standard Sol Gov Army Command Tent. This one comes equipped with a self-powered Overwatch Console and a Telephone. It is very frail, do not burn, expose to sharp objects, or explosives. Can be torn down with an entrenching tool."

/obj/structure/tent/desert/med
	icon_state = "med_interior"
	roof_state = "med_top"
	desc = "A standard Sol Gov Army Medical Tent. This one comes equipped with advanced field surgery facilities. It is very fragile however and won't withstand the rigors of war. Can be torn down with an entrenching tool."
