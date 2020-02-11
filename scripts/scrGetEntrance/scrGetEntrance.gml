var exitSide = argument0;
switch(exitSide){
	case sides.north:
	return sides.south;
	break;
	case sides.east:
	return sides.west;
	break;
	case sides.south:
	return sides.north;
	break;
	case sides.west:
	return sides.east;
	break;
}