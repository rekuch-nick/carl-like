function enchantGear(n){
	
	if(ww.screenOther == noone){
		for(var i=0; i<30; i++){
			instance_create_depth(pc.x + irandom_range(-25, 25), pc.y + irandom_range(-25, 25), -5000, effCoinSpark);
		}
	}
	
	if(n == 1){
		pc.wep.bonus ++;
		pc.wep.str ++;
		
		if(pc.wep.bonus >= 5){ pc.wep.textColor = c_green; }
	}
	
	if(n == 2){
		pc.arm.bonus ++;
		pc.arm.hp += 10;
		if(pc.arm.spd < 0){ pc.arm.spd ++; }
		if(pc.arm.evd < 0){ pc.arm.evd += 5; }
		
		if(pc.arm.bonus >= 5){ pc.wep.textColor = c_green; }
	}
	
	
	
	setPlayerStats();
}