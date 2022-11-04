if(firstFrame){
	if(target == "player"){
		var d = abs(pc.xs - xSpot) + abs(pc.ys - ySpot);
		dis = 50 * d;
		
		if(pc.xs > xSpot){ xs = spd; }
		if(pc.xs < xSpot){ xs = -spd; }
		if(pc.ys > ySpot){ ys = spd; }
		if(pc.ys < ySpot){ ys = -spd; }
	}
	
	firstFrame = false;
}




x += xs;
y += ys;
dis -= spd;

if(wob){ image_angle += irandom_range(-2, 2); }
image_angle += rot;

if(pc.actCD < 1){ pc.actCD = 1; }

if(dis < 1){
	
	if(target == "player"){
		for(var i=0; i<20; i++){
			instance_create_depth(x, y, depth, effSpark);
		}
		normalStrike(c1, c2, "Tooth");
	}
	
	instance_destroy();
}