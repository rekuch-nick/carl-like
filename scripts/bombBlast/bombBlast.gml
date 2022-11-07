function bombBlast(a, b){
	
	if(!inBounds(a, b)){ return; }
	
	if(ww.bmap[a, b] != noone && tileUnimportant(ww.bmap[a, b])){
		destroyBlock(a, b)
	}
	
	instance_create_depth(a * 50, b * 50, -5000, effBlast);
}