function loadNodes(){
	for(var a=0; a<ww.WIDTH; a+=2){
		for(var b=0; b<ww.HEIGHT; b+=2){
			
			if(ww.fmap[a, b] != 25){
			
				if(ww.bmap[a, b] != 99){ ww.nodes ++; }
				ww.bmap[a, b] = 99;
				
			}
		}
	}
}




