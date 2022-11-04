if(firstFrame){
	if(item.slot == "wep"){ oldItem = pc.wep; }
	if(item.slot == "arm"){ oldItem = pc.arm; }
	if(item.slot == "rng"){ oldItem = pc.rng; }
	firstFrame = false;
}



//input


selected = 0;
if(mouse_y >= 150 && mouse_y <= 700){
	if(mouse_x >= 100 && mouse_x <= 450){
		selected = 1;
	}
	if(mouse_x >= 500 && mouse_x <= 850){
		selected = 2;
	}
}



if( (selected == 1 && mouse_check_button_pressed(mb_left) ) ||
		(keyboard_check_pressed(ord("1")) ) ){
	pc.actCD = 5;			
	ww.screenOther = noone;
	instance_destroy();
}

if( (selected == 2 && mouse_check_button_pressed(mb_left) ) ||
		(keyboard_check_pressed(ord("2")) ) ){
	equip(item);
	
	oldItem.isWorn = false;
	oldItem.x = pc.xs * 50;
	oldItem.y = pc.ys * 50;
	oldItem.depth = -500 - pc.ys;
	ww.imap[pc.xs, pc.ys] = oldItem;
	
	pc.actCD = 5;
	ww.screenOther = noone;
	instance_destroy();
}