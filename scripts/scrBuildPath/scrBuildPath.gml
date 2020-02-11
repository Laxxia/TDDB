var currentX = argument0;
var currentY = argument1;
var currentTile = oGameController.grid[# currentX, currentY]
var curPath = currentTile.path;
var entranceSide = -1;
var usableExit = -1;
var goalMet = false;
path_clear_points(oGameController.mainPath);
path_clear_points(oGameController.testPath);
path_append(oGameController.testPath, curPath);
path_delete(curPath);
var currentExits = -1;
var nextTile = -1;

while(!goalMet){
	currentExits = currentTile.pathConnections
	for(var i = 0; i < array_length_1d(currentExits); i++){
		if(currentExits[i] != entranceSide){
			usableExit = currentExits[i];	
		}
	}
	nextTile = scrConnectionCheck(usableExit, currentX, currentY);
	entranceSide = scrGetEntrance(usableExit);
	if(nextTile = false){return false;}
	if(nextTile.pathType != pathTile.blank){
		curPath = nextTile.path;
		if(scrOppositeSideCheck(nextTile, entranceSide)){path_reverse(curPath)}
		path_append(oGameController.testPath, curPath);
		path_delete(curPath);
		currentX = nextTile.gridX;
		currentY = nextTile.gridY;
		if(nextTile.type = "goal"){
			goalMet = true;
			oGameController.mainPath = path_duplicate(oGameController.testPath);
		}
		currentTile = nextTile;
	} else {
		return false;
	}
 }
path_set_closed(oGameController.mainPath, false);
return true;