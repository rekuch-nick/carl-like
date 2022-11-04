// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function loadShops(){

	
	for(var i=0; i<4; i++){
		var r = irandom_range(1, 6);
		var t = imgKey;
		var cm = 5;
		
		if(r == 1){ t = imgStar; cm = 13; }
		if(r == 2){ t = imgCarrot; cm = 9; }
		if(r == 3){ t = imgPotion; cm = 16; }
		if(r == 4){ t = imgBomb; cm = 4; }
		
		var c = cm + irandom_range(0, 9);
		
		ww.shopItem[i] = t;
		ww.shopPrice[i] = c;
	}
}