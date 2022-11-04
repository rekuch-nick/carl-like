// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enterTile(unit, a, b){
	
	if(unit.collectItem){
		if(ww.imap[a, b] != noone){
			if(collectItemByImage(ww.imap[a, b].sprite_index)){
				instance_destroy(ww.imap[a, b]);
				ww.imap[a, b] = noone;
			}
		}
		/*
		with(objItem){
			if(xs == unit.xs && ys == unit.ys){
				if(unit.isPlayer){
					if(collectItemByImage(sprite_index)){
						instance_destroy();
					}
				}
				
			}
		}*/
	}
	
	if(unit.triggerSwitch){
		if(ww.bmap[a, b] == 31){
			
			ww.upSwitches --;
			resolveSwitches();
			
			ww.bmap[a, b] = 30;
			setTileImages();
		}
	}
	
	
	if(unit.isPlayer){
		if(ww.fmap[a, b] == 25){
			revealRoom();
		}
	}
	
	
	
}