/// @description Insert description here
// You can write your code in this editor
randomize(); 

maxHandSize = 10;

cardPool = load_csv("tdcards.csv")

handList = ds_list_create();

deck = ds_list_create();
discard = ds_list_create();

cardSelected = noone;
