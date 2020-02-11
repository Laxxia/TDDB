//If its opened and then nothing is done:
if(initial){
	pathClosePopup(); 	
	instance_destroy(turretCard);
	playedCard = noone;
	turretCard = noone;
	exit;
}

//if a card is swapped in
if(playedCard != noone){
	var curNode = oGameController.selectedTile;
	curNode.pathType = playedCard; 
	curNode.type = "blank";
	with(curNode){
		if(node1 != noone && node2 != noone){
			instance_destroy(node1);
			instance_destroy(node2);
			node1 = noone;
			node2 = noone;
			upgraded = false;
			upgrade = false;
		}
		scrPathInit();
	}
	instance_destroy(turretCard);
	playedCard = noone;
	turretCard = noone;
}
pathClosePopup();