/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
draw_set_font(fntHud2);
if(oGameController.targetTurret != noone){
	switch(ds_list_size(modsList)){
		case 3:
			with(modInfo3){
				draw_text(x + 20, 
				y + sprite_height/2, 
				string(deckController.cardPool[# cardValues.cardName, ds_list_find_value(modLoader.modsList, 2)]) + "-" + 
				string(deckController.cardPool[# cardValues.desc, ds_list_find_value(modLoader.modsList, 2)]));
			}
		case 2:
			with(modInfo2){
				draw_text(x + 20, 
				y + sprite_height/2, 
				string(deckController.cardPool[# cardValues.cardName, ds_list_find_value(modLoader.modsList, 1)]) + "-" + 
				string(deckController.cardPool[# cardValues.desc, ds_list_find_value(modLoader.modsList, 1)]));
			}
		case 1:
			with(modInfo1){
				draw_text(x + 20, 
				y + sprite_height/2, 
				string(deckController.cardPool[# cardValues.cardName, ds_list_find_value(modLoader.modsList, 0)]) + "-" + 
				string(deckController.cardPool[# cardValues.desc, ds_list_find_value(modLoader.modsList, 0)]));
			}
	}
}