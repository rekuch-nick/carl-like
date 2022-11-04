// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function tileIndex(i){
	if(i == 0){ return imgBlank; }
	if(i == 1){ return imgGrass; }
	if(i == 2){ return imgGrass2; }
	if(i == 3){ return imgGrass3; }
	if(i == 4){ return imgGrass4; }
	
	if(i == 10){ return imgWater; }
	
	if(i == 25){ return imgRoom; }
	
	if(i == 28){ return imgExitSeal; }
	if(i == 29){ return imgExit; }
	
	if(i == 30){ return imgSwitchDown; }
	if(i == 31){ return imgSwitchUp; }
	
	if(i == 50){ return imgBlock; }
	if(i == 60){ return imgChest; }
	if(i == 99){ return imgNode; }

}