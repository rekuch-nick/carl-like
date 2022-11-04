function mobAt(a, b){
	if(a < 0 || b < 0 || a >= ww.W || b >= ww.H){
		return noone;
	}
	return ww.mmap[a, b];
}