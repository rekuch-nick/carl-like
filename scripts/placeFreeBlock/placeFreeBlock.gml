function placeFreeBlock(n){
	
	var ok = false;
	do {
		ok = false;
		var a = irandom_range(0, ww.WIDTH-1);
		var b = irandom_range(0, ww.HEIGHT-1);
		
		if(ww.bmap[a, b] == 0){ ok = true; }
		if(ww.fmap[a, b] > 9){ ok = false; }
		if(a == pc.xs && b == pc.ys){ ok = false; }
		
	} until (ok)
	
	ww.bmap[a, b] = n;
	setTileImages();

}