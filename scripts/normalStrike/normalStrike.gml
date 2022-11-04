function normalStrike(c1, c2, note){
	
	
	var dam = c1.str;
	var isMagic = hasAbility(c1, "Magic");
	
	
	var trueDam = ceil(dam * ((100 - clamp(c2.def, 0, 100)) / 100));
	if(isMagic){ trueDam = dam; }
	
	var hitRoll = irandom_range(1, 100);
	var isHit = hitRoll > clamp(c2.evd, 0, 90);
	
	
	
	if(isHit || note == "no chain" || isMagic){
		trueDam = clamp(trueDam, 1, trueDam);
		c2.hp -= trueDam;
	
		if(hasAbility(c1, "Staggering")){ applyStatus(c2, "Slow", 1, false); }
		if(hasAbility(c1, "Poison")){ applyStatus(c2, "Poisoned", 1, false); }
		
		if(hasAbility(c1, "Mana Burn")){
			//c2.mp = clamp(c2.mp - dam, 0, c2.mmp);
			c2.mp = 0;
		}
		
	
		if(note != "no chain"){
			if(hasAbility(c1, "Cleave")){ cleave(c1, c2); }
		
			if(hasAbility(c1, "Pierce")){
				var a = c2.xs; var b = c2.ys;
				if(a < c1.xs){ a --; }
				else if(a > c1.xs){ a ++; }
				else if(b > c1.ys){ b ++; }
				else if(b < c1.ys){ b --; }
			
				var m = mobAt(a, b);
				if(m != noone){ normalStrike(c1, m, "no chain"); }
			
			}
		
		
		}
		
		
		
	} else {
		var i = instance_create_depth(c1.x, c1.y, -5000, effText);
		i.text = "DODGE";
		if(c1.isPlayer){
			i.text = "MISS";
			i.y -= 25
		}
		
		
		
		
	}
}


