function enterTile(unit, a, b){
	
	if(unit.collectItem){
		if(ww.imap[a, b] != noone){
			if(collectItemByImage(ww.imap[a, b].sprite_index)){
				instance_destroy(ww.imap[a, b]);
				ww.imap[a, b] = noone;
			}
		}
		
	}
	
	if(unit.triggerSwitch){
		if(ww.fmap[a, b] == imgSwitchUp){
			
			ww.fmap[a, b] = imgSwitchDown;
			resolveSwitches();
			
		}
	}
	
	
	if(unit.isPlayer){
		if(ww.fmap[a, b] == imgRoom){
			revealRoom();
		}
	}
	
	
	
}