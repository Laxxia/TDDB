var drawCount = argument0;
for(var i = 0; i < drawCount; i++){
	if(ds_list_size(deckController.deck) > 0 && (ds_list_size(deckController.handList) < deckController.maxHandSize)){
		var drawnCard = ds_list_find_value(deckController.deck, 0);
			//When the UI change happens, fix this so its the cards in your hand forehead...oof maybe not, figure it out
			var inst = instance_create_layer( 100, 100, "cards", oCard);
			ds_list_add(deckController.handList, inst);
			with(inst){scrAssignCard(drawnCard);}
			scrHandShift();
			ds_list_delete(deckController.deck, 0);
	} else if(ds_list_size(deckController.discard) > 0) {
			ds_list_copy(deckController.deck, deckController.discard);
			ds_list_clear(deckController.discard);
			scrDraw(drawCount - i);
			break;
		} else {exit;}
}