var tempList = ds_list_create()
ds_list_add(tempList, 1, 8, 8, 8, 9, 10, 11, 12, 13, 14, 15);
ds_list_shuffle(tempList);
roundDraftChoice1.cardValue = ds_list_find_value(tempList, 0);
roundDraftChoice1.image_index = roundDraftChoice1.cardValue;
with(roundDraftChoice1){scrAssignCard(cardValue);}
ds_list_delete(tempList, 0);
roundDraftChoice2.cardValue = ds_list_find_value(tempList, 0);
roundDraftChoice2.image_index = roundDraftChoice2.cardValue;
with(roundDraftChoice2){scrAssignCard(cardValue);}
ds_list_delete(tempList, 0);
roundDraftChoice3.cardValue = ds_list_find_value(tempList, 0);
roundDraftChoice3.image_index = roundDraftChoice3.cardValue;
with(roundDraftChoice3){scrAssignCard(cardValue);}
ds_list_delete(tempList, 0);
ds_list_destroy(tempList);

var _menu_layer=layer_get_id("roundDraft");
with(_ui_parent)
{
	ui_element_toggle_active(layer == _menu_layer);
}
oGameController.menu_open = true;