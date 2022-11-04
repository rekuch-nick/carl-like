




if(screenTitle != noone){
	if(keyboard_check_pressed(vk_enter)){
		instance_destroy(screenTitle);
		screenTitle = noone;
		//random_set_seed(ww.seed);
		//loadTRoll();
		//loadShops();
		nextRoom("");
	}
	
	return;
}


for(var i=0; i<50; i++){ worldGenStep(); }
//for(var i=0; i<4; i++){ worldGenStep(); }
//if(irandom_range(0, 2) == 1){ worldGenStep(); }


