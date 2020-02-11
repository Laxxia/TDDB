/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_circle(x,y,range, true);

var en = instance_nearest(x,y, enemyParent);
if(en != noone){
	if(point_distance(x,y, en.x, en.y) <= range + 5){
		if(!shooting){
			alarm[0] = 1;
			shooting = true;
		}
		target = en;
		draw_line(x,y,en.x, en.y);
	} else {
		shooting = false;
		target = noone;
	}
}