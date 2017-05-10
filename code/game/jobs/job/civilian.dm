//Food
/datum/job/bartender
	title = "Service Spacialist"
	flag = BARTENDER
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the captain"
	selection_color = "#dddddd"
	access = list(access_hydroponics, access_bar, access_kitchen, access_morgue, access_weapons)
	minimal_access = list(access_bar,access_weapons)

	pdaslot=slot_belt
	pdatype=/obj/item/device/pda/bar

	equip(var/mob/living/carbon/human/H)
		if(!H)
			return 0
		switch(H.backbag)
			if(2)
				H.equip_or_collect(new /obj/item/weapon/storage/backpack(H), slot_back)
			if(3)
				H.equip_or_collect(new /obj/item/weapon/storage/backpack/satchel_norm(H), slot_back)
			if(4)
				H.equip_or_collect(new /obj/item/weapon/storage/backpack/satchel(H), slot_back)
			if(5)
				H.equip_or_collect(new /obj/item/weapon/storage/backpack/messenger(H), slot_back)
		H.equip_or_collect(new /obj/item/device/radio/headset/headset_service(H), slot_ears)
		H.equip_or_collect(new /obj/item/clothing/shoes/black(H), slot_shoes)
		H.equip_or_collect(new /obj/item/clothing/suit/armor/vest(H), slot_wear_suit)
		H.equip_or_collect(new /obj/item/clothing/under/rank/bartender(H), slot_w_uniform)
		H.put_in_hands(new /obj/item/weapon/storage/bag/plasticbag(H))
		//H.equip_or_collect(new /obj/item/device/pda/bar(H), slot_belt)

		if(H.backbag == 1)
			var/obj/item/weapon/storage/box/survival/Barpack = new H.species.survival_gear(H)
			H.put_in_hand(GRASP_RIGHT_HAND, Barpack)
			new /obj/item/ammo_casing/shotgun/beanbag(Barpack)
			new /obj/item/ammo_casing/shotgun/beanbag(Barpack)
			new /obj/item/ammo_casing/shotgun/beanbag(Barpack)
			new /obj/item/ammo_casing/shotgun/beanbag(Barpack)
		else
			H.equip_or_collect(new H.species.survival_gear(H), slot_in_backpack)
			H.equip_or_collect(new /obj/item/ammo_casing/shotgun/beanbag(H), slot_in_backpack)
			H.equip_or_collect(new /obj/item/ammo_casing/shotgun/beanbag(H), slot_in_backpack)
			H.equip_or_collect(new /obj/item/ammo_casing/shotgun/beanbag(H), slot_in_backpack)
			H.equip_or_collect(new /obj/item/ammo_casing/shotgun/beanbag(H), slot_in_backpack)

		H.dna.SetSEState(SOBERBLOCK,1)
		H.mutations += M_SOBER
		H.check_mutations = 1

		return 1



//Cargo
/datum/job/qm
	title = "Quartermaster"
	flag = QUARTERMASTER
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the head of personnel"
	selection_color = "#dddddd"
	idtype = /obj/item/weapon/card/id/supply
	access = list(access_maint_tunnels, access_mailsorting, access_cargo, access_cargo_bot, access_qm, access_mint, access_mining, access_mining_station, access_taxi)
	minimal_access = list(access_maint_tunnels, access_mailsorting, access_cargo, access_cargo_bot, access_qm, access_mint, access_mining, access_mining_station, access_taxi)

	pdaslot=slot_belt
	pdatype=/obj/item/device/pda/quartermaster

	equip(var/mob/living/carbon/human/H)
		if(!H)
			return 0
		switch(H.backbag)
			if(2)
				H.equip_or_collect(new /obj/item/weapon/storage/backpack(H), slot_back)
			if(3)
				H.equip_or_collect(new /obj/item/weapon/storage/backpack/satchel_norm(H), slot_back)
			if(4)
				H.equip_or_collect(new /obj/item/weapon/storage/backpack/satchel(H), slot_back)
			if(5)
				H.equip_or_collect(new /obj/item/weapon/storage/backpack/messenger(H), slot_back)
		H.equip_or_collect(new /obj/item/device/radio/headset/headset_cargo(H), slot_ears)
		H.equip_or_collect(new /obj/item/clothing/under/rank/cargo(H), slot_w_uniform)
		H.equip_or_collect(new /obj/item/clothing/shoes/brown(H), slot_shoes)
		//H.equip_or_collect(new /obj/item/device/pda/quartermaster(H), slot_belt)
