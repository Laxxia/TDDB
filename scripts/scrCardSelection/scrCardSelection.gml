if(mouse_check_button_pressed(mb_left)){
	if(cardSelected != noone){exit;}
	if(instance_position(mouse_x, mouse_y, oCard)){
		cardSelected = instance_position(mouse_x, mouse_y, oCard);
	}
}
if(mouse_check_button(mb_left)){
	with(cardSelected){
		if(played == false && interactable == true){
			hovered = false;
			x = mouse_x;
			y = mouse_y;
		}
	}
} else if(mouse_check_button_released(mb_left) && cardSelected !=noone) {
		switch(cardSelected.type){
			case cardType.tower:
				if(oGameController.menu_open){
					with(cardSelected){
						if(place_meeting(x, y, turretNodeSlot) && !place_meeting(x, y, oCard)){
							x = turretNodeSlot.xstart;
							y = turretNodeSlot.ystart;
							interactable = false;
						}else { 
							x = handX; 
							y = handY; 
							deckController.cardSelected = noone;
							}
					}
					if(cardSelected != noone){
						scrPlayCard(cardSelected);
						cardSelected = noone;
					}
				} else {
					cardSelected.x = cardSelected.handX; 
					cardSelected.y = cardSelected.handY; 
					cardSelected = noone;
				}
				
			break;
			case cardType.path:
				if(!oGameController.menu_open && oGameController.combatState != "Wave Phase"){
					with(cardSelected){
						if(place_meeting(x,y, oGrid)){
							if(instance_exists(id)){
								scrPlayCard(id);
							}
							deckController.cardSelected = noone;
							interactable = false;
						} else {x = handX; y = handY; deckController.cardSelected = noone;}
					}
				} else if (cardSelected.interactable) {
					cardSelected.x = cardSelected.handX; 
					cardSelected.y = cardSelected.handY; 
					cardSelected = noone;
					} else {cardSelected = noone;}
			break;
			case cardType.towerMod:
				if(oGameController.menu_open){
					with(cardSelected){
						if(place_meeting(x, y, modLoader)){
							x = modLoader.xstart + modLoader.sprite_width/2;
							y = modLoader.ystart + modLoader.sprite_height/2;
							if(instance_exists(id)){
								scrPlayCard(id);
							}
							deckController.cardSelected = noone;
							interactable = false;
						} else {x = handX; y = handY; deckController.cardSelected = noone;}
					}
				} else {
					cardSelected.x = cardSelected.handX; cardSelected.y = 
					cardSelected.handY; 
					cardSelected = noone;
					}
			break;
			case cardType.spell:
				if(!oGameController.menu_open && oGameController.actionPoints > 0){
					with(cardSelected){
						if(place_meeting(x,y, oGrid)){
							scrPlayCard(id);
							deckController.cardSelected = noone;
							interactable = false;
							oGameController.actionPoints --;
							instance_destroy(id);
						}else {
							x = handX; y = handY; deckController.cardSelected = noone;
						}	
					}
				} else {
					cardSelected.x = cardSelected.handX; 
					cardSelected.y = cardSelected.handY; 
					cardSelected = noone;
					}
			break;
		}
}