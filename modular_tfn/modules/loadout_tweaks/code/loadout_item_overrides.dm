/datum/loadout_item/proc/insert_into_loadout_bag(mob/living/carbon/human/equipper)
	var/obj/item/storage/backpack/duffelbag/loadout/bag = locate(/obj/item/storage/backpack/duffelbag/loadout) in equipper.held_items

	if(!bag) // this must be the first item being processed, so create the bag thatll hold it and the rest
		bag = new /obj/item/storage/backpack/duffelbag/loadout(equipper)
		equipper.put_in_hands(bag)

	new item_path(bag)

/datum/loadout_item/insert_path_into_outfit(datum/outfit/outfit, mob/living/carbon/human/equipper, visuals_only = FALSE)
	if(!visuals_only && equipper)
		insert_into_loadout_bag(equipper)

/datum/loadout_item/accessory/insert_path_into_outfit(datum/outfit/outfit, mob/living/carbon/human/equipper, visuals_only = FALSE)
	if(!visuals_only && equipper)
		insert_into_loadout_bag(equipper)
