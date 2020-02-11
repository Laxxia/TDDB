var exitSide = argument0;
var currentX = argument1;
var currentY = argument2;
var nextTile = noone;
var entranceSide = noone;
switch(exitSide){
	case sides.north:
		if(oGameController.grid[# currentX, currentY - 1] != -1){
			nextTile = oGameController.grid[# currentX, currentY - 1];
			entranceSide = sides.south;
		}
	break;
	case sides.south:
		if(oGameController.grid[# currentX, currentY + 1] != -1){
			nextTile = oGameController.grid[# currentX, currentY + 1];
			entranceSide = sides.north;
		}
	break;
	case sides.east:
		if(oGameController.grid[# currentX + 1, currentY] != -1){
			nextTile = oGameController.grid[# currentX + 1, currentY];
			entranceSide = sides.west;
		}
	break;
	case sides.west:
		if(oGameController.grid[# currentX -1, currentY] != -1){
			nextTile = oGameController.grid[# currentX -1, currentY];
			entranceSide = sides.east;
		}
	break;
}

if(nextTile != noone){
	if(nextTile.type = "blank"){
		return false;
	}
	for(var i = 0; i < array_length_1d(nextTile.pathConnections); i++;){
		if(nextTile.pathConnections[i] = entranceSide){
			return nextTile;
		}
	}
}

return noone;