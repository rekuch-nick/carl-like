function getBoltTargets(){

	ds_list_clear(pc.xTars);
	ds_list_clear(pc.yTars);

	var xx = 0; var yy = 0;
	
	
	if(pc.pressingDown){
		yy ++;
	} else if (pc.pressingLeft){
		xx --;
		pc.face = xx;
	} else if (pc.pressingRight){
		xx ++;
		pc.face = xx;
	} else if (pc.pressingUp){
		yy --;
	} else if(abs(pc.x - mouse_x) >= abs(pc.y - mouse_y)) {
		xx = mouse_x >= pc.x ? 1 : -1;
		pc.face = xx;
	} else {
		yy = mouse_y >= pc.y ? 1 : -1;
	}
	
	
	var aa = pc.xs;
	var bb = pc.ys;
	

	getBoltTargetsAdd(aa + xx, bb + yy);
	getBoltTargetsAdd(aa + (xx * 2), bb + (yy * 2));

}