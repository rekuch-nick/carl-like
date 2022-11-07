function passTime(){
	pc.xmOld = -1; // reset mouseover text on next player frame
	
	pc.spawnCD --;
	if(pc.spawnCD <= 0){
		
		
		
		with(objCreature){
			hp = clamp(hp + heal, 0, mhp);
			mp = clamp(mp + charge, 0, mmp);
		}
		
		
		
		
		
		
		
		pc.spawnCD = pc.spawnCDMax;
		
		spawnMonster(-1, -1, noone);
		
	}
	
	


}