var type = argument0;
var path = argument1;
switch(type){
	case pathTile.vLine:
		var node1 = instance_create_layer(path.x + 14, path.y + 23, "towerNodes", oTowerNode);
		var node2 = instance_create_layer(path.x + 97, path.y + 88, "towerNodes", oTowerNode);
		node1.image_index = 0;
		node2.image_index = 0;
	break;	
	case pathTile.hLine:
		var node1 = instance_create_layer(path.x + 89, path.y + 16, "towerNodes", oTowerNode);
		var node2 = instance_create_layer(path.x + 24, path.y + 97, "towerNodes", oTowerNode);
		node1.image_index = 1;
		node2.image_index = 1;
	break;
	case pathTile.uLeftL:
		var node1 = instance_create_layer(path.x + 20, path.y + 22, "towerNodes", oTowerNode);
		var node2 = instance_create_layer(path.x + 92, path.y + 89, "towerNodes", oTowerNode);
		node1.image_index = 1;
		node2.image_index = 0;
	break;
	case pathTile.uRightL:
		var node1 = instance_create_layer(path.x + 90, path.y + 20, "towerNodes", oTowerNode);
		var node2 = instance_create_layer(path.x + 22, path.y + 92, "towerNodes", oTowerNode);
		node1.image_index = 1;
		node2.image_index = 0;
	break;
	case pathTile.rightL:
		var node1 = instance_create_layer(path.x + 20, path.y + 22, "towerNodes", oTowerNode);
		var node2 = instance_create_layer(path.x + 92, path.y + 89, "towerNodes", oTowerNode);
		node1.image_index = 0;
		node2.image_index = 1;
	break;
	case pathTile.leftL:
		var node1 = instance_create_layer(path.x + 90, path.y + 20, "towerNodes", oTowerNode);
		var node2 = instance_create_layer(path.x + 22, path.y + 92, "towerNodes", oTowerNode);
		node1.image_index = 0;
		node2.image_index = 1;
	break;
}
path.image_index = path.image_index + 7;
path.node1 = node1;
path.node2 = node2;
path.upgraded = true
path.upgrade = true;