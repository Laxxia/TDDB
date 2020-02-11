/// @description Insert description here
// You can write your code in this editor
/*
if(oGameController.state != "pathCard"){exit;}
var mx = mouse_x;
var my = mouse_y;

var cs = cellSize;
var gx = (mx div cs); 
var gy = (my div cs);

var xx = gx*cs;
var yy = gy*cs;

var c = c_red;
var cell = grid[# gx, gy];

if(cell == 0){
	if(scrGetSoil(mx, my)){
		c = c_blue;
	}
}

draw_rectangle_color(xx, yy, xx+cs, yy+cs, c, c, c, c, true); 

draw_sprite(sprCropsPicked, selectedCrop, xx, yy);