/// @description Insert description here
// You can write your code in this editor
var enemy = instance_create_layer(x + sprite_width/2, y + floor(sprite_height * .45), "enemies", oEnemy2);
enemy.healthPoints = enemy.healthPoints + floor(oGameController.curRound/2);
enemyCounter ++;
if(enemyCounter < enemyCount){
	alarm[1] = room_speed * 2;
} else if(waveCounter < waves) { 
	enemyCounter = 0;
	waveCounter ++;
	alarm[1] = room_speed * 4;
} else {
	enemyCounter = 0;
	waveCounter = 0;
	state = "Final Wave";
}