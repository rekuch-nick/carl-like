function bombBlast(a, b){
	
	if(a < 0 || b < 0 || a >= ww.W || b >= ww.H){
		return;
	}
	
	if(ww.bmap[a, b] >= 50 && ww.bmap[a, b] < 60){
		destroyBlock(a, b)
	}
	
	instance_create_depth(a * 50, b * 50, -5000, effBlast);
}