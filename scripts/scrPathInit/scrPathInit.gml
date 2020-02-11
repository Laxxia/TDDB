switch(pathType){
	case pathTile.goal:
		image_index = 1;
		pathConnections[0] = sides.north;
		type = "goal";
		pathType = pathTile.goal;
	break;
	case pathTile.spawner:
		image_index = 0;
		pathConnections[0] = sides.south;
		type = "spawner";
		pathType = pathTile.spawner;
	break;
	case pathTile.vLine: 
		image_index = 1;
		pathConnections = [sides.north, sides.south];
		type = "path";
		pathType = pathTile.vLine;
	break;
	case pathTile.hLine:
		image_index = 2;
		pathConnections = [sides.west, sides.east];
		type = "path";
		pathType = pathTile.hLine;
	break;
	case pathTile.leftL:
		image_index = 3;
		pathConnections = [sides.north, sides.west];
		type = "path";
		pathType = pathTile.leftL;
	break;
	case pathTile.rightL:
		image_index = 4;
		pathConnections = [sides.north, sides.east];
		type = "path";
		pathType = pathTile.rightL;
	break;
	case pathTile.uLeftL:
		image_index = 5;
		pathConnections = [sides.south, sides.west];
		type = "path";
		pathType = pathTile.uLeftL;
	break;
	case pathTile.uRightL:
		image_index = 6;
		pathConnections = [sides.east, sides.south];
		type = "path";
		pathType = pathTile.uRightL;
	break;
	case pathTile.blank:
		image_index = 0;
		type = "blank";
		pathType = pathTile.blank;
	break;
}
pathNodeCreate(pathType);
state = "initialize";