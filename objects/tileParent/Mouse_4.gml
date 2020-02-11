/// @description Insert description here
// You can write your code in this editor
if(type == "blank" || oGameController.menu_open || instance_position(mouse_x, mouse_y, oTower) || instance_position(mouse_x, mouse_y, oTowerNode) || oGameController.cursorState != "idle" || instance_position(mouse_x, mouse_y, oWelcomePage)){exit;}
oGameController.selectedTile = id;
pathCardPopup();