if(instance_number(objScreen) > 0){ return; }


// snap to cords
var m = 5;
if(isPlayer && pc.debug){ m = 10; }
if(isPlayer){ m = 10; } ///
for(var i=0; i<m; i++){
	
	if(x < (xs * 50) + 25){ x ++; }
	if(y < (ys * 50) + 25){ y ++; }
	if(x > (xs * 50) + 25){ x --; }
	if(y > (ys * 50) + 25){ y --; }
}


if(face == 1){ if(image_xscale < 0){ image_xscale *= -1; }}
if(face == -1){ if(image_xscale > 0){ image_xscale *= -1; }}

if(hp < 1 && !isPlayer){ if(instance_number(objShot) < 1){
	
	if(ww.hud.mob == ww.mmap[xs, ys]){ ww.hud.mob = noone; }
	ww.mmap[xs, ys] = noone;
	instance_destroy();
}}