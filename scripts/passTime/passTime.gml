function passTime(){
	pc.xmOld = -1; // reset mouseover text on next player frame
	
	pc.spawnCD --;
	if(pc.spawnCD <= 0){
		pc.spawnCD = pc.spawnCDMax;
		
		spawnMonster(-1, -1, noone);
		
	}
	
	with(objCreature){
		healCD --;
		if(healCD < 1){
			healCD = healCDMax;
			hp = clamp(hp + heal, 0, mhp);
		}
		
		chargeCD --;
		if(chargeCD < 1){
			chargeCD = chargeCDMax;
			mp = clamp(mp + charge, 0, mmp);
		}
	}


}