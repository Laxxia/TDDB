/// @description Insert description here
// You can write your code in this editor
switch(state){
	case "initialize":
		if(upgrade){
			if(!upgraded){
				scrUpgradePath(pathType, id);
			} else {image_index = image_index + 7;}
		}
		state = "idle";
	break;
}

