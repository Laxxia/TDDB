/// @description Insert description here
// You can write your code in this editor
if(modLoader.playedCard != noone && ds_list_size(modLoader.modsList) < 3){
	ds_list_add(modLoader.modsList, modLoader.playedCard.cardIDNum);
	instance_destroy(modLoader.playedCard);
	modLoader.playedCard = noone;
}