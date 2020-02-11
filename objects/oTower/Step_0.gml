/// @description Insert description here
// You can write your code in this editor
target = instance_nearest(x,y, enemyParent);
if(target != noone){
	if(point_distance(x,y, target.x, target.y) <= moddedRange + 5){
		if(!shooting){
			alarm[0] = 1;
			shooting = true;
		}
	} else {
		shooting = false;
		target = noone;
	}
}