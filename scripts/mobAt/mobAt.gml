function mobAt(a, b){
	if(a < 0 || b < 0 || a >= ww.WIDTH || b >= ww.HEIGHT){
		return noone;
	}
	return ww.mmap[a, b];
}