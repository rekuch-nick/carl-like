// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scaleMob(){
	
	var r = (pc.stage * 4) + 100;
	
	
	
	str = floor(str * r / 100);
	pow = floor(pow * r / 100);
	spd = floor(spd * r / 100);
	evd = floor(evd * r / 100);
	def = floor(def * r / 100);
	res = floor(res * r / 100);
	
	hp = floor(hp * r / 100);
	mhp = floor(mhp * r / 100);
	mp = floor(mp * r / 100);
	mmp = floor(mmp * r / 100);
	
	heal = floor(heal * r / 100);
	
	
	
	
}