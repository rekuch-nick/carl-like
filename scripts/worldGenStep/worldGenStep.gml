function worldGenStep(){
	

	if(nodes > 0){
		
		mapCD --;
		if(mapCD < 1){
			mapCD = mapCDMax;
			resolveNode();
			setTileImages();
		
			if(nodes == 0){ ////
				tasks = 2;
				if(pc.stage > 1){
					tasks += irandom_range(0, 1 + floor(pc.stage / 20)) + floor(pc.stage / 10);
				}
				task = "exit";
			}
		
		
		}
	} else if(tasks > 0){
	
		if(task == "exit"){
			if(tasks > 1){
				placeFreeBlock(31);
				upSwitches ++;
				tasks --;
			} else {
				upSwitches = 0;
				for(var a=0; a<ww.WIDTH; a++){ for(var b=0; b<ww.HEIGHT; b++){
					if(ww.bmap[a, b] == 31){ upSwitches ++; }
				}}
				
				placeFreeBlock(28);
				tasks --;
				task = worldGenGetTask();
			}
		} else if (task == "remove block"){
			if(tasks > 1){ destroyRandomBlock(50, -1); }
			tasks --;
			if(tasks < 1){ task = worldGenGetTask(); }
		} else if (task == "floor items"){
			if(placeFloorItem(noone, -1, -1)){ tasks --; }
			if(tasks < 1){ task = worldGenGetTask(); }
		} else if (task == "spawn chests"){
			destroyRandomBlock(50, 60);
			tasks --;
			if(tasks < 1){ task = worldGenGetTask(); }
		}
	
	
	
	}





}