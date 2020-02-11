if(instance_place(mouse_x, mouse_y, cardParent) || oGameController.combatState = "Wave Phase" || oGameController.menu_open){exit;}
with(tileParent){scrPathInit();}
var test = scrBuildPath(oGameController.spawnX, oGameController.spawnY);
if(test != false){
oGameController.combatState = "Wave Phase";
oGameController.curRound ++;}