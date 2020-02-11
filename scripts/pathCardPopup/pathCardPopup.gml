var curPath = oGameController.selectedTile.pathType;
pathAccept.initial = true;
if(curPath == pathTile.goal || curPath == pathTile.spawner){exit;}
if(curPath != pathTile.blank){
	var inst = instance_create_layer(pathSlot.xstart, pathSlot.ystart, "cards", oCard);
 	with(inst){scrAssignCard(oGameController.selectedTile.pathType + 1);}
	inst.interactable = false;
	pathAccept.turretCard = inst;
	pathAccept.playedCard = inst.keywordID;
}
var _menu_layer=layer_get_id("PathCardPopup");
with(_ui_parent)
{
	ui_element_toggle_active(layer == _menu_layer);
}
oGameController.menu_open = true;