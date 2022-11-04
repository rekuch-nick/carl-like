function spawnGear(t, a, b){
	
	if(t == noone){
		t = objSword;
		//var r = irandom_range(1, 6);
		var r = ww.tmap[a, b];
		var r2 = irandom_range(1, 100);
		
		
		
		var m = 8 + (floor(pc.stage / 5) * 2);
		m = clamp(m, 0, 10);
		
		while(r > m){ r -= m; }
		
		if(r == 1){ t = objSword; }
		if(r == 2){ t = objAxe; }
		if(r == 3){ t = objLance; }
		if(r == 4){ t = objMace; }
		if(r == 5){ t = objLeatherArmor; }
		if(r == 6){ t = objChainArmor; }
		if(r == 7){ t = objScaleArmor; }
		if(r == 8){ t = objPlateArmor; }
		if(r == 9){ t = objHealingRing; }
		if(r == 10){ t = objManaRing; }
		
	}
	
	
	if(a == -1){
		return;
	}
	
	if(ww.imap[a, b] != noone){
		return;
	}
	
	var item = instance_create_depth(a * 50, b * 50, -500 - b, t);
	item.bonus = ceil(pc.stage / 10);
	if(r2 >= 86){ item.bonus ++; }
	
	if(item.slot == "wep"){
		item.str += item.bonus;
		if(item.bonus >= 5){
			item.textColor = c_green;
		}
	}
	
	if(item.slot == "arm"){
		item.hp += item.bonus * 10;
	}
	
	if(item.slot == "rng"){
		item.bonus = 0;
	}
	
	ww.imap[a, b] = item;

}