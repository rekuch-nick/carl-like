function revealRoom(){


	for(var aa=0; aa<5; aa++){
		for(var bb=0; bb<5; bb++){
			var a = ww.xRoom + aa;
			var b = ww.yRoom + bb;
			
			ww.fmap[a, b] = ww.fRoom[aa, bb];
			ww.bmap[a, b] = ww.bRoom[aa, bb];
		}
	}
	


}