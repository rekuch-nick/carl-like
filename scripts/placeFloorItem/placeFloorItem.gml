function placeFloorItem(t, a, b){
	
	if(a == -1){
		var tries = 0;
		while(true){
			tries ++;
			a = irandom_range(0, ww.WIDTH - 1);
			b = irandom_range(0, ww.HEIGHT - 1);
			
			
			if(ww.bmap[a, b] < 10 && ww.imap[a, b] == noone && ww.fmap[a, b] < 25){
				break;
			}
			
			if(tries > 2000){ return true; }
		}
	}
	
	
	if(t == noone){
		var r = irandom_range(1, 100);
		t = objCoin;
		if(r >= 99){ t = objStar; }
		if(r >= 90 && r <= 94){ t = objPotion; }
		if(r >= 80 && r <= 85){ t = objCarrot; }
		if(r >= 70 && r <= 79){ t = objKey; }
		if(r >= 60 && r <= 69){ t = objBomb; }
		
		
	}
	
	if(a == -1 || b = -1){ return false; }
	if(ww.bmap[a, b] > 10){ return false; }
	
	if(ww.imap[a, b] != noone){ return false; }
	
	
	var item = instance_create_depth(a * 50, b * 50, -500 - b, t);
	item.xs = a; item.ys = b;
	ww.imap[a, b] = item;
	
	for(var i=0; i<15; i++){
		instance_create_depth(a * 50 + irandom_range(10, 40), b * 50 + irandom_range(10, 40), -5000, effCoinSpark);
	}
	
	
	return true;
}