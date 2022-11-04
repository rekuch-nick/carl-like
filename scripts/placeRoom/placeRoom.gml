function placeRoom(){
	
	
	do {
		var aa = irandom_range(0, ww.WIDTH - 5);
		var bb = irandom_range(0, ww.HEIGHT - 5);
		
		var dis = abs(pc.xs - (aa + 2)) + abs(pc.ys - (bb + 2));
		
	} until (dis > 7 && (aa % 2 == 1 || bb % 2 == 1))
	
	for(var a=aa; a<aa+5; a++){
		for(var b=bb; b<bb+5; b++){
			ww.fmap[a, b] = 25;
			ww.bmap[a, b] = 0;
		}
	}
	
	ww.xRoom = aa;
	ww.yRoom = bb;
	
	for(var a=0; a<5; a++){
		for(var b=0; b<5; b++){
			ww.fRoom[a, b] = 1;
			ww.bRoom[a, b] = 0;
		}
	}
	
	var r = irandom_range(1, 2);
	
	if(r == 1){
		ww.bRoom[1, 1] = 50;
		ww.bRoom[3, 1] = 50;
		ww.bRoom[1, 3] = 50;
		ww.bRoom[3, 3] = 50;
	}
	
	if(r == 2){
		ww.bRoom[2, 1] = 50;
		ww.bRoom[1, 2] = 50;
		ww.bRoom[2, 2] = 50;
		ww.bRoom[3, 2] = 50;
		ww.bRoom[2, 3] = 50;
	}

	

}