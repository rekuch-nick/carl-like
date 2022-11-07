function useStar(n){
	
	if(pc.stars < 1){ pc.enchantTime = 0; return; }
	
	if(pc.enchantTime == 0){
		
		pc.enchantTarget = n;
	} else if (pc.enchantTarget != n) {
		pc.enchantTime = 0; return;
	}
	
	if(n == 1 && pc.wep == noone){ pc.enchantTime = 0; return; }
	if(n == 2 && pc.arm == noone){ pc.enchantTime = 0; return; }
	if(n == 3 && pc.rng == noone){ pc.enchantTime = 0; return; }
	
	chargedEnchant = true;
	pc.enchantTime ++;
	
	if(pc.enchantTime > 58){
		pc.stars --;
		pc.enchantTime = 0;
		pc.actCD = 10;
		
		enchantGear(n);
		
		
		
		
		
	}
	
	
}