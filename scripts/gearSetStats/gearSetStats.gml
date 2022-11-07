function gearSetStats(itm){
	var n = itm.bonus;
	var n = itm.bonus * itm.bonus;
	
	if(itm.slot == "wep"){
		itm.str = n;
	}
	
	if(itm.slot == "arm"){
		itm.hp = n * 10;
		
		itm.spd = itm.spd_b + clamp(n, n, -itm.spd_b);
		
		itm.spd = itm.evd_b + clamp(n*5, n, -itm.evd_b);
	}
	
	if(itm.slot == "rng"){
		if(itm.sprite_index = imgRingRed){
			itm.heal = 1 + n;
		}
		
		if(itm.sprite_index = imgRingBlue){
			itm.mp = 120 + (n * 20);
		}
	}


}