/// @description Insert description here
// You can write your code in this editor
if(instance_exists(target)){
	var bullet = instance_create_layer(x,y,"attacks", oBullet);
	bullet.damage = damage;
	bullet.speed = 10;
	bullet.direction = point_direction(x,y,target.x, target.y);
	alarm[0] = fireRate;
} else { 
	shooting = false;
}