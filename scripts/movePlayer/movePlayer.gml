function movePlayer(xMove, yMove){
	passTime();
	pc.actCD = pc.debug ? 5 : 10;
	pc.actCD = 5; ///
	if(xMove == 1){ pc.face = 1; }
	if(xMove == -1){ pc.face = -1; }
	
	var a = pc.xs + xMove;
	var b = pc.ys + yMove;
	
	if(a < 0 || b < 0 || a >= ww.WIDTH || b >= ww.HEIGHT){ return false; }
	
	
	
	
	var mobThere = ww.mmap[a, b] != noone;
	if(mobThere){
		if(pc.canAttack){
			fight(ww.mmap[a, b], pc);
			playerPassedTurn();
		}
		return false;
	}
	
	var canStep = ww.bmap[a, b] < 50;
	if(ww.bmap[a, b] == 60){
		if(pc.canAttack && pc.keys > 0){
			openChest(a, b);
			nudgeSprite(pc, a, b);
		}
	}
	
	if(pc.debug){ canStep = true; }
	if(canStep){
		pc.xs = a; pc.ys = b;
		enterTile(pc, a, b);
		return true;
	}
	
}