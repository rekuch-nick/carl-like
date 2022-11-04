function drawEquipTooltip(slot){
	
	draw_rectangle_color(100, 200, 450, 700, c_navy, c_navy, c_navy, c_navy, false);
	
	
	var itm = noone;
	var i = 0;
	if(slot == 1){ itm = pc.wep; }
	if(slot == 2){ itm = pc.arm; }
	if(slot == 3){ itm = pc.rng; }
	
	var s = itm.nameText;
	if(itm.bonus > 0){ s = "+" + string(itm.bonus) + " " + s; }
	draw_set_color(itm.nameColor);
	draw_set_halign(fa_center);
	draw_text(275 + (i * 400), 215, s);
	draw_set_color(c_white);
	var b = 270;
	var bb = 30;
	
	
	if(itm.str != 0){
		s = itm.str > 0 ? "+" : "";
		s += string(itm.str) + " STR";
		
		draw_text(275 + (i * 400), b, s);
		b += bb;
	}
	if(itm.pow != 0){
		s = itm.pow > 0 ? "+" : "";
		s += string(itm.pow) + " POW";
		
		draw_text(275 + (i * 400), b, s);
		b += bb;
	}
	if(itm.spd != 0){
		s = itm.spd > 0 ? "+" : "";
		s += string(itm.spd) + " SPD";
		
		draw_text(275 + (i * 400), b, s);
		b += bb;
	}
	if(itm.evd != 0){
		s = itm.evd > 0 ? "+" : "";
		s += string(itm.evd) + " EVD";
		
		draw_text(275 + (i * 400), b, s);
		b += bb;
	}
	if(itm.def != 0){
		s = itm.def > 0 ? "+" : "";
		s += string(itm.def) + " DEF";
		
		draw_text(275 + (i * 400), b, s);
		b += bb;
	}
	if(itm.res != 0){
		s = itm.res > 0 ? "+" : "";
		s += string(itm.res) + " REF";
		
		draw_text(275 + (i * 400), b, s);
		b += bb;
	}
	if(itm.hp != 0){
		s = itm.hp > 0 ? "+" : "";
		s += string(itm.hp) + " HP";
		
		draw_text(275 + (i * 400), b, s);
		b += bb;
	}
	if(itm.mp != 0){
		s = itm.mp > 0 ? "+" : "";
		s += string(itm.mp) + " MP";
		
		draw_text(275 + (i * 400), b, s);
		b += bb;
	}
	for(var j=0; j<ds_list_size(itm.traits); j++){
		s = ds_list_find_value(itm.traits, j)
		draw_text(275 + (i * 400), b, s);
		b += bb;
	}
	
	
	draw_sprite_stretched(itm.sprite_index, 0, 275 - 35 + (i * 400), 620, 70, 70);
	draw_set_halign(fa_left);

}