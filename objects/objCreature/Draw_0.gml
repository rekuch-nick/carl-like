draw_self();

if(drawHP && hp < mhp){
	var x1 = x - 25;
	var x2 = x - 25 + (50 * (hp / mhp));
	if(x2 < x1){x2 = x1;}
	var y1 = y - 25;
	var y2 = y - 20;
	draw_rectangle_color(x1, y1, x2, y2, c_maroon, c_maroon, c_red, c_red, false);
}



if(drawHP && hasAbility(ww.mmap[xs, ys], "Slow")){
	draw_set_color(c_white);
	draw_text(x - 22, y, "S");
	draw_set_color(c_white);
} else if(drawHP && hasAbility(ww.mmap[xs, ys], "Fast")){
	draw_set_color(c_white);
	draw_text(x - 22, y, "F");
	draw_set_color(c_white);
} else if(drawHP){
	
	if(isFaster(pc, ww.mmap[xs, ys])){
		draw_set_color(c_white);
		draw_text(x - 22, y, "+");
		draw_set_color(c_white);
	}
}

