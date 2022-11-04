function useBomb(){

	if(pc.bombs > 0){
		pc.bombs --;
		for(var a=pc.xs-1; a<=pc.xs+1; a++){
			for(var b=pc.ys-1; b<=pc.ys+1; b++){
				bombBlast(a, b);
			}
		}
	}

}