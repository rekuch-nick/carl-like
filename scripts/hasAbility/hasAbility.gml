function hasAbility(c, s){
	
	
	
	for (var k = ds_map_find_first(c.buffs); !is_undefined(k); k = ds_map_find_next(c.buffs, k)) {
		//var v = mob.buffs[? k];
		if(k == s){ return true; }
	}
	for(var i=0; i<ds_list_size(c.powers); i++){
		var ss = ds_list_find_value(c.powers, i);
		if(s == ss){ return true; }
	}
	
	if(c.isPlayer){
		if(pc.wep != noone && listContains((pc.wep.traits), s)){ return true; }
		if(pc.arm != noone && listContains((pc.arm.traits), s)){ return true; }
		if(pc.rng != noone && listContains((pc.rng.traits), s)){ return true; }
	}
	


	return false;
}