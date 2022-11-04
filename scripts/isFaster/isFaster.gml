function isFaster(c1, c2){
	
	var s1 = c1.spd;
	
	var s2 = c2.spd;
	
	if(hasAbility(c1, "Fast")){ s1 = 999999; }
	if(hasAbility(c1, "First")){ s1 = 999999; }
	
	if(hasAbility(c2, "Fast")){ s2 = 999999; }
	if(hasAbility(c2, "First")){ s2 = 999999; }
	
	if(hasAbility(c1, "Slow")){ s1 = -1; }
	if(hasAbility(c2, "Slow")){ s2 = -1; }
	
	if(s1 == s2){
		if(c1.isPlayer){ s1 --; }
		if(c2.isPlayer){ s2 --; }
	}
	
	return s1 > s2;
}