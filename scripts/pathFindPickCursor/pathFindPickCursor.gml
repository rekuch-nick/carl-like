// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function pathFindPickCursor(){
	xBest = -1;
	yBest = -1;

	for(var a=0; a<ww.WIDTH; a++){
		for(var b=0; b<ww.HEIGHT; b++){
		
			if(mapStatus[a, b] == "open"){
				if(xBest == -1 || costReal[a, b] + costGuess[a, b] < costReal[xBest, yBest] + costGuess[xBest, yBest]){
					xBest = a;
					yBest = b;
				}
			
			}
		
		}
	}

	xCursor = xBest;
	yCursor = yBest;


}