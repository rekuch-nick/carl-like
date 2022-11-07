function enchantGear(n){
	
	if(ww.screenOther == noone){
		for(var i=0; i<30; i++){
			instance_create_depth(pc.x + irandom_range(-25, 25), pc.y + irandom_range(-25, 25), -5000, effCoinSpark);
		}
	}
	
	
	
	if(n == 1){
		pc.wep.bonus ++;
		gearSetStats(pc.wep);
		
		
	}
	
	if(n == 2){
		pc.arm.bonus ++;
		gearSetStats(pc.arm);
		
	}
	
	if(n == 3){
		pc.rng.bonus ++;
		gearSetStats(pc.rng);
		
		
	}
	
	
	setPlayerStats();
}