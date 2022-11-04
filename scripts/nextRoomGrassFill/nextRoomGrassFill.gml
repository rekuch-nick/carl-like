function nextRoomGrassFill(){

	for(var a=0; a<ww.W; a++){
		for(var b=0; b<ww.H; b++){
			ww.fmap[a, b] = imgGrass;
			ww.bmap[a, b] = imgBlock;
			ww.tmap[a, b] = irandom_range(1, 1000);
		}
	}
}