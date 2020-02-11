var targetTurret = oGameController.targetTurret;
if(targetTurret == noone || modLoader.playedCard != noone){exit;}

var list = modLoader.modsList;

ds_list_copy(targetTurret.mods, list);

scrModify();


oGameController.targetTurret = noone;
ds_list_clear(modLoader.modsList);

var _ui_layer=layer_get_id("TurretMods");
with(_ui_parent)
{
	ui_element_toggle_active(layer == _ui_layer);
}
with(oGameController) menu_open=false;