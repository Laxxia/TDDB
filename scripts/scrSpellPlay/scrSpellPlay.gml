var card = argument0;
switch(card.keywordID){
	case keywords.pickTwo:
		scrPickTwoPopup();
	break;
	case keywords.pathUpgrade:
		scrSelectUpgradePath();
	break;
	case keywords.drawTwo:
		scrDraw(2);
	break;
}