//EC pharmacist and prospector as featured in the old code
/datum/job/chemist
	allowed_branches = list(
		/datum/mil_branch/civilian,
		/datum/mil_branch/expeditionary_corps = /singleton/hierarchy/outfit/job/torch/crew/medical/doctor
		)
	allowed_ranks = list(
		/datum/mil_rank/ec/o1,
		/datum/mil_rank/civ/contractor
		)

/datum/job/mining
	allowed_branches = list(
		/datum/mil_branch/civilian,
		/datum/mil_branch/expeditionary_corps = /singleton/hierarchy/outfit/job/torch/passenger/research/prospector/ec
		)
	allowed_ranks = list(
		/datum/mil_rank/civ/contractor,
		/datum/mil_rank/ec/e3
	)

//army branch - important for the whole thing to work
//command
/datum/job/cmo
	allowed_branches = list(
		/datum/mil_branch/expeditionary_corps,
		/datum/mil_branch/fleet = /singleton/hierarchy/outfit/job/torch/crew/command/cmo/fleet,
		/datum/mil_branch/scga = /singleton/hierarchy/outfit/job/torch/crew/command/cmo/army
	)
	allowed_ranks = list(
		/datum/mil_rank/fleet/o3,
		/datum/mil_rank/fleet/o4,
		/datum/mil_rank/ec/o3,
		/datum/mil_rank/scga/o3,
		/datum/mil_rank/scga/o4
	)

/datum/job/hos
	allowed_branches = list(
		/datum/mil_branch/expeditionary_corps,
		/datum/mil_branch/fleet = /singleton/hierarchy/outfit/job/torch/crew/command/cos/fleet,
		/datum/mil_branch/scga = /singleton/hierarchy/outfit/job/torch/crew/command/cos/army
	)
	allowed_ranks = list(
		/datum/mil_rank/ec/o3,
		/datum/mil_rank/fleet/o2,
		/datum/mil_rank/fleet/o3,
		/datum/mil_rank/scga/o2,
		/datum/mil_rank/scga/o3
	)
//engineering
/datum/job/engineer
	allowed_branches = list(
		/datum/mil_branch/expeditionary_corps,
		/datum/mil_branch/fleet = /singleton/hierarchy/outfit/job/torch/crew/engineering/engineer/fleet,
		/datum/mil_branch/scga = /singleton/hierarchy/outfit/job/torch/crew/engineering/engineer/army,
		/datum/mil_branch/civilian = /singleton/hierarchy/outfit/job/torch/crew/engineering/contractor
	)
	allowed_ranks = list(
		/datum/mil_rank/fleet/e3,
		/datum/mil_rank/fleet/e4,
		/datum/mil_rank/fleet/e5,
		/datum/mil_rank/ec/e3,
		/datum/mil_rank/ec/e5,
		/datum/mil_rank/scga/e3,
		/datum/mil_rank/scga/e4,
		/datum/mil_rank/scga/e5,
		/datum/mil_rank/civ/contractor
	)

/datum/job/engineer_trainee
	allowed_branches = list(
		/datum/mil_branch/expeditionary_corps,
		/datum/mil_branch/fleet = /singleton/hierarchy/outfit/job/torch/crew/engineering/engineer/fleet,
		/datum/mil_branch/scga = /singleton/hierarchy/outfit/job/torch/crew/engineering/engineer/army
	)
	allowed_ranks = list(
		/datum/mil_rank/ec/e3,
		/datum/mil_rank/fleet/e2,
		/datum/mil_rank/scga/e2
	)

/datum/job/roboticist
	allowed_branches = list(
		/datum/mil_branch/expeditionary_corps = /singleton/hierarchy/outfit/job/torch/crew/engineering/roboticistec,
		/datum/mil_branch/fleet = /singleton/hierarchy/outfit/job/torch/crew/engineering/roboticistfleet,
		/datum/mil_branch/scga = /singleton/hierarchy/outfit/job/torch/crew/engineering/roboticistarmy,
		/datum/mil_branch/civilian = /singleton/hierarchy/outfit/job/torch/crew/engineering/roboticist
	)
	allowed_ranks = list(
		/datum/mil_rank/fleet/e5,
		/datum/mil_rank/ec/e5,
		/datum/mil_rank/scga/e4,
		/datum/mil_rank/scga/e5,
		/datum/mil_rank/civ/contractor
	)