//		H.equip_or_collect(new /obj/item/clothing/gloves/black(H), slot_gloves)
		H.equip_or_collect(new /obj/item/clothing/glasses/sunglasses(H), slot_glasses)
		H.put_in_hands(new /obj/item/weapon/clipboard(H))
		if(H.backbag == 1)
			H.put_in_hands(new H.species.survival_gear(H))
		else
			H.equip_or_collect(new H.species.survival_gear(H.back), slot_in_backpack)
		return 1



/datum/job/cargo_tech
	title = "Supply Tech"
	flag = CARGOTECH
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 2
	spawn_positions = 2
	supervisors = "the quartermaster"
	selection_color = "#dddddd"
	idtype = /obj/item/weapon/card/id/supply
	access = list(access_maint_tunnels, access_mailsorting, access_cargo, access_cargo_bot, access_mint, access_mining, access_mining_station, access_taxi)
	minimal_access = list(access_maint_tunnels, access_cargo, access_cargo_bot, access_mailsorting, access_taxi)

	pdaslot=slot_belt
	pdatype=/obj/item/device/pda/cargo

	equip(var/mob/living/carbon/human/H)
		if(!H)
			return 0
		switch(H.backbag)
			if(2)
				H.equip_or_collect(new /obj/item/weapon/storage/backpack(H), slot_back)
			if(3)
				H.equip_or_collect(new /obj/item/weapon/storage/backpack/satchel_norm(H), slot_back)
			if(4)
				H.equip_or_collect(new /obj/item/weapon/storage/backpack/satchel(H), slot_back)
			if(5)
				H.equip_or_collect(new /obj/item/weapon/storage/backpack/messenger(H), slot_back)
		H.equip_or_collect(new /obj/item/device/radio/headset/headset_cargo(H), slot_ears)
		H.equip_or_collect(new /obj/item/clothing/under/rank/cargotech(H), slot_w_uniform)
		H.equip_or_collect(new /obj/item/clothing/shoes/black(H), slot_shoes)
		H.put_in_hands(new /obj/item/weapon/storage/bag/plasticbag(H))
		//H.equip_or_collect(new /obj/item/device/pda/cargo(H), slot_belt)
//		H.equip_or_collect(new /obj/item/clothing/gloves/black(H), slot_gloves)
		if(H.backbag == 1)
			H.put_in_hand(GRASP_RIGHT_HAND, new H.species.survival_gear(H))
		else
			H.equip_or_collect(new H.species.survival_gear(H.back), slot_in_backpack)
		return 1


/datum/job/clown
	title = "Clown"
	flag = CLOWN
	department_flag = CIVILIAN
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the head of personnel"
	selection_color = "#dddddd"
	idtype = /obj/item/weapon/card/id/clown
	access = list(access_clown, access_theatre, access_maint_tunnels)
	minimal_access = list(access_clown, access_theatre)
	alt_titles = list("Jester")

	pdaslot=slot_belt
	pdatype=/obj/item/device/pda/clown

	equip(var/mob/living/carbon/human/H)
		if(!H)
			return 0
		H.equip_or_collect(new /obj/item/weapon/storage/backpack/clown(H), slot_back)
		H.equip_or_collect(new H.species.survival_gear(H.back), slot_in_backpack)
		//H.equip_or_collect(new /obj/item/device/pda/clown(H), slot_belt)
		H.equip_or_collect(new /obj/item/clothing/mask/gas/clown_hat(H), slot_wear_mask)
		H.equip_or_collect(new /obj/item/weapon/reagent_containers/food/snacks/grown/banana(H), slot_in_backpack)
		H.equip_or_collect(new /obj/item/weapon/bikehorn(H), slot_in_backpack)
		H.equip_or_collect(new /obj/item/weapon/stamp/clown(H), slot_in_backpack)
		H.equip_or_collect(new /obj/item/toy/crayon/rainbow(H), slot_in_backpack)
		H.equip_or_collect(new /obj/item/weapon/storage/fancy/crayons(H), slot_in_backpack)
		H.equip_or_collect(new /obj/item/toy/waterflower(H), slot_in_backpack)
		H.mutations.Add(M_CLUMSY)
		if (H.mind.role_alt_title)
			switch(H.mind.role_alt_title)
				if("Jester")
					H.equip_or_collect(new /obj/item/clothing/under/jester(H), slot_w_uniform)
					H.equip_or_collect(new /obj/item/clothing/shoes/jestershoes(H), slot_shoes)
					H.equip_or_collect(new /obj/item/clothing/head/jesterhat(H), slot_head)
				else
					H.equip_or_collect(new /obj/item/clothing/under/rank/clown(H), slot_w_uniform)
					H.equip_or_collect(new /obj/item/clothing/shoes/clown_shoes(H), slot_shoes)
		H.real_name = pick(clown_names)
		H.dna.real_name = H.real_name
		H.rename_self("clown")
		return 1



