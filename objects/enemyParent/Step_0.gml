/// @description Insert description here
// You can write your code in this editor
switch(state){
	case "Moving":
		if(path_exists(oGameController.mainPath)){
			path_start(oGameController.mainPath, baseMove, path_action_stop, true);
		}
		state = "idle";
	break;
}

if(healthPoints < 1){
	instance_destroy();
}