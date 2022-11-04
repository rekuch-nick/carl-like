// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function nextRoom(note){
	
	var n = ww.seed;
	
	random_set_seed(n);
	
	for(var i=0; i<pc.stage; i++){
		//show_debug_message( irandom_range(0, 1000) );
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
		if(pc.xs < ww.WIDTH / 2){
			pc.xs ++;
		} else {
			pc.xs --;
		}
	}
	
	if(pc.ys % 2 != 0){
		if(pc.ys < ww.HEIGHT / 2){
			pc.ys ++;
		} else {
			pc.ys --;
		}
	}
	
	pc.x = pc.xs * 50 + 25;
	pc.y = pc.ys * 50 + 25;
	
	
	for(var a=0; a<ww.WIDTH; a++){
		for(var b=0; b<ww.HEIGHT; b++){
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
	for(var a=0; a<ww.WIDTH; a++){
		for(var b=0; b<ww.HEIGHT; b++){
			ww.imap[a, b] = noone;
		}
	}
	
	
	
	nextRoomGrassFill();
	
	if(pc.stage % 2 == 0 && pc.stage > 3){ placeRoom(); }
	if(pc.stage > 0 && irandom_range(0, 4) < 100){ placeRiver(); }
	
	loadNodes();
	loadTRoll();
	loadShops();
	setTileImages();
	
	
	
	
	
}