/obj/item/organ/internal/augment/boost
	icon_state = "booster"
	allowed_organs = list(BP_AUGMENT_HEAD)
	var/list/buffs = list() /// Which abilities does this impact?
	var/list/injury_debuffs = list() /// If organ is damaged, should we reduce anything?
	var/buffpath = /datum/skill_buff/augment /// Only subtypes of /datum/skill_buff/augment
	var/active = FALSE /// Mostly to control if we should remove buffs when we go
	var/debuffing = FALSE // If we applied a debuff
	var/id


/obj/item/organ/internal/augment/boost/Initialize()
	. = ..()
	id = "[/obj/item/organ/internal/augment/boost]_[sequential_id(/obj/item/organ/internal/augment/boost)]"


/obj/item/organ/internal/augment/boost/onInstall()
	if (buffs.len)
		var/datum/skill_buff/augment/A
		A = owner.buff_skill(buffs, 0, buffpath)
		if (A && istype(A))
			active = TRUE
			A.id = id


/obj/item/organ/internal/augment/boost/onRemove()
	debuffing = FALSE
	if (!active)
		return
	FOR_BLIND(datum/skill_buff/augment/D, owner.fetch_buffs_of_type(buffpath, 0))
		if (D.id != id)
			continue
		D.remove()
		return


/obj/item/organ/internal/augment/boost/proc/debuff()
	if (!length(injury_debuffs))
		return FALSE
	FOR_BLIND(datum/skill_buff/augment/D, owner.fetch_buffs_of_type(buffpath, 0))
		if (D.id != id)
			continue
		D.recalculate(injury_debuffs)
		debuffing = TRUE
		return TRUE
	return FALSE


/obj/item/organ/internal/augment/boost/proc/buff()
	if (!length(buffs))
		return FALSE
	FOR_BLIND(datum/skill_buff/augment/D, owner.fetch_buffs_of_type(buffpath, 0))
		if (D.id != id)
			continue
		D.recalculate(buffs)
		debuffing = FALSE
		return TRUE
	return FALSE


/obj/item/organ/internal/augment/boost/Process()
	..()
	if (!owner)
		return
	if (!debuffing)
		if (is_broken())
			debuff()
	else if (!is_broken())
		buff()


/datum/skill_buff/augment
	var/id
