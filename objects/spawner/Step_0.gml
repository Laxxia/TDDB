/// @description Insert description here
// You can write your code in this editor
event_inherited();
switch(state){
	case "idle":
		if(oGameController.combatState == "Wave Phase"){
			state = "Initiate Wave";
		}
	break;
	case "Final Wave":
		if(instance_number(enemyParent) = 0){
			oGameController.combatState = "Build Phase";
			state = "idle";
		}
	break;
	case "Initiate Wave":
		//Thought, do a weird upside down switch that falls through for specific rounds?
		switch(oGameController.curRound % 3){
			case 1:
				enemyCount = 3 * oGameController.curRound;
				waves = 2 floor(oGameController.curRound/2);
				alarm[0] = room_speed * 2;	
			break;
			case 2:
				enemyCount = 2 * floor(oGameController.curRound/2);
				waves = 2 + floor(oGameController.curRound/2);
				alarm[1] = room_speed * 2;
			break;
			case 0:
				enemyCount = 1 * floor(oGameController.curRound/2);
				waves = 3 + floor(oGameController.curRound/3);
				alarm[2] = room_speed * 2;		
			break;
		}
		if(oGameController.curRound % 10 = 0){
				enemyCount = 1 * floor(oGameController.curRound/2);
				waves = 3 + floor(oGameController.curRound/3);
				alarm[2] = room_speed * 2;	
				enemyCount = 2 * oGameController.curRound;
				waves = 2 + floor(oGameController.curRound/2);
				alarm[1] = room_speed * 2;
		}
		state = "Spawning";
	break;
}