function getBoltTargetsAdd(a, b){

	if(a < 0 || b < 0 || a >= ww.WIDTH || b >= ww.HEIGHT){
		return;
	}

	ds_list_add(pc.xTars, a);
	ds_list_add(pc.yTars, b);
	
	
}