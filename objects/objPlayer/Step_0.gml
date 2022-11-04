event_inherited();
if(actCD > 0){ actCD --; }

if(ww.nodes > 0 || ww.tasks > 0){ return; }
if(ww.screenTitle != noone){ return; }

xm = floor(mouse_x / 50);
ym = floor(mouse_y / 50);
if(xm != xmOld || ym != ymOld){
	setMouseover();
	
	xmOld = xm; ymOld = ym;
}

if(ww.screenOther != noone){ return; }

chargedEnchant = false;


canMove = (xs * 50) + 25 == x && (ys * 50) + 25 == y;
if(actCD > 0){ canMove = false; }

pressingRight = false;
pressingLeft = false;
pressingUp = false;
pressingDown = false;
pressingPass = false;

var kbArrows = 0;

if(keyboard_check(vk_right) || keyboard_check(ord("D"))){
	face = 1;
	pressingRight = true;
	kbArrows ++;
}
if(keyboard_check(vk_left) || keyboard_check(ord("A"))){
	face = -1;
	pressingLeft = true;
	kbArrows ++;
}
if(keyboard_check(vk_up) || keyboard_check(ord("W"))){
	pressingUp = true;
	kbArrows ++;
}
if(keyboard_check(vk_down) || keyboard_check(ord("S"))){
	pressingDown = true;
	kbArrows ++;
}

if(keyboard_check_pressed(vk_space)){
	pressingPass = true;
}

if(keyboard_check_pressed(vk_backspace)){
	debug = !debug;
	if(debug){ 
		hp = mhp; mp = mmp; 
		keys = 10; bombs = 10; potions = 10; stars = 10; coins = 99;
		skillPoints = 100;
	}
}

if(debug && keyboard_check_pressed(vk_f1)){
	nextRoom("");
}

if(debug && keyboard_check_pressed(vk_f2)){
	for(var i=0; i<20; i++){ placeFreeBlock(60); }
}

if(keyboard_check_pressed(ord("B"))){ useBomb(); }
if(keyboard_check_pressed(ord("P"))){ usePotion(); }
if(keyboard_check(ord("K"))){ useStar(1); }
if(keyboard_check(ord("L"))){ useStar(2); }

if(kbArrows > 1){ canMove = false; }




casting = 0;
if(spellLevel[1] > 0 && mp >= spellCost[1] && keyboard_check(ord("1")) && xm < 19){
	casting = 1; canMove = false;
	getBoltTargets();
}


if(mouse_check_button_pressed(mb_left) || kbArrows == 1){
	if(casting == 1){
		mp -= spellCost[casting];
		getBoltTargets();
		for(var i=0; i<ds_list_size(pc.xTars); i++){
			var a = ds_list_find_value(pc.xTars, i);
			var b = ds_list_find_value(pc.yTars, i);
		
			instance_create_depth(a * 50, b * 50, -5000, effWhiteFire);
			magicStrike(ww.mmap[a, b], pc, 1);
		}
		mouseReleased = false;
		actCD = 5;
	}
	
	
}






if(canMove){
	canAttack = mouseReleased;
	
	
	if(pressingPass){ movePlayer(0, 0); playerPassedTurn(); }
	if(pressingUp){ movePlayer(0, -1); }
	if(pressingRight){ movePlayer(1, 0); }
	if(pressingDown){ movePlayer(0, 1); }
	if(pressingLeft){ movePlayer(-1, 0); }
	
	if(mouse_check_button(mb_left)){
		
		if(xm >= 0 && ym >= 0 && xm < ww.WIDTH && ym < ww.HEIGHT
			&& (xm != xs || ym != ys)
		){
			if(abs(xs - xm) + abs(ys - ym) == 1){
				if(abs(xm - xs) + abs(ym - ys) != 1){ canAttack = false; }
				movePlayer(xm - xs, ym - ys);
			} else {
				pathFind(xs, ys, xm, ym, true);
				if(xGo == -1){
					pathFind(xs, ys, xm, ym, false);
				}
				if(abs(xm - xs) + abs(ym - ys) != 1){ canAttack = false; }
				movePlayer(xGo - xs, yGo - ys);
			}
		}
		
		
		if(xm == 21 && ym == 7){ useStar(1); }
		if(xm == 22 && ym == 7){ useStar(2); }
	
		
		
	}
	
	if(mouse_check_button_pressed(mb_left)){
		if(xm >= 21 && xm <= 22 && ym == 8){
			useBomb();
		}
	}
	
	if(mouse_check_button_pressed(mb_left)){
		if(xm >= 23 && xm <= 24 && ym == 8){
			usePotion();
		}
	}
	
	
	
	
}





enter = "";
if(ww.imap[xs, ys] != noone){
	if(ww.imap[xs, ys].isGear){
		enter = "gear";
	}
}
if(ww.bmap[xs, ys] == 29){ enter = "exit"; }
if(ww.bmap[xs, ys] == 28 && debug){ enter = "exit"; }

if(keyboard_check_pressed(vk_enter) || mouse_check_button_pressed(mb_right)){
	if(enter == "exit"){ 
		skillPoints ++;
		ww.screenOther = instance_create_depth(0, 0, -7500, objBetweenScreen);
	}
	if(enter == "gear"){ 
		equipMenu(ww.imap[xs, ys]); 
		//ww.imap[xs, ys] = noone;
	}
}

if(!chargedEnchant){ enchantTime = 0; }
mouseReleased = !mouse_check_button(mb_left);