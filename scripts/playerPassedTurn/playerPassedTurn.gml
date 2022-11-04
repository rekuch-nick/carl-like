function playerPassedTurn(){
	
	with(objCreature){ if(!ally && !isPlayer){
		
		//shooting
		if(xs == pc.xs || ys == pc.ys){ if(!justStruck && shotType != noone) {
			
			if(sprite_index != ammoOutSprite){
		
				var cx = xs; var cy = ys;
				var ok = true;
				var dis = 0;
			
				while(cx != pc.xs || cy != pc.ys){
					if(cx != xs || cy != ys){ // don't check starting space
					
						if(cx < 0 || cy < 0 || cx >= ww.W || cy >= ww.H){
							ok = false;
							break;
						}
					
						if(ww.bmap[cx, cy] >= 50){
							ok = false;
							break;
						}
					
					
					}
				
					dis ++;
					if(cx < pc.xs){ cx ++; }
					if(cy < pc.ys){ cy ++; }
					if(cx > pc.xs){ cx --; }
					if(cy > pc.ys){ cy --; }
				
					if(dis > shotRange){ ok = false; break; }
				}
		
				if(ok){
					var s = instance_create_depth(x, y, -5000, shotType);
					s.c1 = ww.mmap[xs, ys];
					s.c2 = pc;
					if(ammoOutSprite != noone){ sprite_index = ammoOutSprite; }
					
				}
		
			}
		}}
	}}


	with(objCreature){ justStruck = false; }


}