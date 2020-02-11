/// @description Insert description here
// You can write your code in this editor
if (visualState == VisualState.inactive) exit;
if(text != "" && hovered){
	var hudbg = c_black
	var hudbg2 = hoverColor;

	//Set Base Location
	var startingX = mouse_x + 20;
	var startingY = mouse_y - 20;
	// Make the HUD BG translucent
	draw_set_alpha(0.8); // HALF translucent
	draw_set_font(fntHud);
	var boxWidth = string_width(text) + 40;
	draw_rectangle_colour(startingX, startingY, startingX + boxWidth, startingY + 25,hudbg,hudbg,hudbg,hudbg,0);
	draw_set_alpha(1); // set alpha back
	draw_rectangle_colour(startingX, startingY, startingX + boxWidth, startingY + 25,hudbg2,hudbg2,hudbg2,hudbg2,1);
	//Draw description
	draw_text_ext_colour(startingX + 24, startingY + 5, string_hash_to_newline(string(text)),0,245,hudbg2,hudbg2,hudbg2,hudbg2,1);
}

if(headerText != ""){
	draw_set_font(fntHeader);
	draw_set_halign(fa_center);
	draw_text(x + sprite_width/2, y + 15, headerText);
	draw_set_halign(fa_left);
}