//var/global/lawyer = 0//Checks for another lawyer //This changed clothes on 2nd lawyer, both IA get the same dreds.
/datum/job/lawyer
	title = "Internal Affairs Agent"
	flag = LAWYER
	department_flag = CIVILIAN
	faction = "Station"
	idtype = /obj/item/weapon/card/id/centcom
	total_positions = 2
	spawn_positions = 2
	supervisors = "Nanotrasen Law, CentComm Officals, and the station's captain."
	selection_color = "#dddddd"
	access = list(access_lawyer, access_court, access_heads, access_RC_announce, access_sec_doors, access_maint_tunnels, access_cargo, access_medical,  access_bar, access_kitchen, access_hydroponics)
	minimal_access = list(access_lawyer, access_court, access_heads, access_RC_announce, access_sec_doors, access_cargo,  access_bar, access_kitchen)
	alt_titles = list("Lawyer")

	pdaslot=slot_belt
	pdatype=/obj/item/device/pda/lawyer

	equip(var/mob/living/carbon/human/H)
		if(!H)
			return 0
		switch(H.backbag)
			if(2)
				H.equip_or_collect(new /obj/item/weapon/storage/backpack(H), slot_back)
			if(3)
				H.equip_or_collect(new /obj/item/weapon/storage/backpack/satchel_norm(H), slot_back)
			if(4)
				H.equip_or_collect(new /obj/item/weapon/storage/backpack/satchel(H), slot_back)
			if(5)
				H.equip_or_collect(new /obj/item/weapon/storage/backpack/messenger(H), slot_back)
		if (H.mind.role_alt_title)
			switch(H.mind.role_alt_title)
				if("Lawyer")
					H.equip_or_collect(new /obj/item/clothing/under/lawyer/bluesuit(H), slot_w_uniform)
					H.equip_or_collect(new /obj/item/clothing/suit/storage/lawyer/bluejacket(H), slot_wear_suit)
					H.equip_or_collect(new /obj/item/clothing/shoes/leather(H), slot_shoes)
		H.equip_or_collect(new /obj/item/clothing/under/rank/internalaffairs(H), slot_w_uniform)
		H.equip_or_collect(new /obj/item/clothing/suit/storage/internalaffairs(H), slot_wear_suit)
		H.equip_or_collect(new /obj/item/clothing/shoes/centcom(H), slot_shoes)
		H.equip_or_collect(new /obj/item/clothing/glasses/sunglasses(H), slot_glasses)
		//H.equip_or_collect(new /obj/item/device/pda/lawyer(H), slot_belt)
		H.put_in_hands(new /obj/item/weapon/storage/briefcase/centcomm(H))
		if(H.backbag == 1)
			H.put_in_hand(GRASP_RIGHT_HAND, new H.species.survival_gear(H))
		else
			H.equip_or_collect(new H.species.survival_gear(H.back), slot_in_backpack)
		var/obj/item/weapon/implant/loyalty/L = new/obj/item/weapon/implant/loyalty(H)
		L.imp_in = H
		L.implanted = 1
		return 1
