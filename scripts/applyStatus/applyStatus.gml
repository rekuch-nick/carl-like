function applyStatus(c, s, n, canStack){
	if(!hasAbility(c, s)){
		ds_map_add(c.buffs, s, n);
	} else {
		if(canStack){
			var nn = ds_map_find_value(c.buffs, s);
			ds_map_add(c.buffs, s, nn + n);
		}
	}
}