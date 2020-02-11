if(oGameController.menu_open || oGameController.cursorState != "idle"){exit;}
oGameController.targetTurret = id;
var _menu_layer=layer_get_id("TurretMods");
with(_ui_parent)
{
	ui_element_toggle_active(layer == _menu_layer);
}
oGameController.menu_open = true;