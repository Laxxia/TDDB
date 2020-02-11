/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

inactive_offset=[0,-200];
active_pos = [xstart,ystart];

cardValue = -1;
selected = false;

cardID = -1;
cardName = "";
keywordID = -1;
type = -1;
typeColor = noone;
typeName = "";
desc = "";

if(pickType == "Draft"){
	target = oDraftPopup;
} else if (pickType = "roundDraft"){target = oRoundDraftPopup} else {target = oSelectedPopup}