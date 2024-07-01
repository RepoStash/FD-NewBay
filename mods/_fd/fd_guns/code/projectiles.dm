

/obj/item/projectile/bullet/pistol/iccgn
	damage = 55
	distance_falloff =  2
	penetration_modifier = 1
	armor_penetration = 25

/obj/item/projectile/bullet/pistol/iccgn/rubber
	damage_flags = 0
	damage = 10
	agony = 70
	embed = FALSE

/obj/item/projectile/bullet/pistol/strong/rubber
	damage_flags = 0
	damage = 5
	agony = 60
	embed = FALSE

/obj/item/projectile/bullet/pistol/automatic
	damage = 45
	armor_penetration = 10

/obj/item/projectile/bullet/pistol/automatic/rubber
	damage_flags = 0
	damage = 3
	agony = 20
	embed = FALSE

/obj/item/projectile/bullet/pellet/shotgun/magnum
	name = "shrapnel"
	icon_state = "pellet"
	fire_sound = 'sound/weapons/gunshot/shotgun.ogg'
	damage = 30
	pellets = 16
	range_step = 1
	spread_step = 65

/obj/item/projectile/bullet/rifle/fleet
	fire_sound = 'mods/_fd/fd_guns/sounds/gunshot8.ogg'
	damage = 35
	armor_penetration = 20
	penetrating = 0

/obj/item/projectile/bullet/rifle/army
	fire_sound = 'sound/weapons/gunshot/gunshot_strong.ogg'
	damage = 45
	armor_penetration = 50
	penetrating = 3
	distance_falloff = 1.2

/obj/item/projectile/bullet/rifle/iccgn
	fire_sound = 'mods/_fd/fd_guns/sounds/auto1.ogg'
	damage = 40
	armor_penetration = 35


/obj/item/projectile/bullet/rifle/accurate
	fire_sound = 'mods/_fd/fd_guns/sounds/auto2.ogg'
	damage = 40
	armor_penetration = 45
	penetrating = 1
	penetration_modifier = 0.8

/obj/item/projectile/bullet/rifle/bolter
	fire_sound = 'mods/_fd/fd_guns/sounds/loudbolt.ogg'
	icon_state= "bolter"
	damage = 40
	armor_penetration = 50
	penetrating = 2
	penetration_modifier = 2
	damage_flags = DAMAGE_FLAG_BULLET | DAMAGE_FLAG_SHARP | DAMAGE_FLAG_EDGE

/obj/item/projectile/bullet/rifle/bolter/explosive
	damage 	= 55
	armor_penetration = 35
	penetrating = 1
	penetration_modifier = 1.5

/obj/item/projectile/bullet/rifle/bolter/explosive/on_hit(atom/target, blocked = 0)
	explosion(target, 2, EX_ACT_LIGHT, 0, 0,, 0)
	return 1

/obj/item/projectile/bullet/rifle/marksman
	fire_sound = 'sound/weapons/gunshot/gunshot2.ogg'
	damage = 30
	armor_penetration = 20
	penetrating = 1

/obj/item/projectile/bullet/rifle/marksman/dmr
	fire_sound = 'sound/weapons/gunshot/gunshot2.ogg'
	damage = 35
	armor_penetration = 30
	penetrating = 1

/obj/item/projectile/bullet/rifle/marksman/dmr/apds
	damage = 20
	armor_penetration = 45
	penetrating = 2


/obj/item/projectile/bullet/rifle/shell/apds
	damage = 70
	penetrating = 5
	armor_penetration = 80
	penetration_modifier = 1.5

/obj/item/projectile/bullet/rifle/shell/explosive
	name ="explosive shell"
	damage = 40
	stun = 3
	weaken = 3
	armor_penetration = 15
	penetrating = 0
	damage_flags = DAMAGE_FLAG_BULLET | DAMAGE_FLAG_SHARP | DAMAGE_FLAG_EDGE

/obj/item/projectile/bullet/rifle/shell/explosive/on_hit(atom/target, blocked = 0)
	explosion(target, 2, EX_ACT_LIGHT)
	return 1

/obj/item/projectile/ion/heavy
	heavy_effect_range = 3
	light_effect_range = 6

// TECHNICALLY IT'S A LASER. But bullet...

/obj/item/projectile/bullet/lasbolt
	name = "laser"
	icon_state = "lasbolt"
	icon = 'mods/_fd/fd_guns/icons/projectiles.dmi'
	temperature = T0C + 350
	fire_sound = 'mods/_fd/fd_guns/sounds/lasgun2.ogg'
	impact_sounds = list(BULLET_IMPACT_MEAT = SOUNDS_LASER_MEAT, BULLET_IMPACT_METAL = SOUNDS_LASER_METAL)
	damage = 30
	armor_penetration = 10
	damage_flags = DAMAGE_FLAG_LASER | DAMAGE_FLAG_EDGE
	distance_falloff = 1.5
	damage_falloff = TRUE
	damage_falloff_list = list(
		list(3, 0.95),
		list(5, 0.90),
		list(7, 0.80),
	)
// Tech stuff
	pass_flags = PASS_FLAG_TABLE | PASS_FLAG_GLASS | PASS_FLAG_GRILLE
	embed = 0
	damage_type = DAMAGE_BURN
	eyeblur = 4
	muzzle_type = null

/obj/item/projectile/bullet/lasbolt/lasgun
	name = "laser"
	icon_state = "lasbolt"
	temperature = T0C + 450
	fire_sound = 'mods/_fd/fd_guns/sounds/lasgun2.ogg'
	damage = 40
	armor_penetration = 20

/obj/item/projectile/bullet/lasbolt/overcharge
	name = "laser"
	icon_state = "lasbolt"
	temperature = T0C + 650
	fire_sound = 'mods/_fd/fd_guns/sounds/lasgun3.ogg'
	damage = 55
	armor_penetration = 35
	penetrating = 1
	penetration_modifier = 0.6
	damage_falloff_list = list(
		list(3, 0.85),
		list(5, 0.75),
		list(7, 0.70),
	)
