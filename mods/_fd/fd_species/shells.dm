/datum/robolimb/veymed
	species_cannot_use = list()

/datum/species/machine
	genders = list(NEUTER, MALE, FEMALE, PLURAL)
	appearance_flags = SPECIES_APPEARANCE_HAS_HAIR_COLOR | SPECIES_APPEARANCE_HAS_UNDERWEAR | SPECIES_APPEARANCE_HAS_EYE_COLOR //IPCs can wear undies too :(

/datum/sprite_accessory/New()
	. = ..()
	LAZYADD(species_allowed, SPECIES_IPC)

/datum/sprite_accessory/hair/bald/New()
	. = ..()
	LAZYADD(species_allowed, SPECIES_IPC)

/datum/sprite_accessory/marking/human/New()
	. = ..()
	LAZYADD(species_allowed, SPECIES_IPC)

/datum/sprite_accessory/marking/hair_fade/New()
	. = ..()
	LAZYADD(species_allowed, SPECIES_IPC)
