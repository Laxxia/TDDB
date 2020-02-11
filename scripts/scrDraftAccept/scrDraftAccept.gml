var list = oDraftPopup.selectedList;
if(ds_list_size(list) != 2){exit}
oDraftPopup.choiceCount ++;
for(var i = 0; i < 2; i++){
	var selectedCard = ds_list_find_value(list, i);
	if(ds_list_size(deckController.handList) < 5){
		scrCreateInHand(selectedCard, 1);
	} else {
		scrDeckAdd(selectedCard, 1);
	}
}
ds_list_clear(list);
draftChoice1.selected = false;
draftChoice2.selected = false;
draftChoice3.selected = false;
if(oDraftPopup.choiceCount >= 5){
	var _ui_layer=layer_get_id("deckDraft");
	with(_ui_parent)
	{
		ui_element_toggle_active(layer == _ui_layer);
	}
	with(oGameController) menu_open=false;
	ds_list_shuffle(deckController.deck);
} else {
	var tempList = ds_list_create()
	var tempList2 = ds_list_create();
	ds_list_add(tempList, 1, 8, 8, 8, 9);
	ds_list_add(tempList2, 9, 9, 9, 10, 11, 12, 13, 14, 15, 15);
	ds_list_shuffle(tempList);
	ds_list_shuffle(tempList2);
	
	draftChoice1.cardValue = ds_list_find_value(tempList, 0);
	draftChoice1.image_index = draftChoice1.cardValue;
	with(draftChoice1){scrAssignCard(cardValue);}
	ds_list_delete(tempList, 0);
	
	draftChoice2.cardValue = ds_list_find_value(tempList, 0);
	draftChoice2.image_index = draftChoice2.cardValue;
	with(draftChoice2){scrAssignCard(cardValue);}
	ds_list_delete(tempList, 0);
	
	draftChoice3.cardValue = ds_list_find_value(tempList2, 0);
	draftChoice3.image_index = draftChoice3.cardValue;
	with(draftChoice3){scrAssignCard(cardValue);}
	ds_list_delete(tempList2, 0);
	
	ds_list_destroy(tempList);
	ds_list_destroy(tempList2);
}