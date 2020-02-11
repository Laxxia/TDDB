var list = oRoundDraftPopup.selectedList;
if(ds_list_size(list) != 1){exit}
for(var i = 0; i < 2; i++){
	var selectedCard = ds_list_find_value(list, i);
	if(ds_list_size(deckController.handList) < deckController.maxHandSize){
		scrCreateInHand(selectedCard, 1);
	} else {
		scrDeckAdd(selectedCard, 1);
	}
}
ds_list_clear(list);
roundDraftChoice1.selected = false;
roundDraftChoice2.selected = false;
roundDraftChoice3.selected = false;

var _ui_layer=layer_get_id("roundDraft");
with(_ui_parent)
{
	ui_element_toggle_active(layer == _ui_layer);
}
with(oGameController) menu_open=false;
ds_list_shuffle(deckController.deck);