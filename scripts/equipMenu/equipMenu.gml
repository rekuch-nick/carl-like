function equipMenu(item){
	
	if( (item.slot == "wep" && pc.wep == noone) ||
			(item.slot == "arm" && pc.arm == noone) ||
			(item.slot == "rng" && pc.rng == noone)
	){
		equip(item);
		ww.imap[pc.xs, pc.ys] = noone;
	} else {
		
		ww.screenOther = instance_create_depth(0, 0, -7500, objEquipScreen);
		ww.screenOther.item = item;
		pc.enter = "";
		
		
	}
	
	
	
	
	
	
	
	setPlayerStats();
}