function decayBuff(c, s){
	
	if(hasAbility(c, s)){
		var n = ds_map_find_value(c.buffs, s);
		if(n == 1){
			ds_map_delete(c.buffs, s);
		} else {
			ds_map_add_list(c.buffs, s, n - 1);
		}
		
		
		
	}

}