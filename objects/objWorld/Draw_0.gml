draw_rectangle_color(0, 0, room_width, room_height, bgc, bgc, bgc, bgc, false);

for(var a=0; a<ww.W; a++){
	for(var b=0; b<ww.H; b++){
		
		if(ww.fmap[a, b] != noone){ draw_sprite_stretched(ww.fmap[a, b], 0, a*50, b*50, 50, 50); }
		
		if(ww.bmap[a, b] != noone){ 
			draw_sprite_stretched(ww.bmap[a, b], 0, a*50, b*50, 50, 50); 
			if(ww.bmap[a, b] == imgKillGate){ draw_text(a*50, b*50+10, string(ww.killsMax - ww.kills)); }
		}
		
	}
}


