var CardID = argument0;
var drawCount = argument1;
for(var i = 0; i < drawCount; i++){
	if(ds_list_size(deckController.handList) < deckController.maxHandSize){
			//When the UI change happens, fix this so its the cards in your hand forehead...oof maybe not, figure it out
			var inst = instance_create_layer( 100, 100, "cards", oCard);
			ds_list_add(deckController.handList, inst);
			inst.cardIDNum = CardID
			with(inst){scrAssignCard(CardID);}
			scrHandShift();
	}
}