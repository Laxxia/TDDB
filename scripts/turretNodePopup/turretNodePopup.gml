var _menu_layer=layer_get_id("turretNodePopup");
with(_ui_parent)
{
	ui_element_toggle_active(layer == _menu_layer);
}
oGameController.menu_open = true;