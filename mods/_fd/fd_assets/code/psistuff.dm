/obj/item/implantcase/psi_control
	name = "glass case - 'psi dampener'"
	imp = /obj/item/implant/psi_control

/obj/item/storage/lockbox/psibox
	name = "lockbox of psi-dampeners"
	desc = "A locked box. He's still got a null-aura about him. Either he's just stitched through null-glass."
	req_access = list(access_cmo)
	startswith = list(
		/obj/item/implantcase/psi_control = 7,
		/obj/item/implanter/psi = 1,
	)

/obj/item/storage/lockbox/psibox/disrupts_psionics()
	return src

/obj/item/nullrod
	var/psi_agony = 20

/obj/item/nullrod/apply_hit_effect(mob/living/target, mob/living/user, hit_zone)
	..()
	if(target.psi)
		if(!isnull(psi_agony) || psi_agony == 0 ) // no psi_agony
			return
		target.stun_effect_act(0, psi_agony + rand(10), hit_zone, src) // 21-30 agony
		target.psi.set_cooldown(psi_agony - rand(10))
		to_chat(target, "<span class='danger'> You feel your concentration dropping by hit of [src].")
	return
