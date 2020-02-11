var type = argument0;
path = path_add();
//TODO - each case will have a neted switch for orientation;
//do a check for which entrance side is being used, then if it isn't main entrance expected, just 'path reverse'
//but this check will happen in the path creation, not this node creation;
var moveSpeed = 50
switch(type){
	case pathTile.spawner:
		path_add_point(path, x + sprite_width/2, y + floor(sprite_height * .45), moveSpeed);
		path_add_point(path, x + sprite_width/2, y + sprite_height , moveSpeed);
	break;
	case pathTile.goal:
		path_add_point(path, x + sprite_width/2, y, moveSpeed);
		path_add_point(path, x + sprite_width/2, y + floor(sprite_height * .55), moveSpeed);
	break;
	case pathTile.vLine:
		path_add_point(path, x + sprite_width/2, y, moveSpeed);
		path_add_point(path, x + sprite_width/2, y + sprite_height , moveSpeed);
	break;
	case pathTile.hLine:
		path_add_point(path, x, y + sprite_height/2, moveSpeed);
		path_add_point(path, x + sprite_width, y + sprite_height/2 , moveSpeed);
	break;
	case pathTile.leftL:
		path_add_point(path, x + sprite_width/2, y, moveSpeed);
		path_add_point(path, x + sprite_width/2, y + sprite_height/2 , moveSpeed);
		path_add_point(path, x, y + sprite_height/2, moveSpeed);
	break;
	case pathTile.rightL:
		path_add_point(path, x + sprite_width/2, y, moveSpeed);
		path_add_point(path, x + sprite_width/2, y + sprite_height/2 , moveSpeed);
		path_add_point(path, x + sprite_width, y + sprite_height/2, moveSpeed);
	break;
	case pathTile.uLeftL:
		path_add_point(path, x, y + sprite_height/2, moveSpeed);
		path_add_point(path, x + sprite_width/2, y + sprite_height/2 , moveSpeed);
		path_add_point(path, x + sprite_width/2, y + sprite_height, moveSpeed);
	break;
	case pathTile.uRightL:
		path_add_point(path, x + sprite_width, y + sprite_height/2, moveSpeed);
		path_add_point(path, x + sprite_width/2, y + sprite_height/2 , moveSpeed);
		path_add_point(path, x + sprite_width/2, y + sprite_height, moveSpeed);
	break;
	case pathTile.blank:
	break;
}
path_set_closed(path, false);