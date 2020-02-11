/// @description Insert description here
// You can write your code in this editor
draw_self();
if(place_meeting(x, y, cardChoicePopup)){
	var target = instance_place(x, y, cardChoicePopup);
	if(target != noone && target.cardName != ""){
		scrCardInfoHover(target.typeColor, target.typeName, target.cardName, target.desc);
	}
}