function cleave(c1, c2){
	
	for(var i=0; i<8; i++){
		if(i == 0){ var aa = pc.xs+1; var bb = pc.ys; }
		if(i == 1){ var aa = pc.xs-1; var bb = pc.ys; }
		if(i == 2){ var aa = pc.xs; var bb = pc.ys+1; }
		if(i == 3){ var aa = pc.xs; var bb = pc.ys-1; }
		if(i == 4){ var aa = pc.xs+1; var bb = pc.ys+1; }
		if(i == 5){ var aa = pc.xs+1; var bb = pc.ys-1; }
		if(i == 6){ var aa = pc.xs-1; var bb = pc.ys+1; }
		if(i == 7){ var aa = pc.xs-1; var bb = pc.ys-1; }
		
		if(aa >= 0 && bb >= 0 && aa < ww.W && bb < ww.H){
			if(ww.mmap[aa, bb] != noone && ww.mmap[aa, bb] != c1 && ww.mmap[aa, bb] != c2){
				var m = ww.mmap[aa, bb];
				
				if(!m.ally){ ///
					normalStrike(c1, m, "no chain");
				}
			}
			
			
		}
		
		
	}

}