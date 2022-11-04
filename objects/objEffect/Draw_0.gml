draw_self();

if(text != ""){
	draw_set_halign(fa_center);
	draw_set_color(textColor);
	draw_text(x, y, text);
	draw_set_halign(fa_left);
}