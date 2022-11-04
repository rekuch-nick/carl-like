// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function equip(item){
	
	if(item.slot == "wep"){
		//if(pc.wep != noone){ instance_destroy(pc.wep); }
		pc.wep = item;
		item.y = 300; item.x = 25 + (19 * 50);
		
	} else if (item.slot == "arm"){
		//if(pc.arm != noone){ instance_destroy(pc.arm); }
		pc.arm = item;
		item.y = 300; item.x = 25 + (21 * 50);
		
	} else if (item.slot == "rng"){
	//if(pc.rng != noone){ instance_destroy(pc.rng); }
		pc.rng = item;
		item.y = 300; item.x = 25 + (23 * 50);
		
		
	}
	
	item.isWorn = true;
	item.depth = ww.hud.depth - 1;
	
	
	setPlayerStats();
}