/// @description Insert description here
// You can write your code in this editor
if(poisonCount > 0){
	healthPoints -= poisonDamage;
	poisonCount --;
	var dmg = instance_create_depth(x + 15, y + 10, -9998, oDamageText);
	dmg.text = "-" + string(poisonDamage);
	dmg.ground = y - 5;
	alarm[0] = room_speed;
}