function placeRoom(){
	
	
	do {
		var aa = irandom_range(0, ww.W - 5);
		var bb = irandom_range(0, ww.H - 5);
		
		var dis = abs(pc.xs - (aa + 2)) + abs(pc.ys - (bb + 2));
		
	} until (dis > 7 && (aa % 2 == 1 || bb % 2 == 1))
	
	for(var a=aa; a<aa+5; a++){
		for(var b=bb; b<bb+5; b++){
			ww.fmap[a, b] = imgRoom;
			ww.bmap[a, b] = noone;
		}
	}
	
	ww.xRoom = aa;
	ww.yRoom = bb;
	
	for(var a=0; a<5; a++){
		for(var b=0; b<5; b++){
			ww.fRoom[a, b] = imgGrass;
			ww.bRoom[a, b] = noone;
			ww.iRoom[a, b] = noone;
		}
	}
	
	var r = irandom_range(1, 2);
	
	if(r == 1){
		ww.bRoom[1, 1] = imgBlock;
		ww.bRoom[3, 1] = imgBlock;
		ww.bRoom[1, 3] = imgBlock;
		ww.bRoom[3, 3] = imgBlock;
		
		ww.iRoom[2, 2] = objCarrot;
	}
	
	if(r == 2){
		ww.bRoom[2, 1] = imgBlock;
		ww.bRoom[1, 2] = imgBlock;
		
		ww.bRoom[3, 2] = imgBlock;
		ww.bRoom[2, 3] = imgBlock;
		
		ww.iRoom[2, 2] = objCarrot;
	}

	

}