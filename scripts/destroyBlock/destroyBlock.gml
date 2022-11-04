// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function destroyBlock(a, b){
	var t = ww.bTileMap[a, b].sprite_index;
	
	if(t == imgBlock){
		for(var i=0; i<15; i++){
			instance_create_depth(a * 50 + irandom_range(10, 40), b * 50 + irandom_range(10, 40), -5000, effLeaf);
		}
	}
	
	ww.bmap[a, b] = 0;
}