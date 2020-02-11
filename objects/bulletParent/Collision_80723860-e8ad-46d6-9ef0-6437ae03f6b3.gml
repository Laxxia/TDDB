/// @description Insert description here
// You can write your code in this editor

//When status aeffects are added, run a script that will check if there are any status effects, like check a 
//fuckin....list that is saved on the bullet. and then step through and apply. 
with(other){ 
	healthPoints -= other.damage
	if(other.poisonCount > 0){
		alarm[0] = room_speed;
		if(poisonDamage <= other.poisonCount){
			poisonDamage = other.poisonCount;
		}
		poisonCount = 10; 
	}
	if(other.slowPerc > 0){
		moddedMove = baseMove * (1 - other.slowPerc);
		path_speed = moddedMove;
		alarm[1] = room_speed * 5;
	}
	};
var dmg = instance_create_depth(other.x + 15, other.y + 10, -9998, oDamageText)
dmg.text = "-" + string(damage);
dmg.ground = y;
instance_destroy();