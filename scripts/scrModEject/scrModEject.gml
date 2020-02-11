if(modLoader.playedCard == noone){exit;}

ds_list_add(deckController.handList, modLoader.playedCard);
modLoader.playedCard.interactable = true;
modLoader.playedCard.played = false;
modLoader.playedCard = noone;
scrHandShift();