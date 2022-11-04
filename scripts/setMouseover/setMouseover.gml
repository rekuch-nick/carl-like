function setMouseover(){

	ww.hud.mob = noone;
	ww.hud.mobHPChange = 0;
	ww.hud.pcHPChange = 0;
	ww.hud.mpChange = 0;
	
	var a = pc.xm; var b = pc.ym;
	
	if(inBounds(a, b)){
		if(ww.mmap[a, b] != noone){
			ww.hud.mob = ww.mmap[a, b];
			
			if(abs(pc.xs - a) + abs(pc.ys - b) == 1){
				// combat preview
				
				//
				
				
				
			}
			
		}
	}
	

}