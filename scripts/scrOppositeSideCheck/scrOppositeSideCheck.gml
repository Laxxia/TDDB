var nextTile = argument0;
var entranceSide = argument1;

switch(nextTile.pathType){
	case pathTile.vLine:
		if(entranceSide = sides.south){return true;}
	break;
	case pathTile.hLine:
		if(entranceSide = sides.east){return true;}
	break;
	case pathTile.leftL:
		if(entranceSide = sides.west){return true;}
	break;
	case pathTile.rightL:
		if(entranceSide = sides.east){return true;}
	break;
	case pathTile.uLeftL:
		if(entranceSide = sides.south){return true;}
	break;
	case pathTile.uRightL:
		if(entranceSide = sides.south){return true;}
	break;
	default:
		return false;
	break;
}