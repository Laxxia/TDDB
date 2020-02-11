if(playedCard != noone){
	var curNode = oGameController.selectedTurretNode;
	var turret = instance_create_layer(curNode.x + 8, curNode.y + 8, "towers", oTower);
	curNode.slottedTurret = turret;
	instance_destroy(turretCard);
	playedCard = noone;
	turretCard = noone;
}
turretNodeClosePopup();