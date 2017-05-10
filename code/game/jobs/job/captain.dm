/datum/job/captain
	title = "Captain"
	flag = CAPTAIN
	department_flag = ENGSEC
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "Nanotrasen officials and Space law"
	selection_color = "#ccccff"
	idtype = /obj/item/weapon/card/id/gold
	req_admin_notify = 1
	access = list() 			//See get_access()
	minimal_access = list() 	//See get_access()
	minimal_player_age = 14

	species_whitelist = list("Human")

	pdaslot=slot_l_store
	pdatype=/obj/item/device/pda/captain

	equip(var/mob/living/carbon/human/H)
		if(!H)
			return 0
		H.equip_or_collect(new /obj/item/device/radio/headset/heads/captain(H), slot_ears)
		switch(H.backbag)
			if(2)
				H.equip_or_collect(new /obj/item/weapon/storage/backpack/captain(H), slot_back)
			if(3)
				H.equip_or_collect(new /obj/item/weapon/storage/backpack/satchel_cap(H), slot_back)
			if(4)
				H.equip_or_collect(new /obj/item/weapon/storage/backpack/satchel(H), slot_back)
			if(5)
				H.equip_or_collect(new /obj/item/weapon/storage/backpack/messenger/com(H), slot_back)
		H.equip_or_collect(new H.species.survival_gear(H.back), slot_in_backpack)
		var/obj/item/clothing/under/U = new /obj/item/clothing/under/rank/captain(H)
		U.attach_accessory(new /obj/item/clothing/accessory/medal/gold/captain)
		H.equip_or_collect(U, slot_w_uniform)
		//H.equip_or_collect(new /obj/item/device/pda/captain(H), slot_belt)
		H.equip_or_collect(new /obj/item/clothing/shoes/brown(H), slot_shoes)
		H.equip_or_collect(new /obj/item/clothing/head/caphat(H), slot_head)
		H.equip_or_collect(new /obj/item/clothing/glasses/sunglasses(H), slot_glasses)
		if(H.backbag == 1)
			H.put_in_hand(GRASP_RIGHT_HAND, new /obj/item/weapon/storage/box/ids(H))
			H.put_in_hand(GRASP_LEFT_HAND, new /obj/item/weapon/gun/energy/gun(H))
		else
			H.equip_or_collect(new /obj/item/weapon/storage/box/ids(H.back), slot_in_backpack)
			H.equip_or_collect(new /obj/item/weapon/gun/energy/gun(H), slot_in_backpack)
		var/obj/item/weapon/implant/loyalty/L = new/obj/item/weapon/implant/loyalty(H)
		L.imp_in = H
		L.implanted = 1
		to_chat(world, "<b>[H.real_name] is the captain!</b>")
		var/datum/organ/external/affected = H.get_organ(LIMB_HEAD)
		affected.implants += L
		L.part = affected
		return 1

	get_access()
		return get_all_accesses()