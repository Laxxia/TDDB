var tempList = ds_list_create()
ds_list_add(tempList, 1, 1, 8, 9);
ds_list_shuffle(tempList);
draftChoice1.cardValue = ds_list_find_value(tempList, 0);
draftChoice1.image_index = draftChoice1.cardValue;
with(draftChoice1){scrAssignCard(cardValue);}
ds_list_delete(tempList, 0);
draftChoice2.cardValue = ds_list_find_value(tempList, 0);
draftChoice2.image_index = draftChoice2.cardValue;
with(draftChoice2){scrAssignCard(cardValue);}
ds_list_delete(tempList, 0);
draftChoice3.cardValue = ds_list_find_value(tempList, 0);
draftChoice3.image_index = draftChoice3.cardValue;
with(draftChoice3){scrAssignCard(cardValue);}
ds_list_delete(tempList, 0);
ds_list_destroy(tempList);

var _menu_layer=layer_get_id("deckDraft");
with(_ui_parent)
{
	ui_element_toggle_active(layer == _menu_layer);
}
oGameController.menu_open = true;