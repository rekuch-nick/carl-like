draw_self();

draw_set_font(fntPlain);
draw_set_color(c_white);

var m = 290;
var per = m * (pc.hp / pc.mhp);
draw_rectangle_color(955, 7, 1245, 30, c_black, c_black, c_black, c_black, false);
draw_rectangle_color(955, 7, 955 + per, 30, c_maroon, c_maroon, c_red, c_red, false);
var s = "HP: " + string(pc.hp) + " / " + string(pc.mhp);
draw_text(960, 10, s);


var per = m * (pc.mp / pc.mmp);
draw_rectangle_color(955, 37, 1245, 60, c_black, c_black, c_black, c_black, false);
draw_rectangle_color(955, 37, 955 + per, 60, c_navy, c_navy, c_blue, c_blue, false);
s = "MP: " + string(pc.mp) + " / " + string(pc.mmp);
draw_text(960, 40, s);

if(pc.enchantTime > 0){ // / 58
	draw_rectangle_color(19 * 50 + 5, 5, 25 * 50 - 5, 50 + 15, c_black, c_black, c_black, c_black, false);
	var a = (19 * 50 + 5) + (pc.enchantTime * 5); // 25 * 50 - 5
	draw_rectangle_color(19 * 50 + 5, 5, a, 50 + 15, c_yellow, c_yellow, c_lime, c_lime, false);
	if(pc.enchantTarget == 1){
		draw_text(19 * 50 + 10, 15, "Enchanting \nWeapon...");
	} else {
		draw_text(19 * 50 + 10, 15, "Enchanting \nArmor...");
	}
}

draw_set_color(c_gray);
draw_text(960, 70, "STR");
draw_text(1110, 70, "POW");
draw_text(960, 115, "SPD");
draw_text(1110, 115, "EVD");
draw_text(960, 165, "DEF");
draw_text(1110, 165, "RES");

draw_set_color(pc.c_str); draw_text(1030, 70, string(pc.str));
draw_set_color(pc.c_pow); draw_text(1180, 70, string(pc.pow));
draw_set_color(pc.c_spd); draw_text(1030, 115, string(pc.spd));
draw_set_color(pc.c_evd); draw_text(1180, 115, string(pc.evd));
draw_set_color(pc.c_def); draw_text(1030, 165, string(pc.def));
draw_set_color(pc.c_res); draw_text(1180, 165, string(pc.res));


draw_set_color(c_gray);
draw_text(960, 215, "Depth:");
draw_set_color(c_white);
draw_text(1090, 215, pc.stage);




draw_sprite_stretched(imgCoin, 0, 955, 355, 40, 40);
draw_text(1000, 370, pc.coins);

draw_sprite_stretched(imgStar, 0, 1055, 355, 40, 40);
draw_text(1100, 370, pc.stars);

draw_sprite_stretched(imgEgg, 0, 1160, 355, 40, 40);
draw_text(1210, 370, pc.eggs);



draw_sprite_stretched(imgKey, 0, 950, 405, 40, 40);
draw_text(990, 420, pc.keys);

draw_sprite_stretched(imgBomb, 0, 1055, 405, 40, 40);
draw_text(1100, 420, pc.bombs);

draw_sprite_stretched(imgPotion, 0, 1160, 405, 40, 40);
draw_text(1210, 420, pc.potions);



for(var i=1; i<7; i++){
	var img = imgBlank;
	if(pc.spellLevel[i] > 0){ 
		img = imgBook; 
		if(pc.spellLevel[i] == 2){  img = imgBook2; }
		if(pc.spellLevel[i] == 3){  img = imgBook3; }
		if(pc.spellLevel[i] == 4){  img = imgBook4; }
		if(pc.spellLevel[i] >= 5){  img = imgBook5; }
	}
	var f = 1;
	if(pc.mp >= pc.spellCost[i]){ f = 0; }
	
	draw_sprite_stretched(img, f, (18 + i) * 50, 250, 50, 50);
	var c = f == 0 ? c_yellow : c_dkgray;
	draw_set_color(c);
	if(img != imgBlank){
		draw_text((18 + i) * 50 + 20, 260, i)
	}
	
}
draw_set_color(c_white);


