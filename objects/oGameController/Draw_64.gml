/// @description Insert description here
// You can write your code in this editor
draw_set_font(fntInfo);
draw_text(10, 20, string("Phase: " + combatState));
draw_text(10, 40, "Action Points: " + string(actionPoints));
draw_text(10, 60, "Round: " + string(curRound));
draw_text(10, 80, "Server Integrity: " + string(healthPoints));
draw_text(10, 100, "Viruses Deleted: " + string(killCount));


draw_text(10, 900, "Cards in Deck: " + string(ds_list_size(deckController.deck)));
draw_text(10, 920, "Cards in Discard: " + string(ds_list_size(deckController.discard)));