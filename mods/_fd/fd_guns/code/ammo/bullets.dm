/obj/item/ammo_casing/pistol/iccgn
	projectile_type = /obj/item/projectile/bullet/pistol/iccgn
	caliber = CALIBER_PISTOL_MAGNUM

/obj/item/ammo_casing/pistol/automatic
	projectile_type = /obj/item/projectile/bullet/pistol/automatic
/obj/item/ammo_casing/pistol/assasin
	caliber = CALIBER_PISTOL_FLECHETTE

/obj/item/ammo_casing/pistol/assasin/rubber
	desc = "A rubber pistol bullet casing."
	projectile_type = /obj/item/projectile/bullet/pistol/rubber
	icon_state = "pistolcasing_r"
	caliber = CALIBER_PISTOL_FLECHETTE

/obj/item/ammo_casing/pistol/automatic/rubber
	projectile_type = /obj/item/projectile/bullet/pistol/automatic/rubber

/obj/item/ammo_casing/pistol/magnum/rubber
	desc = "A high-power pistol rubber bullet casing."
	projectile_type = /obj/item/projectile/bullet/pistol/strong/rubber

/obj/item/ammo_casing/rifle/military/marksman
	projectile_type = /obj/item/projectile/bullet/rifle/marksman

/obj/item/ammo_casing/magnum/shotgun
	name = "shotgun magnum shell"
	desc = "A shotgun shell with extra power."
	icon_state = "gshell"
	spent_icon = "gshell-spent"
	caliber = CALIBER_SHOTGUN
	fall_sounds = list('sound/weapons/guns/shotgun_fall.ogg')
	projectile_type = /obj/item/projectile/bullet/pellet/shotgun/magnum
	matter = list(MATERIAL_STEEL = 720)

/obj/item/ammo_casing/scg/shell
	name = "shell casing"
	desc = "An antimaterial shell casing."
	icon_state = "lcasing"
	spent_icon = "lcasing-spent"
	caliber = CALIBER_ANTIMATERIAL
	projectile_type = /obj/item/projectile/bullet/rifle/shell
	matter = list(MATERIAL_STEEL = 1250)

/obj/item/ammo_casing/scg/shell/apds
	name = "\improper APDS shell casing"
	desc = "An Armour Piercing Discarding Sabot shell."
	projectile_type = /obj/item/projectile/bullet/rifle/shell/apds

/obj/item/ammo_casing/scg/shell/explosive
	name = "HE shell casing"
	desc = "An antimaterial shell casing with explosive"
	projectile_type = /obj/item/projectile/bullet/rifle/shell/explosive

/obj/item/ammo_casing/scg/shell/emp
	name = "haywire shell casing"
	projectile_type  = /obj/item/projectile/ion/heavy
	matter = list(MATERIAL_STEEL = 1100, MATERIAL_URANIUM = 300)

/obj/item/ammo_casing/rifle/fleet
	desc = "A rifle bullet casing."
	caliber = CALIBER_RIFLE
	projectile_type = /obj/item/projectile/bullet/rifle/fleet
	icon_state = "riflecasing"
	spent_icon = "riflecasing-spent"

/obj/item/ammo_casing/rifle/army
	desc = "A rifle bullet casing."
	caliber = CALIBER_RIFLE_MILITARY
	projectile_type = /obj/item/projectile/bullet/rifle/army
	icon_state = "riflecasing"
	spent_icon = "riflecasing-spent"

/obj/item/ammo_casing/rifle/iccgn
	desc = "A rifle bullet casing"
	caliber = CALIBER_RIFLE
	projectile_type = /obj/item/projectile/bullet/rifle
	icon_state = "riflecasing"
	spent_icon = "riflecasing-spent"

/obj/item/ammo_casing/rifle/accurate
	desc = "A rifle bullet casing"
	caliber = CALIBER_RIFLE_MILITARY
	projectile_type = /obj/item/projectile/bullet/rifle/accurate
	icon_state = "riflecasing"
	spent_icon = "riflecasing-spent"

/obj/item/ammo_casing/rifle/bolter
	desc = "A heavy battle rifle casing. This one - Armour-Piercing Discarding Sabot(APDS)"
	caliber = CALIBER_BOLTER
	projectile_type = /obj/item/projectile/bullet/rifle/bolter
	icon_state = "lcasing"
	spent_icon = "lcasing-spent"

/obj/item/ammo_casing/rifle/bolter/explosive
	desc = "A heavy battle rifle casing."
	projectile_type = /obj/item/projectile/bullet/rifle/bolter/explosive

/obj/item/ammo_casing/sniper //emp
	name = "haywire shell casing"
	projectile_type  = /obj/item/projectile/ion/heavy
	matter = list(MATERIAL_STEEL = 1100, MATERIAL_URANIUM = 300)

/obj/item/ammo_casing/rifle/dmr
	desc = "A rifle bullet casing"
	caliber = CALIBER_RIFLE_MILITARY
	projectile_type = /obj/item/projectile/bullet/rifle/marksman/dmr
	icon_state = "riflecasing"
	spent_icon = "riflecasing-spent"

/obj/item/ammo_casing/rifle/dmr/apds
	desc = "A rifle bullet casing"
	caliber = CALIBER_RIFLE_MILITARY
	projectile_type = /obj/item/projectile/bullet/rifle/marksman/dmr/apds
	icon_state = "riflecasing"
	spent_icon = "riflecasing-spent"

/obj/item/ammo_casing/rifle/dmr/haywire
	desc = "A rifle bullet casing. Haywire one."
	caliber = CALIBER_RIFLE_MILITARY
	projectile_type = /obj/item/projectile/ion
	icon_state = "riflecasing"
	spent_icon = "riflecasing-spent"
