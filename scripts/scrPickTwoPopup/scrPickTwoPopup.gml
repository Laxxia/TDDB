var tempList = ds_list_create()
ds_list_add(tempList, 1, 1, 2, 2, 3, 4, 5, 6);
ds_list_shuffle(tempList);
cardChoice1.cardValue = ds_list_find_value(tempList, 0);
cardChoice1.image_index = cardChoice1.cardValue;
ds_list_delete(tempList, 0);
cardChoice2.cardValue = ds_list_find_value(tempList, 0);
cardChoice2.image_index = cardChoice2.cardValue;
ds_list_delete(tempList, 0);
cardChoice3.cardValue = ds_list_find_value(tempList, 0);
cardChoice3.image_index = cardChoice3.cardValue;
ds_list_delete(tempList, 0);
ds_list_destroy(tempList);

var _menu_layer=layer_get_id("pickTwoPopup");
with(_ui_parent)
{
	ui_element_toggle_active(layer == _menu_layer);
}
oGameController.menu_open = true;