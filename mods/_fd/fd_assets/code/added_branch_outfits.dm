//EC prospector
/singleton/hierarchy/outfit/job/torch/passenger/research/prospector/ec
	name = OUTFIT_JOB_NAME("Prospector - Expeditionary Corps")
	uniform = /obj/item/clothing/under/solgov/utility/expeditionary/supply
	shoes = /obj/item/clothing/shoes/dutyboots
	id_types = list(/obj/item/card/id/torch/passenger/research/mining)
	pda_type = /obj/item/modular_computer/pda/mining
	flags = OUTFIT_FLAGS_JOB_DEFAULT | OUTFIT_EXTENDED_SURVIVAL
	l_ear = /obj/item/device/radio/headset/headset_mining

//army outfits - all of them
//command
/singleton/hierarchy/outfit/job/torch/crew/command/cmo/army
	name = OUTFIT_JOB_NAME("Chief Medical Officer - Army")
	uniform = /obj/item/clothing/under/scga/utility/urban/medical
	shoes = /obj/item/clothing/shoes/dutyboots

/singleton/hierarchy/outfit/job/torch/crew/command/cos/army
	name = OUTFIT_JOB_NAME("Chief of Security - Army")
	uniform = /obj/item/clothing/under/scga/utility/urban/security
	shoes = /obj/item/clothing/shoes/dutyboots

//engi
/singleton/hierarchy/outfit/job/torch/crew/engineering/engineer/army
	name = OUTFIT_JOB_NAME("Engineer - Army")
	uniform = /obj/item/clothing/under/scga/utility/urban/engineering
	shoes = /obj/item/clothing/shoes/dutyboots

/singleton/hierarchy/outfit/job/torch/crew/engineering/roboticistarmy
	name = OUTFIT_JOB_NAME("Roboticist - Army")
	uniform = /obj/item/clothing/under/scga/utility/urban/engineering
	shoes = /obj/item/clothing/shoes/dutyboots
	id_types = list(/obj/item/card/id/torch/contractor/engineering/roboticist)
	pda_type = /obj/item/modular_computer/pda/roboticist

//medical
/singleton/hierarchy/outfit/job/torch/crew/medical/senior/army
	name = OUTFIT_JOB_NAME("Physician - Army")
	uniform = /obj/item/clothing/under/scga/utility/urban/medical
	shoes = /obj/item/clothing/shoes/dutyboots

/singleton/hierarchy/outfit/job/torch/crew/medical/junior/army //not even used lol
	name = OUTFIT_JOB_NAME("Medical Resident - Army")
	uniform = /obj/item/clothing/under/scga/utility/urban/medical
	shoes = /obj/item/clothing/shoes/dutyboots

/singleton/hierarchy/outfit/job/torch/crew/medical/doctor/army
	name = OUTFIT_JOB_NAME("Medical Technician - Army")
	uniform = /obj/item/clothing/under/scga/utility/urban/urban/medical/banded
	shoes = /obj/item/clothing/shoes/dutyboots
	l_ear = /obj/item/device/radio/headset/headset_corpsman

//sec
/singleton/hierarchy/outfit/job/torch/crew/security/brig_chief/army
	name = OUTFIT_JOB_NAME("Brig Chief - Army")
	uniform = /obj/item/clothing/under/scga/utility/urban/security
	shoes = /obj/item/clothing/shoes/dutyboots

/singleton/hierarchy/outfit/job/torch/crew/security/maa/army
	name = OUTFIT_JOB_NAME("Master at Arms - Army")
	uniform = /obj/item/clothing/under/scga/utility/urban/security
	shoes = /obj/item/clothing/shoes/dutyboots

//service
/singleton/hierarchy/outfit/job/torch/crew/service/janitor/army
	name = OUTFIT_JOB_NAME("Sanitation Technician - Army")
	uniform = /obj/item/clothing/under/scga/utility/urban/service
	shoes = /obj/item/clothing/shoes/dutyboots

/singleton/hierarchy/outfit/job/torch/crew/service/cook/army
	name = OUTFIT_JOB_NAME("Cook - Army")
	uniform = /obj/item/clothing/under/scga/utility/urban/service
	shoes = /obj/item/clothing/shoes/dutyboots

/singleton/hierarchy/outfit/job/torch/crew/service/crewman/army
	name = OUTFIT_JOB_NAME("Crewman - Army")
	uniform = /obj/item/clothing/under/scga/utility/urban/service

//supply
/singleton/hierarchy/outfit/job/torch/crew/supply/tech/army
	name = OUTFIT_JOB_NAME("Deck Technician - Army")
	uniform = /obj/item/clothing/under/scga/utility/urban/supply
	shoes = /obj/item/clothing/shoes/dutyboots

//Death of Hope Special - Fleet CO
/singleton/hierarchy/outfit/job/torch/crew/command/CO/fleet
	name = OUTFIT_JOB_NAME("Commanding Officer - Fleet")
	uniform = /obj/item/clothing/under/solgov/utility/fleet/command
	shoes = /obj/item/clothing/shoes/dutyboots
	head = /obj/item/clothing/head/beret/solgov/fleet/command