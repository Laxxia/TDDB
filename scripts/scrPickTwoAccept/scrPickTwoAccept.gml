var list = oSelectedPopup.selectedList;
if(ds_list_size(list) != 2){exit}
var pathOne = ds_list_find_value(list, 0);
var pathTwo = ds_list_find_value(list, 1);
scrDeckAdd(pathOne + 1, 1);
scrDeckAdd(pathTwo + 1, 1);
ds_list_clear(list);
cardChoice1.selected = false;
cardChoice2.selected = false;
cardChoice3.selected = false;

var _ui_layer=layer_get_id("pickTwoPopup");
with(_ui_parent)
{
	ui_element_toggle_active(layer == _ui_layer);
}
with(oGameController) menu_open=false;