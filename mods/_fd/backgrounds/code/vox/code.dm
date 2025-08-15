#define CULTURE_VOX_ACOLYTE    "Resolute Acolyte"
#define CULTURE_VOX_TRUTH      "Artificer of Truth"
#define CULTURE_VOX_TECHNICIAN "Sacred Technician"
#define CULTURE_VOX_LIGHT      "Voidborne Vigilant"
#define CULTURE_VOX_MERCHANT   "Sworn Merchant"

#define HOME_SYSTEM_VOX_CAPITAL    "Ark of the Starlight Herald"
#define HOME_SYSTEM_VOX_FORTRESS   "Ark of the Stalwart Guardian"
#define HOME_SYSTEM_VOX_RESEARCH   "Ark of the Curious Acolyte"
#define HOME_SYSTEM_VOX_PROCESSING "Ark of the Dutiful Blade"
#define HOME_SYSTEM_VOX_PRODUCTION "Ark of the Vigilant Prophet"

#define FACTION_VOX_FLEET      "Fleet Vox"
#define FACTION_VOX_COVENANT   "Covenant Vox"
#define FACTION_VOX_ARK        "Ark Vox"

#define RELIGION_VOX_CODEX     "Chakala, The Immortal Codex"
#define RELIGION_VOX_GUARDIAN  "Kihikihi, The Watchful Guardian"
#define RELIGION_VOX_FORCE     "Kritika, The Unrelenting Force"

#define CULTURE_VOX_FD			list(CULTURE_VOX_ACOLYTE, 		\
									CULTURE_VOX_TRUTH, 			\
									CULTURE_VOX_TECHNICIAN, 	\
									CULTURE_VOX_LIGHT,			\
									CULTURE_VOX_MERCHANT		\
)

#define HOME_SYSTEM_VOX_FD		list(HOME_SYSTEM_VOX_CAPITAL, 	\
									HOME_SYSTEM_VOX_FORTRESS, 	\
									HOME_SYSTEM_VOX_RESEARCH, 	\
									HOME_SYSTEM_VOX_PROCESSING, \
									HOME_SYSTEM_VOX_PRODUCTION, \
)

#define FACTION_VOX_FD			list(FACTION_VOX_FLEET,			\
									FACTION_VOX_COVENANT,		\
									FACTION_VOX_ARK,			\
)

#define RELIGION_VOX_FD			list(RELIGION_VOX_CODEX,		\
									RELIGION_VOX_GUARDIAN,		\
									RELIGION_VOX_FORCE,			\
)

// Debug

/datum/species/vox/New()
	..()
	available_cultural_info = list(
			TAG_CULTURE =   list(
				CULTURE_VOX_ACOLYTE,
				CULTURE_VOX_TRUTH,
				CULTURE_VOX_TECHNICIAN,
				CULTURE_VOX_LIGHT,
				CULTURE_VOX_MERCHANT
			),
			TAG_HOMEWORLD = list(
				HOME_SYSTEM_VOX_CAPITAL,
				HOME_SYSTEM_VOX_FORTRESS,
				HOME_SYSTEM_VOX_RESEARCH,
				HOME_SYSTEM_VOX_PROCESSING,
				HOME_SYSTEM_VOX_PRODUCTION
			),
			TAG_FACTION = list(
				FACTION_VOX_FLEET,
				FACTION_VOX_COVENANT,
				FACTION_VOX_ARK
			),
			TAG_RELIGION =  list(
				RELIGION_VOX_CODEX,
				RELIGION_VOX_GUARDIAN,
				RELIGION_VOX_FORCE
			)
		)

/*
	available_cultural_info[TAG_CULTURE] 	= CULTURE_VOX_FD
	available_cultural_info[TAG_HOMEWORLD]	= HOME_SYSTEM_VOX_FD
	available_cultural_info[TAG_FACTION]	= FACTION_VOX_FD
	available_cultural_info[TAG_RELIGION]	= RELIGION_VOX_FD
*/
