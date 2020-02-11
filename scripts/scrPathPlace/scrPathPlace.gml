if(oCursor.playedCard != noone){
	var curNode = oGameController.hoveredTile;
	curNode.pathType = oCursor.playedCard; 
	with(curNode){
		scrPathInit();
	}
	oCursor.playedCard = noone;
	oCursor.turretCard = noone;
}