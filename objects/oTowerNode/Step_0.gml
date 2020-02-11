/// @description Insert description here
// You can write your code in this editor
if(collision_circle(x, y, 30, oCursor, true, true) && mouse_check_button_pressed(mb_left)){
	if(oGameController.menu_open || instance_position(mouse_x, mouse_y, oTower)){exit;}
	oGameController.selectedTurretNode = id;
	turretNodePopup();
}