pc.aniTimer ++; 
if(pc.aniTimer > 11){ pc.aniTimer = 0; }

if(pc.casting == 1){
	//draw_sprite_stretched(imgCastAim, pc.aniTimer, pc.xm * 50, pc.ym * 50, 50, 50);
	for(var i=0; i<ds_list_size(pc.xTars); i++){
		var a = ds_list_find_value(pc.xTars, i);
		var b = ds_list_find_value(pc.yTars, i);
		
		draw_sprite_stretched(imgCastAim, pc.aniTimer, a * 50, b * 50, 50, 50);
	}
}



if(mob != noone && ww.screenOther == noone){
	mouseText = "";
	draw_sprite_stretched(mob.sprite_index, 0, 1140, 460, 100, 100);
	var n = 175 * (mob.hp / mob.mhp);
	draw_rectangle_color(960, 460, 960 + n, 480, c_maroon, c_maroon, c_red, c_red, false);
	
	s = "SPD: " + string(mob.spd);
	draw_text(960, 486, s);
	s = "DMG: " + string(mob.str);
	draw_text(960, 509, s);
	
	var yy = 509 + 23;
	
	
	s = "";
	//for (var k = ds_map_find_first(mob.buffs); !is_undefined(k); k = ds_map_find_next(mob.buffs, k)) {
	//	var v = mob.buffs[? k];
	//	s += k + " ";
	//}
	for(var i=0; i<ds_list_size(mob.powers); i++){
		s = ds_list_find_value(mob.powers, i);
		draw_text(960, yy, s);
		yy += 23;
	}
	
	
} else {
	mouseText = "";
	if(pc.ym == 8){ // key, bomb, potion row
		if(pc.xm == 19 || pc.xm == 20){ mouseText = "key"; }
		if(pc.xm == 21 || pc.xm == 22){ mouseText = "bomb"; }
		if(pc.xm == 23 || pc.xm == 24){ mouseText = "potion"; }
	}
	if(pc.ym == 7){ // coin, star, egg row
		if(pc.xm == 19 || pc.xm == 20){ mouseText = "coin"; }
		if(pc.xm == 21 || pc.xm == 22){ mouseText = "star"; }
		if(pc.xm == 23 || pc.xm == 24){ mouseText = "egg"; }
	}
	if(pc.ym == 1){
		if(pc.xm >= 19 && pc.xm <=21){ mouseText = "str"; }
		if(pc.xm >= 22){ mouseText = "pow"; }
	}
	if(pc.ym == 2){
		if(pc.xm >= 19 && pc.xm <=21){ mouseText = "spd"; }
		if(pc.xm >= 22){ mouseText = "evd"; }
	}
	if(pc.ym == 3){
		if(pc.xm >= 19 && pc.xm <=21){ mouseText = "def"; }
		if(pc.xm >= 22){ mouseText = "res"; }
	}
}

drawMouseText(mouseText);




if(pc.ym == 6){
	showSlot = 0;
	if(pc.xm == 19 || pc.xm == 20){ if(pc.wep != noone) { showSlot = 1; }}
	if(pc.xm == 21 || pc.xm == 22){ if(pc.arm != noone) { showSlot = 2; }}
	if(pc.xm == 23 || pc.xm == 24){ if(pc.rng != noone) { showSlot = 3; }}
	
	if(showSlot != 0){
		drawEquipTooltip(showSlot);
	}
}


if(pc.debug){
	s = string(pc.xm) + ", " + string(pc.ym);
	draw_text(1100, 725, s);
	//draw_text(1100, 725, "DEBUG MODE");
	
}