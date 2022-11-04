function worldGen(){
	
	var n = ww.seed;
	
	random_set_seed(n);
	
	for(var i=0; i<pc.stage*pc.stage; i++){
		var j = irandom_range(0, 1000);
	}
	
	
	ww.hud.mob = noone;
	
	
	
	if(hasAbility(pc, "Poisoned")){
		decayBuff(pc, "Poisoned");
	} else {
		pc.hp = pc.mhp;
	}
	
	
	pc.mp = pc.mmp;
	pc.stage ++;
	
	if(pc.xs % 2 != 0){
		if(pc.xs < ww.W){
			pc.xs ++;
		} else {
			pc.xs --;
		}
	}
	
	if(pc.ys % 2 != 0){
		if(pc.ys < ww.H){
			pc.ys ++;
		} else {
			pc.ys --;
		}
	}
	
	pc.x = pc.xs * 50 + 25;
	pc.y = pc.ys * 50 + 25;
	
	
	for(var a=0; a<ww.W; a++){
		for(var b=0; b<ww.H; b++){
			if(ww.mmap[a, b] != noone){
				instance_destroy(ww.mmap[a, b]);
				ww.mmap[a, b] = noone;
			}
		}
	}
	with(objItem){ 
		if(!isWorn){
			instance_destroy(); 
		}
	}
	for(var a=0; a<ww.W; a++){
		for(var b=0; b<ww.H; b++){
			ww.imap[a, b] = noone;
		}
	}
	
	
	
	nextRoomGrassFill();
	bgc = #00A651;
	
	
	
	
	
	if(pc.stage > 0){
		
		
		worldGenMazeFrom(pc.xs, pc.ys);
		var spaces = 50 - (pc.stage*2);
		for(var i=0; i<spaces; i++){ destroyRandomBlock(imgBlock, noone); }
		var items = irandom_range(0, 3) + irandom_range(0, 3);
		for(var i=0; i<items; i++){ placeFloorItem(noone, -1, -1); }
		var chests = pc.stage % 2 != 1 ? irandom_range(1, 3) : 0;
		for(var i=0; i<chests; i++){ destroyRandomBlock(imgBlock, imgChest); }
		var switches = irandom_range(1, 2) + ceil(pc.stage / 7);
		for(var i=0; i<switches; i++){ placeFreeFloor(imgSwitchUp); }
		if(switches == 0){
			placeFreeFloorDistant(imgExit);
		} else {
			placeFreeFloorDistant(imgExitSeal);
		}
	}
	
	
	//if(pc.stage % 2 == 0 && pc.stage > 3){ placeRoom(); }
	//if(pc.stage > 0 && irandom_range(0, 4) < 100){ placeRiver(); }
	
	loadShops();
	
	randomize();
}