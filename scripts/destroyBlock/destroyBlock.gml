function destroyBlock(a, b){
	if(!inBounds(a, b)){ return; }
	
	var t = ww.bmap[a, b];
	
	
	//visual break effects
	if(!ww.makeWorld){
		if(t == imgBlock){
			for(var i=0; i<15; i++){
				instance_create_depth(a * 50 + irandom_range(10, 40), b * 50 + irandom_range(10, 40), -5000, effLeaf);
			}
		}
	}
	
	ww.bmap[a, b] = noone;
}