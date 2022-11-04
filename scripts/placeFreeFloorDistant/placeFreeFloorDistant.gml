function placeFreeFloorDistant(n){
	
	var ok = false;
	var tries = 0;
	do {
		tries ++;
		ok = true;
		var a = irandom_range(0, ww.W-1);
		var b = irandom_range(0, ww.H-1);
		
		if(!tileUnimportant(ww.fmap[a, b])){ ok = false; }
		if(ww.bmap[a, b] != noone){ ok = false; }
		if(a == pc.xs && b == pc.ys){ ok = false; }
		
		var dis = abs(a - pc.xs) + abs(b - pc.ys);
		if(dis < 15){ ok = false; }
		
	
	if(tries > 10000){ return false; }
	} until (ok)
	
	ww.fmap[a, b] = n;
	return true;
}