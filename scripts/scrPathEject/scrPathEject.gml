if(oGameController.combatState == "Wave Phase" || pathAccept.turretCard == noone || ds_list_size(deckController.handList) >= deckController.maxHandSize){exit;} //if you place a card and immediatley remove it, it bugs out.
			pathAccept.turretCard.interactable = true;
			ds_list_add(deckController.handList, pathAccept.turretCard);
			scrHandShift();
			pathAccept.turretCard.played = false;
			pathAccept.turretCard = noone;
			pathAccept.playedCard = pathTile.blank;		
			pathAccept.initial = false;