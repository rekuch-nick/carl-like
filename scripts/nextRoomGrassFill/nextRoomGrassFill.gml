// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function nextRoomGrassFill(){


	for(var a=0; a<ww.WIDTH; a++){
		for(var b=0; b<ww.HEIGHT; b++){
			ww.fmap[a, b] = irandom_range(1, 4);
			//ww.fmap[a, b] = (((a * 2) + b) % 4) + 1;
			ww.bmap[a, b] = 50;
		}
	}
}