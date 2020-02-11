var list = oRoundDraftPopup.selectedList;
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