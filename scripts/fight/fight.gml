function fight(c1, c2){
	if(c1 == noone || c2 == noone){ return; }
	

	
	if(isFaster(c1, c2)){
		
	} else {
		var temp = c1;
		c1 = c2;
		c2 = temp;
	}
	
	
	nudgeSprite(c1, c2.xs, c2.ys);
	normalStrike(c1, c2, "");
	c2.justStruck = true;
	
	
	if(c2.hp >= 1){
		nudgeSprite(c2, c1.xs, c1.ys);
		normalStrike(c2, c1, "");
		c1.justStruck = true;
	}
	
	
	
}