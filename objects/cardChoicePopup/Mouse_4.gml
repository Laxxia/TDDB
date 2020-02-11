/// @description Insert description here
// You can write your code in this editor
if(visualState = VisualState.inactive){exit;}
var list = target.selectedList;

if(!selected){
	if (pickType != "roundDraft"){
		if(ds_list_size(list) < 2){
			ds_list_add(list, cardValue);
			selected = true
		}
	} else {		
		if(ds_list_size(list) < 1){
			ds_list_add(list, cardValue);
			selected = true
		}
	}
} else {
	var loc = ds_list_find_index(list, cardValue);
	ds_list_delete(list, loc);
	selected = false;
}