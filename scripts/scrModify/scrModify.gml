with(oGameController.targetTurret){

	moddedRange = range;
	moddedFireRate = fireRate;
	moddedDamage = damage;
	bulletPoison = 0;
	slowPerc = 0;

	for(var i = 0; i < ds_list_size(mods); i++){
		var tMod = ds_list_find_value(mods, i);
		switch(tMod){
			case 10:
				moddedFireRate = moddedFireRate/2;
			break;
			case 11: 
				moddedDamage = moddedDamage + 1;
			break;
			case 12:
				moddedRange = moddedRange + 10;
			break;
			case 13:
				bulletPoison += 1;
			break;
			case 14: 
				slowPerc += .25;
			break
		}
	}
}