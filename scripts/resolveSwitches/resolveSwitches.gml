// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function resolveSwitches(){
	if(ww.upSwitches <= 0){
		for(var a=0; a<ww.WIDTH; a++){
			for(var b=0; b<ww.HEIGHT; b++){
				if(ww.bmap[a, b] == 28){
					ww.bmap[a, b] = 29;
					setTileImages();
				}
			}
		}
	}
}