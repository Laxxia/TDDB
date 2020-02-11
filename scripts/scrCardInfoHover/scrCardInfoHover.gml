/// scrItemHover(type,name,desc);

//Variables
var type = argument0;
var typeName = argument1;
var name = argument2;
var desc = argument3;

// Draw the item description at the mouse

// Set the colors for the background and the outline
var hudbg = make_color_rgb(67, 71, 107); // set the hud bg to a dark-tint blue
var hudbg2 = type; // make the outline the same as the type

//Set Base Location
var startingX = mouse_x + 40;
var startingY = mouse_y - 20;

// Make the HUD BG translucent
draw_set_alpha(0.8); // HALF translucent
draw_rectangle_colour(startingX, startingY, startingX + 270, startingY + 150,hudbg,hudbg,hudbg,hudbg,0);
draw_set_alpha(1); // set alpha back
draw_rectangle_colour(startingX, startingY, startingX + 270, startingY + 150,hudbg2,hudbg2,hudbg2,hudbg2,1);
// Set the font for the name
draw_set_font(fntHud);
// Draw the name
draw_text_ext_colour(startingX + 24, startingY + 5, string_hash_to_newline(string(name)),0,245,type,type,type,type,1);
// Set the font for the content
draw_set_font(fntHud2);
// Draw the type of weapon
draw_text_ext_colour(startingX + 24, startingY + 25, string_hash_to_newline(string(typeName)),0,100,type,type,type,type,1);
// Draw the description for the weapon
draw_text_ext_colour(startingX + 5, startingY + 65, string_hash_to_newline(string(desc)),20,245,c_white,c_white,c_white,c_white,1);