/// @description Insert description here
// You can write your code in this editor
draw_self();
if((oGameController.cursorState == "upgrade" || oGameController.cursorState == "Path Place") && hovered){
	draw_sprite(sSelected, 0, x + sprite_width/2, y+sprite_height/2);
} 