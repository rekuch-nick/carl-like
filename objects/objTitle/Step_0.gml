




if(keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"))){
	ww.seed ++;
}

if(keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))){
	ww.seed --;
}

if(keyboard_check(vk_shift)){
	if(keyboard_check(vk_up) || keyboard_check_pressed(ord("W"))){
		ww.seed ++;
	}

	if(keyboard_check(vk_down) || keyboard_check_pressed(ord("S"))){
		ww.seed --;
	}	
}

if(keyboard_check(vk_control)){
	if(keyboard_check(vk_up) || keyboard_check_pressed(ord("W"))){
		ww.seed += 10;
	}

	if(keyboard_check(vk_down) || keyboard_check_pressed(ord("S"))){
		ww.seed -= 10;
	}	
}


if(keyboard_check_pressed(vk_enter)){
	ww.makeWorld = true;
	ww.screenTitle = noone;
	instance_destroy();
}