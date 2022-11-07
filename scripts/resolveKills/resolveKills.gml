function resolveKills(n){
	ww.kills += n;
	if(ww.kills >= ww.killsMax){
		for(var a=0; a<ww.W; a++){ for(var b=0; b<ww.H; b++){
			if(ww.bmap[a, b] == imgKillGate){
				ww.bmap[a, b] = noone;
			}
		}}
	}
	
	
}