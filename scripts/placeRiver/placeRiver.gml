function placeRiver(){
	
	var xStart = irandom_range(3, ww.W - 4);
	var yStart = irandom_range(2, ww.H - 3);
	
	if(irandom_range(0, 1)){
		xStart = irandom_range(0, 1) ? 0 : ww.W - 1;
	} else {
		yStart = irandom_range(0, 1) ? 0 : ww.H - 1;
	}
	
	
	
	do {
		var ok = true;
		
		var xEnd = irandom_range(0, ww.W - 1);
		var yEnd = irandom_range(0, ww.H - 1);
	
		if(irandom_range(0, 1)){
			xEnd = irandom_range(0, 1) ? 0 : ww.W - 1;
		} else {
			yEnd = irandom_range(0, 1) ? 0 : ww.H - 1;
		}
		
		var dis = abs(xStart - xEnd) + abs(yStart - yEnd);
		if(dis < ww.W){ ok = false; }
		
		
		
	} until (ok);
	
	if(xStart == 0){ xStart --; }
	if(xStart == ww.W-1){ xStart ++; }
	if(yStart == 0){ yStart --; }
	if(yStart == ww.H-1){ yStart ++; }
	
	var a = xStart; var b = yStart;
	
	var tries = 0;
	while(a != xEnd || b != yEnd) {
		var ok = true; tries ++;
		
		var aa = a; var bb = b;
		if(irandom_range(0, 1)){
			var m = a < xEnd ? 1 : -1;
			//if(irandom_range(0, 150)){ m = -m; }
			aa = a + m;
			
		} else {
			var m = b < yEnd ? 1 : -1;
			//if(irandom_range(0, 150)){ m = -m; }
			bb = b + m;
		}
		
		
		
		if(tries > 5000){ break; }
		if(!inBounds(aa, bb)){ continue; }
		//if(ww.bmap[aa, bb] == 50 && ww.bmap[aa, bb] != 0){ ok = false; }
		if(!tileUnimportant(ww.fmap[aa, bb]) ){ ok = false; }
		//if(aa > a && aa > xEnd && irandom_range(1, 16) != 1){ okay = false; }
		//if(aa < a && aa < xEnd && irandom_range(1, 16) != 1){ okay = false; }
		//if(bb > b && bb > yEnd && irandom_range(1, 16) != 1){ okay = false; }
		//if(bb < b && bb < yEnd && irandom_range(1, 16) != 1){ okay = false; }
		
		
		
		if(ok){
			ww.fmap[aa, bb] = imgWater;
			ww.bmap[aa, bb] = noone;
			a = aa; b = bb;
		}
		
		
	}
	
	
	
	
}