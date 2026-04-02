/obj/overmap
	icon = 'mods/_fd/immersive_overmap/icons/new_overmap.dmi'

/obj/overmap/visitable/sector/exoplanet
	requires_contact = FALSE

/obj/overmap/event
	icon = 'mods/_fd/immersive_overmap/icons/new_overmap.dmi'
	requires_contact = FALSE

/obj/overmap/event/meteor
	colors = list("#a08444")
	color = "#a08444"

/obj/overmap/event/electric
	colors = list("#f5ed0c", "#f0e935", "#faf450")
	color = "#e8e85c"

/obj/overmap/event/dust
	colors = list("#6c6c6c")
	color = "#6c6c6c"

/obj/overmap/event/ion
	colors = list("#7cb4d4")
	color = "#7cb4d4"

/obj/overmap/event/carp
	colors = list("#783ca4")
	color = "#783ca4"

/obj/overmap/event/gravity
	colors = list("#321945")
	color = "#321945"

/obj/overmap/event/a_beacon
	colors = list("#8e52b9")
	color = "#8e52b9"
	icon = 'mods/_fd/immersive_overmap/icons/new_overmap.dmi'
	icon_state = "ascent"
	name = "ascent beacon"
	desc = "Better not to interfere with these..."

GLOBAL_LIST_EMPTY(bluespace_gates)

/obj/bluespace_rift
	name = "bluespace rift"
	icon = 'mods/_fd/immersive_overmap/icons/bluespace_rift.dmi'
	icon_state = "orb_idle"
	mouse_opacity = MOUSE_OPACITY_UNCLICKABLE

/obj/overmap/bluespace_gate
	name = "bluespace gate"
	icon = 'mods/_fd/immersive_overmap/icons/new_overmap.dmi'
	icon_state = "gateway"
	color = "#578ddd"

	var/gate_id = "test"
	var/next_usage = 0

/obj/overmap/bluespace_gate/Initialize()
	. = ..()
	GLOB.bluespace_gates += src

/obj/overmap/bluespace_gate/Destroy()
	. = ..()
	GLOB.bluespace_gates -= src

/obj/overmap/bluespace_gate/Crossed(obj/overmap/visitable/other)
	. = ..()

	do_travel(other)

/obj/overmap/bluespace_gate/proc/do_travel(obj/overmap/visitable/other)
	set waitfor = FALSE

	if(world.time < next_usage)
		return

	if(!isobj(other))
		return

	var/list/possible_routes = list()
	for(var/obj/overmap/bluespace_gate/gate as anything in GLOB.bluespace_gates - src)
		if(gate.gate_id == gate_id)
			possible_routes += gate

	if(!length(possible_routes))
		return

	var/obj/overmap/bluespace_gate/linked_exit = pick(possible_routes)

	overlay_spawn()
	linked_exit.overlay_spawn()

	sleep(animate_travel(other))

	var/cooldown = world.time + 5 SECONDS
	next_usage = cooldown
	linked_exit.next_usage = cooldown
	other.forceMove(get_turf(linked_exit))

/obj/overmap/bluespace_gate/proc/overlay_spawn()
	set waitfor = FALSE
	var/obj/bluespace_rift/rift = new /obj/bluespace_rift(get_turf(src))
	rift.pixel_x = -16
	rift.pixel_y = -16

	flick("orb_charge", rift)

	sleep(3 SECONDS)

	flick("crush_hard", rift)
	sleep(4)

	qdel(rift)
	return

/obj/overmap/bluespace_gate/proc/animate_travel(atom/target)
	animate(target, transform = matrix(0.01, MATRIX_SCALE), time = 1 SECOND, easing = BOUNCE_EASING)

	spawn(2 SECONDS)
		animate(target, transform = matrix(), time = 1 SECOND, easing = BOUNCE_EASING)

	return 1 SECOND
