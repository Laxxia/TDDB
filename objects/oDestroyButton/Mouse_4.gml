/// @description Insert description here
// You can write your code in this editor
instance_destroy(oGameController.targetTurret);
ds_list_add(deckController.handList, 1);
oGameController.targetTurret = noone;
ds_list_clear(modLoader.modsList);

var _ui_layer=layer_get_id("TurretMods");
with(_ui_parent)
{
	ui_element_toggle_active(layer == _ui_layer);
}
with(oGameController) menu_open=false;