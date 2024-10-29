
/obj/item/ammo_magazine/rifle/fleet
	name = "assault rifle magazine"
	icon = 'mods/_fd/fd_guns/icons/weapon_cpss_icon.dmi'
	icon_state = "automat4M"
	mag_type = MAGAZINE
	caliber = CALIBER_RIFLE
	ammo_type = /obj/item/ammo_casing/rifle/fleet
	max_ammo = 40

/obj/item/ammo_magazine/rifle/army
	name = "battle rifle magazine"
	icon = 'mods/_fd/fd_guns/icons/weapon_cpss_icon.dmi'
	icon_state = "automat3M"
	mag_type = MAGAZINE
	caliber = CALIBER_RIFLE_MILITARY
	ammo_type = /obj/item/ammo_casing/rifle/army
	max_ammo = 20

/obj/item/ammo_magazine/rifle/iccgn
	name = "assault rifle magazine"
	icon = 'mods/_fd/fd_guns/icons/weapon_gkk_icon.dmi'
	icon_state = "gautomatic2M"
	mag_type = MAGAZINE
	caliber = CALIBER_RIFLE
	ammo_type = /obj/item/ammo_casing/rifle/iccgn
	max_ammo = 30
/obj/item/ammo_magazine/rifle/precise
	name = "assault rifle magazine"
	icon = 'mods/_fd/fd_guns/icons/weapon_gkk_icon.dmi'
	icon_state = "gautomatic1M"
	mag_type = MAGAZINE
	caliber = CALIBER_RIFLE_MILITARY
	ammo_type =  /obj/item/ammo_casing/rifle/accurate
	max_ammo = 30

/obj/item/ammo_magazine/rifle/bolter
	name = "heavy battle rifle magazine"
	desc = "A magazine for some kind of gun. This one - Armour-Piercing Discarding Sabot(APDS)"
	labels = list("APDS")
	icon = 'mods/_fd/fd_guns/icons/weapon_gkk_icon.dmi'
	icon_state = "gsmg3M"
	mag_type = MAGAZINE
	caliber = CALIBER_BOLTER
	ammo_type = /obj/item/ammo_casing/rifle/bolter
	max_ammo = 24


/obj/item/ammo_magazine/rifle/bolter/explosive
	desc = "A magazine for some kind of gun."
	labels = null
	ammo_type = /obj/item/ammo_casing/rifle/bolter/explosive

// Pistols

/obj/item/ammo_magazine/pistol/scg
	name = "magnum magazine"
	icon = 'mods/_fd/fd_guns/icons/weapon_cpss_icon.dmi'
	icon_state = "pistol7M"
	mag_type = MAGAZINE
	caliber = CALIBER_PISTOL_MAGNUM
	matter = list(MATERIAL_STEEL = 1680)
	ammo_type = /obj/item/ammo_casing/pistol/magnum
	max_ammo = 7

/obj/item/ammo_magazine/pistol/scg/rubber
	labels = list("rubber")
	ammo_type = /obj/item/ammo_casing/pistol/magnum/rubber

/obj/item/ammo_magazine/pistol/assasin
	name = "pistol magazine"
	icon = 'mods/_fd/fd_guns/icons/weapon_cpss_icon.dmi'
	icon_state = "pistol6M"
	mag_type = MAGAZINE
	caliber = CALIBER_PISTOL_FLECHETTE
	matter = list(MATERIAL_STEEL = 1050)
	ammo_type = /obj/item/ammo_casing/pistol/assasin
	max_ammo = 12

/obj/item/ammo_magazine/pistol/assasin/rubber
	labels = list("rubber")
	ammo_type = /obj/item/ammo_casing/pistol/assasin/rubber


/obj/item/ammo_magazine/pistol/iccgn
	name = "pistol magazine"
	icon = 'mods/_fd/fd_guns/icons/weapon_gkk_icon.dmi'
	icon_state = "gpistol8M"
	mag_type = MAGAZINE
	caliber = CALIBER_PISTOL_MAGNUM
	matter = list(MATERIAL_STEEL = 1680)
	ammo_type = /obj/item/ammo_casing/pistol/iccgn
	max_ammo = 15

/obj/item/ammo_magazine/pistol/iccgn/rubber
	labels = list("rubber")
	ammo_type = /obj/item/ammo_casing/pistol/iccgn


/obj/item/ammo_magazine/pistol/automatic
	name = "automatic pistol magazine"
	icon = 'mods/_fd/fd_guns/icons/weapon_gkk_icon.dmi'
	icon_state = "gpistol9M"
	mag_type = MAGAZINE
	matter = list(MATERIAL_STEEL = 2000)
	ammo_type = /obj/item/ammo_casing/pistol/automatic
	max_ammo = 45

/obj/item/ammo_magazine/pistol/automatic/rubber
	labels = list("rubber")
	ammo_type = /obj/item/ammo_casing/pistol/automatic/rubber

// SMGs

/obj/item/ammo_magazine/smg/scg
	name = "magazine"
	icon = 'mods/_fd/fd_guns/icons/weapon_cpss_icon.dmi'
	icon_state = "smg5M"
	mag_type = MAGAZINE
	caliber = CALIBER_PISTOL
	matter = list(MATERIAL_STEEL = 1500)
	ammo_type = /obj/item/ammo_casing/pistol
	max_ammo = 35

