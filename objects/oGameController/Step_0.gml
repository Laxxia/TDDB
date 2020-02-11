 /// @description Insert description here
// You can write your code in this editor
if(healthPoints <= 0){
	scrGameOver();
}
switch(state){
	case "Welcome":
		scrWelcomePopup();
		state = "idle";
	break;
	case "Build Room":
		for(var i = 0; i < gridWidth; i++){
			for(var j = 0;  j < gridHeight; j++){
				var xx = scrGridToX(i) + 64;
				var yy = scrGridToY(j) + 64;
				if(position_meeting(xx, yy, tileParent)){
					var inst = instance_position(xx, yy, tileParent);
					grid[# i, j] = inst; 
					inst.gridX = i;
					inst.gridY = j;
				}
			}
		}
		state = "Path Build";
	break;
	
	case "Path Build":
		for(var i = 0; i < gridWidth; i++){
			for(var j = 0;  j < gridHeight; j++){
				if(grid[# i, j] != -1){
					var name = (grid[# i, j]);
					if(name.type = "spawner"){
						spawnX = i;
						spawnY = j;
						break;
					}
				}
			}
		}
		scrBuildPath(spawnX, spawnY);
		state = "deckCreate";
	break;
	
	case "deckCreate":
		scrDraftPopup();
		state = "idle";
	break;
}
switch(cursorState){
	case "upgrade":
		if(instance_position(mouse_x, mouse_y, oGrid)){
			if(hoveredTile != noone && hoveredTile.type == "path" && !hoveredTile.upgraded){
				if(mouse_check_button_pressed(mb_left)){
					scrUpgradePath(hoveredTile.pathType, hoveredTile);
					hoveredTile.hovered = false;
					hoveredTile = noone;
					oGameController.cursorState = "idle";
				}
			}
		}
	break;
	case "Path Place":
			if(instance_position(mouse_x, mouse_y, oGrid)){
			if(hoveredTile != noone && hoveredTile.type == "blank"){
				if(mouse_check_button_pressed(mb_left)){
					with(oCursor){scrPathPlace();}
					hoveredTile.hovered = false;
					hoveredTile = noone;
					oGameController.cursorState = "idle";
				}
			}
		}
	break;
	
}

switch(combatState){
	case "Build Phase":
		actionPoints = 3;
		if(ds_list_size(deckController.handList) < 7){
			var drawCount = (7 - ds_list_size(deckController.handList));
			scrDraw(drawCount);
		}
		if(curRound >= 3 && curRound % 3 == 0 ){
			scrRoundDraftPopup();
		}
		combatState = "Build Idle";
	break;
}