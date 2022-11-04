function placeFreeBlock(n){
	
	var ok = false;
	var tries = 0;
	do {
		tries ++;
		ok = true;
		var a = irandom_range(0, ww.W-1);
		var b = irandom_range(0, ww.H-1);
		
		if(!tileUnimportant(ww.fmap[a, b])){ ok = false; }
		if(!tileUnimportant(ww.bmap[a, b])){ ok = false; }
		if(a == pc.xs && b == pc.ys){ ok = false; }
		
	
	if(tries > 10000){ return false; }
	} until (ok)
	
	ww.bmap[a, b] = n;
	return true;
}