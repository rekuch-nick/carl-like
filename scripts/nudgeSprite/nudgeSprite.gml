// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function nudgeSprite(c, a, b){
	
	if(a > c.xs){ c.x += 20; }
	if(a < c.xs){ c.x -= 20; }
	
	if(b > c.ys){ c.y += 20; }
	if(b < c.ys){ c.y -= 20; }

}