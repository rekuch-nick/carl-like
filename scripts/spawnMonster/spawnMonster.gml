function spawnMonster(a, b, t){
	
	if(t == noone){
		var r = irandom_range(1, 8);
		t = objGoon;
		if(r == 2){ t = objGrimp; }
		if(r == 3){ t = objWiz; }
		if(r == 4){ t = objMouth; }
		if(r == 5){ t = objBear; }
		if(r == 6){ t = objGhost; }
		if(r == 7){ t = objBat; }
		if(r == 8){ t = objShell; }
	}
	
	var tries = 0;
	while(a == -1 || b == -1){
		tries ++;
		if(tries > 100){ break; }
		
		var aa = irandom_range(0, ww.WIDTH - 1);
		var bb = irandom_range(0, ww.HEIGHT - 1);
		
		if(ww.bmap[aa, bb] >= 10){ continue; } // 50 ?
		if(ww.fmap[aa, bb] >= 25){ continue; } // 50 ?
		if(ww.mmap[aa, bb] != noone){ continue; }
		
		if(abs(pc.xs - aa) + abs(pc.ys - bb) < 2){ continue; }
		
		a = aa; b = bb;
	}
	
	if(a == -1 || t == noone){ return; }
	
	if(ww.mmap[a, b] == noone){
		var m = instance_create_depth(a * 50  + 25, b * 50 + 25, -3000 - b, t);
		ww.mmap[a, b] = m;
		
		
	}

}