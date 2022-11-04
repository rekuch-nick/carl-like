// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function resolveNode(){
	dc[1] = false; dc[2] = false; dc[3] = false; dc[4] = false;
	
	while(true){
	
		d = irandom_range(1, 4);
	
		var xt = xc;
		var yt = yc;
		var xm = xc;
		var ym = yc;
	
		if(d == 1 && !dc[d]){
			yt -= 2;
			ym -= 1;
		}
		if(d == 2 && !dc[d]){
			xt += 2;
			xm += 1;
		}
		if(d == 3 && !dc[d]){
			yt += 2;
			ym += 1;
		}
		if(d == 4 && !dc[d]){
			xt -= 2;
			xm -= 1;
		}
		dc[d] = true;
		
		if(xt >= 0 && yt >= 0 && xt < WIDTH && yt < HEIGHT){
			if(bmap[xt, yt] == 99){
				destroyBlock(xt, yt);
				destroyBlock(xm, ym);
				
				nodes --;
				xLast[mazeSteps] = xt;
				yLast[mazeSteps] = yt;
				mazeSteps ++;
				return;
			}
		}
		
		if(dc[1] && dc[2] && dc[3] && dc[4]){
			mazeSteps --;
			xc = xLast[mazeSteps];
			yc = yLast[mazeSteps];
			dc[1] = false; dc[2] = false; dc[3] = false; dc[4] = false;
		}
		
	}
	
	
	
}