//medical
/datum/job/senior_doctor
	allowed_branches = list(
		/datum/mil_branch/expeditionary_corps,
		/datum/mil_branch/fleet = /singleton/hierarchy/outfit/job/torch/crew/medical/senior/fleet,
		/datum/mil_branch/scga = /singleton/hierarchy/outfit/job/torch/crew/medical/senior/army,
		/datum/mil_branch/civilian = /singleton/hierarchy/outfit/job/torch/crew/medical/contractor/senior
	)
	allowed_ranks = list(
		/datum/mil_rank/ec/o1,
		/datum/mil_rank/fleet/o1,
		/datum/mil_rank/fleet/o2,
		/datum/mil_rank/scga/o1,
		/datum/mil_rank/scga/o2,
		/datum/mil_rank/civ/contractor
	)

/datum/job/junior_doctor
	allowed_branches = list(
		/datum/mil_branch/expeditionary_corps,
		/datum/mil_branch/fleet = /singleton/hierarchy/outfit/job/torch/crew/medical/senior/fleet,
		/datum/mil_branch/scga = /singleton/hierarchy/outfit/job/torch/crew/medical/senior/army,
		/datum/mil_branch/civilian = /singleton/hierarchy/outfit/job/torch/crew/medical/contractor/senior
	)
	allowed_ranks = list(
		/datum/mil_rank/ec/o1,
		/datum/mil_rank/fleet/o1,
		/datum/mil_rank/scga/o1,
		/datum/mil_rank/civ/contractor
	)

/datum/job/doctor
	allowed_branches = list(
		/datum/mil_branch/expeditionary_corps,
		/datum/mil_branch/fleet = /singleton/hierarchy/outfit/job/torch/crew/medical/doctor/fleet,
		/datum/mil_branch/scga = /singleton/hierarchy/outfit/job/torch/crew/medical/doctor/army,
		/datum/mil_branch/civilian = /singleton/hierarchy/outfit/job/torch/crew/medical/contractor
	)
	allowed_ranks = list(
		/datum/mil_rank/ec/e3,
		/datum/mil_rank/ec/e5,
		/datum/mil_rank/fleet/e3,
		/datum/mil_rank/fleet/e4,
		/datum/mil_rank/fleet/e5,
		/datum/mil_rank/fleet/e6,
		/datum/mil_rank/scga/e3,
		/datum/mil_rank/scga/e4,
		/datum/mil_rank/scga/e5,
		/datum/mil_rank/scga/e6,
		/datum/mil_rank/civ/contractor
	)

/datum/job/medical_trainee
	allowed_branches = list(
		/datum/mil_branch/expeditionary_corps,
		/datum/mil_branch/fleet = /singleton/hierarchy/outfit/job/torch/crew/medical/doctor/fleet,
		/datum/mil_branch/scga = /singleton/hierarchy/outfit/job/torch/crew/medical/doctor/army
	)
	allowed_ranks = list(
		/datum/mil_rank/ec/e3,
		/datum/mil_rank/fleet/e2,
		/datum/mil_rank/scga/e2
	)

//security
/datum/job/warden
	allowed_branches = list(
		/datum/mil_branch/expeditionary_corps,
		/datum/mil_branch/fleet = /singleton/hierarchy/outfit/job/torch/crew/security/brig_chief/fleet,
		/datum/mil_branch/scga = /singleton/hierarchy/outfit/job/torch/crew/security/brig_chief/army
	)
	allowed_ranks = list(
		/datum/mil_rank/ec/e7,
		/datum/mil_rank/fleet/e6,
		/datum/mil_rank/fleet/e7,
		/datum/mil_rank/fleet/e8,
		/datum/mil_rank/scga/e6,
		/datum/mil_rank/scga/e7,
		/datum/mil_rank/scga/e8
	)

/datum/job/officer
	allowed_branches = list(
		/datum/mil_branch/expeditionary_corps,
		/datum/mil_branch/fleet = /singleton/hierarchy/outfit/job/torch/crew/security/maa/fleet,
		/datum/mil_branch/scga = /singleton/hierarchy/outfit/job/torch/crew/security/maa/army
	)
	allowed_ranks = list(
		/datum/mil_rank/ec/e3,
		/datum/mil_rank/fleet/e3,
		/datum/mil_rank/fleet/e4,
		/datum/mil_rank/fleet/e5,
		/datum/mil_rank/scga/e3,
		/datum/mil_rank/scga/e4,
		/datum/mil_rank/scga/e5

	)

