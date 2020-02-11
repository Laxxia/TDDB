/// @description Insert description here
// You can write your code in this editor

//Make a placeable grid.

#macro cellSize 128
#macro xStart 96
#macro yStart 32
#macro xEnd 1760
#macro yEnd 800
#macro pathCardType c_lime
#macro turretCardType c_orange
#macro spellCardType c_purple

gridWidth = (xEnd - xStart) div cellSize;
gridHeight = (yEnd - yStart) div cellSize;

grid = ds_grid_create(gridWidth, gridHeight);
ds_grid_clear(grid, -1);

mainPath = path_add();
testPath = path_add();
path_set_closed(oGameController.testPath, false)

spawnX = -1;
spawnY = -1;

curRound = 0;
actionPoints = 3;
healthPoints = 100;
killCount = 0;

state = "Welcome";
combatState = "Build Phase";

menu_open = false;
selectedTurretNode = noone;

cursorState = "idle";
hoveredTile = noone;

targetTurret = noone;