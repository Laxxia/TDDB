/// @description Insert description here
// You can write your code in this editor
if(ds_list_size(mods)> 0){
	for(var i = 0; i < ds_list_size(mods); i++;){
		var card = ds_list_find_value(mods, i);
		scrDiscardAdd(card, 1);
	}
	ds_list_destroy(mods);
}