//service
/datum/job/janitor
	allowed_branches = list(
		/datum/mil_branch/civilian,
		/datum/mil_branch/expeditionary_corps = /singleton/hierarchy/outfit/job/torch/crew/service/janitor/ec,
		/datum/mil_branch/fleet = /singleton/hierarchy/outfit/job/torch/crew/service/janitor/fleet,
		/datum/mil_branch/scga = /singleton/hierarchy/outfit/job/torch/crew/service/janitor/army
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/contractor,
		/datum/mil_rank/fleet/e2,
		/datum/mil_rank/ec/e3,
		/datum/mil_rank/fleet/e3,
		/datum/mil_rank/fleet/e4,
		/datum/mil_rank/scga/e2,
		/datum/mil_rank/scga/e3,
		/datum/mil_rank/scga/e4
	)

/datum/job/chef
	allowed_branches = list(
		/datum/mil_branch/civilian,
		/datum/mil_branch/expeditionary_corps = /singleton/hierarchy/outfit/job/torch/crew/service/cook/ec,
		/datum/mil_branch/fleet = /singleton/hierarchy/outfit/job/torch/crew/service/cook/fleet,
		/datum/mil_branch/scga = /singleton/hierarchy/outfit/job/torch/crew/service/cook/army
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/contractor,
		/datum/mil_rank/ec/e3,
		/datum/mil_rank/ec/e5,
		/datum/mil_rank/fleet/e2,
		/datum/mil_rank/fleet/e3,
		/datum/mil_rank/fleet/e4,
		/datum/mil_rank/fleet/e5,
		/datum/mil_rank/scga/e2,
		/datum/mil_rank/scga/e3,
		/datum/mil_rank/scga/e4
	)

/datum/job/crew
	allowed_branches = list(
		/datum/mil_branch/expeditionary_corps,
		/datum/mil_branch/fleet = /singleton/hierarchy/outfit/job/torch/crew/service/crewman/fleet,
		/datum/mil_branch/scga = /singleton/hierarchy/outfit/job/torch/crew/service/crewman/army
	)
	allowed_ranks = list(
		/datum/mil_rank/ec/e3,
		/datum/mil_rank/fleet/e2,
		/datum/mil_rank/fleet/e3,
		/datum/mil_rank/fleet/e4,
		/datum/mil_rank/scga/e2,
		/datum/mil_rank/scga/e3,
		/datum/mil_rank/scga/e4
	)

//supply
/datum/job/cargo_tech
	allowed_branches = list(
		/datum/mil_branch/expeditionary_corps,
		/datum/mil_branch/fleet = /singleton/hierarchy/outfit/job/torch/crew/supply/tech/fleet,
		/datum/mil_branch/scga = /singleton/hierarchy/outfit/job/torch/crew/supply/tech/army,
		/datum/mil_branch/civilian = /singleton/hierarchy/outfit/job/torch/crew/supply/contractor
	)
	allowed_ranks = list(
		/datum/mil_rank/fleet/e2,
		/datum/mil_rank/ec/e3,
		/datum/mil_rank/fleet/e3,
		/datum/mil_rank/fleet/e4,
		/datum/mil_rank/scga/e2,
		/datum/mil_rank/scga/e3,
		/datum/mil_rank/scga/e4,
		/datum/mil_rank/scga/e5,
		/datum/mil_rank/civ/contractor
	)

/datum/mil_branch/fleet

	spawn_rank_types = list(
		/datum/mil_rank/fleet/e2,
		/datum/mil_rank/fleet/e3,
		/datum/mil_rank/fleet/e4,
		/datum/mil_rank/fleet/e5,
		/datum/mil_rank/fleet/e6,
		/datum/mil_rank/fleet/e7,
		/datum/mil_rank/fleet/e8,
		/datum/mil_rank/fleet/e9,
		/datum/mil_rank/fleet/e9_alt1,
		/datum/mil_rank/fleet/o1,
		/datum/mil_rank/fleet/o2,
		/datum/mil_rank/fleet/o3,
		/datum/mil_rank/fleet/o4,
		/datum/mil_rank/fleet/o5,
		/datum/mil_rank/fleet/o6,
		/datum/mil_rank/fleet/o7,
		/datum/mil_rank/fleet/o8,
		/datum/mil_rank/fleet/o9,
		/datum/mil_rank/fleet/o10,
		/datum/mil_rank/fleet/o10_alt
	)