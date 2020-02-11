var card = argument0;

var grid = deckController.cardPool;

cardIDNum = grid[# cardValues.cardID, card];
cardName = grid[# cardValues.cardName, card];
keywordID = grid[# cardValues.keywordID, card];
type = grid[# cardValues.type, card];
desc = grid[# cardValues.desc, card];

switch(type){
	case 1:
		image_index = 0;
		typeColor = turretCardType;
		typeName = "Turret Card";
	break;
	case 2:
		image_index = keywordID;
		typeColor = pathCardType;
		typeName = "Path Card";
	break;
	case 3:
		image_index = keywordID;
		typeColor = spellCardType;
		typeName = "Spell Card";
	case 4:
		image_index = keywordID;
		typeColor = spellCardType;
		typeName = "Turret Function";
	break;
}
//TODO add an image index update for the card too

