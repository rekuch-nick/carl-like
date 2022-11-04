// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function collectItemByImage(i){
	
	if(i == imgKey){
		pc.keys ++;
		return true;
	}
	
	if(i == imgBomb){
		pc.bombs ++;
		return true;
	}
	
	if(i == imgPotion){
		pc.potions ++;
		return true;
	}
	
	if(i == imgCoinSmaller){
		pc.coins ++;
		return true;
	}
	
	if(i == imgStar){
		pc.stars ++;
		return true;
	}
	
	if(i == imgCarrot){
		pc.carrots ++;
		var h = pc.mhp;
		setPlayerStats();
		pc.hp += pc.mhp - h;
		return true;
	}
	
	return false;

}