for(var i = 0; i < ds_list_size(deckController.handList); i++){
	var inst = ds_list_find_value(deckController.handList, i);
	inst.x = 300 + (130 * i);
	inst.y = 950
	inst.handX = inst.x;
	inst.handY = inst.y;
}