/obj/item/ammo_magazine/smg/scg/rubber
	labels = list("rubber")
	ammo_type = /obj/item/ammo_casing/pistol/rubber

/obj/item/ammo_magazine/smg/special/scg
	name = "magazine"
	icon = 'mods/_fd/fd_guns/icons/weapon_cpss_icon.dmi'
	icon_state = "smg6M"
	mag_type = MAGAZINE
	caliber = CALIBER_PISTOL
	matter = list(MATERIAL_STEEL = 1500)
	ammo_type = /obj/item/ammo_casing/pistol
	max_ammo = 20

/obj/item/ammo_magazine/smg/special/scg/rubber
	labels = list("rubber")
	ammo_type = /obj/item/ammo_casing/pistol/rubber

/obj/item/ammo_magazine/smg/iccgn
	name = "smg magazine"
	icon = 'mods/_fd/fd_guns/icons/weapon_gkk_icon.dmi'
	icon_state = "gsmg3M"
	max_ammo = 45
	multiple_sprites = 0

// Other stuff

/obj/item/ammo_magazine/shotgun/scg
	name = "shotgun drum"
	labels = list("slugs")
	icon = 'mods/_fd/fd_guns/icons/weapon_cpss_icon.dmi'
	icon_state = "shotgun4M"
	mag_type = MAGAZINE
	caliber = CALIBER_SHOTGUN
	ammo_type = /obj/item/ammo_casing/shotgun
	matter = list(MATERIAL_STEEL = 3180) // 8 slugs + Drum
	max_ammo = 8

/obj/item/ammo_magazine/shotgun/scg/shell
	labels = list("shells")
	ammo_type = /obj/item/ammo_casing/shotgun/pellet
	matter = list(MATERIAL_STEEL = 3180)

/obj/item/ammo_magazine/shotgun/scg/beanbag
	labels = list("beanbags")
	ammo_type = /obj/item/ammo_casing/shotgun/beanbag
	matter = list(MATERIAL_STEEL = 1790)

/obj/item/ammo_magazine/shotgun/scg/empty
	matter = list(MATERIAL_STEEL = 350)
	initial_ammo = 0

/obj/item/ammo_magazine/shotgun/iccgn
	name = "shotgun drum"
	labels = list("slugs")
	icon = 'mods/_fd/fd_guns/icons/weapon_gkk_icon.dmi'
	icon_state = "gshotgun2M"
	mag_type = MAGAZINE
	caliber = CALIBER_SHOTGUN
	ammo_type = /obj/item/ammo_casing/shotgun
	matter = list(MATERIAL_STEEL = 5600)
	max_ammo = 15

/obj/item/ammo_magazine/shotgun/iccgn/beanbag
	labels = list("beanbags")
	ammo_type = /obj/item/ammo_casing/shotgun/beanbag
	matter = list(MATERIAL_STEEL = 2790)

/obj/item/ammo_magazine/shotgun/iccgn/magnum
	desc = "When you need to oblitirate enemy"
	labels = list("magnum")
	ammo_type = /obj/item/ammo_casing/magnum/shotgun
	matter = list(MATERIAL_STEEL = 5600)

/obj/item/ammo_magazine/shotgun/iccgn/empty
	matter = list(MATERIAL_STEEL = 350)
	initial_ammo = 0

/obj/item/ammo_magazine/sniper/scg
	name = "magazine"
	icon = 'mods/_fd/fd_guns/icons/weapon_cpss_icon.dmi'
	icon_state = "sniperrifle2M"
	mag_type = MAGAZINE
	caliber = CALIBER_RIFLE_MILITARY
	ammo_type = /obj/item/ammo_casing/rifle/military/marksman
	matter = list(MATERIAL_STEEL = 3550)
	max_ammo = 15

/obj/item/ammo_magazine/sniper/iccgn
	name = "magazine"
	icon = 'mods/_fd/fd_guns/icons/weapon_gkk_icon.dmi'
	icon_state = "gsniperrifle4M"
	mag_type = MAGAZINE
	caliber = CALIBER_RIFLE_MILITARY
	ammo_type = /obj/item/ammo_casing/scg/shell
	matter = list(MATERIAL_STEEL = 3550)
	max_ammo = 7

/obj/item/ammo_magazine/speedloader/dmr
	name = "marksman stripper clip"
	desc = "A stripper clip for rifle caliber weapons."
	icon_state = "iclipr"
	caliber = CALIBER_RIFLE_MILITARY
	ammo_type = /obj/item/ammo_casing/rifle/dmr
	max_ammo = 8
	multiple_sprites = 1

/obj/item/ammo_magazine/speedloader/dmr/apds
	labels = list("APDS")
	ammo_type = /obj/item/ammo_casing/rifle/dmr/apds
	max_ammo = 4

/obj/item/ammo_magazine/speedloader/dmr/haywire
	labels = list("haywire")
	ammo_type = /obj/item/ammo_casing/rifle/dmr/haywire
	max_ammo = 4
