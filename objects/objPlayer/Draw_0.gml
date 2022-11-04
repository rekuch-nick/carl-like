event_inherited();

if(enter != ""){
	var c = irandom_range(0, 1) == 1 ? c_white : c_yellow;
	draw_set_color(c);
	draw_set_halign(fa_center);
	var b = y + 30;
	if(b > room_height - 10){ b = y - 80; }
	draw_text(x, b, "Enter/\nRClick");
	
	draw_set_color(c_white);
	draw_set_halign(fa_left);
}