// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function setTileImages(){
	for(var a=0; a<ww.WIDTH; a++){
		for(var b=0; b<ww.HEIGHT; b++){
			ww.fTileMap[a, b].sprite_index = tileIndex(ww.fmap[a, b]);
			ww.bTileMap[a, b].sprite_index = tileIndex(ww.bmap[a, b]);
		}
	}
}