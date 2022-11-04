function getRandomPoint(){
	
	var ok = false;
	var a, b;
	var tries = 0;
	do {
		tries ++;
		ok = false;
		
		if(tries > 1000){ return; }
		a = irandom_range(0, ww.W-1);
		b = irandom_range(0, ww.H-1);
		
		if(a == pc.xs && b == pc.ys){ ok = false; }
		
		
		
		//var adjSpace = 0;
		//if(a > 0 && ww.bmap[a-1, b] < 50){ adjSpace ++; }
		//if(a < ww.W-1 && ww.bmap[a+1, b] < 50){ adjSpace ++; }
		//if(b > 0 && ww.bmap[a, b-1] < 50){ adjSpace ++; }
		//if(b < ww.H-1 && ww.bmap[a, b+1] < 50){ adjSpace ++; }
		//if(adjSpace == 0){ ok = false; }
		
	} until (ok)
	


}