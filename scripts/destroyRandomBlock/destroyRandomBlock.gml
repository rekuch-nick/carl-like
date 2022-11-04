// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function destroyRandomBlock(n, replace){
	
	var ok = false;
	var a, b;
	var tries = 0;
	do {
		tries ++;
		ok = false;
		
		
		if(tries > 1000){ return; }
		a = irandom_range(0, ww.WIDTH-1);
		b = irandom_range(0, ww.HEIGHT-1);
		if(ww.bmap[a, b] == n){ ok = true; }
		if(a == pc.xs && b == pc.ys){ ok = false; }
		
		var adjSpace = 0;
		if(a > 0 && ww.bmap[a-1, b] < 50){ adjSpace ++; }
		if(a < ww.WIDTH-1 && ww.bmap[a+1, b] < 50){ adjSpace ++; }
		if(b > 0 && ww.bmap[a, b-1] < 50){ adjSpace ++; }
		if(b < ww.HEIGHT-1 && ww.bmap[a, b+1] < 50){ adjSpace ++; }
		
		if(adjSpace == 0){ ok = false; }
		
	} until (ok)

	destroyBlock(a, b);
	if(replace != -1){
		ww.bmap[a, b] = replace;
	}
	setTileImages();
}