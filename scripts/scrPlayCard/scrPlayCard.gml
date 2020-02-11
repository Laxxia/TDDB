 var card = argument0;

switch(card.type){
	case cardType.tower:
		card.played = true;
		NodeAcceptButton.playedCard = card.type;
		NodeAcceptButton.turretCard = card.id;
	break;
	case cardType.path:
		card.played = true;
		oCursor.playedCard = card.keywordID;
		oCursor.turretCard = card.id;
		oGameController.cursorState = "Path Place";
		instance_destroy(oCursor.turretCard);
	break;
	case cardType.towerMod:
		card.played = true;
		modLoader.playedCard = card.id;
	break;
	case cardType.spell:
		card.played = true;
		scrSpellPlay(card);
		ds_list_add(deckController.discard, card.cardIDNum);
	break;
		
}
var loc = ds_list_find_index(deckController.handList, card);
ds_list_delete(deckController.handList, loc);
scrHandShift();