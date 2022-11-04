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
		a = irandom_range(0, ww.W-1);
		b = irandom_range(0, ww.H-1);
		if(ww.bmap[a, b] == n){ ok = true; }
		if(a == pc.xs && b == pc.ys){ ok = false; }
		
		var adjSpace = 0;
		if(a > 0 && ww.bmap[a-1, b] == noone){ adjSpace ++; }
		if(a < ww.W-1 && ww.bmap[a+1, b] == noone){ adjSpace ++; }
		if(b > 0 && ww.bmap[a, b-1] == noone){ adjSpace ++; }
		if(b < ww.H-1 && ww.bmap[a, b+1] == noone){ adjSpace ++; }
		
		if(adjSpace == 0){ ok = false; }
		
	} until (ok)

	destroyBlock(a, b);
	if(replace != -1){
		ww.bmap[a, b] = replace;
	}
	
}