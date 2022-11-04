function resolveSwitches(){
	
	var switches = 0;
	for(var a=0; a<ww.W; a++){ for(var b=0; b<ww.H; b++){
		if(ww.fmap[a, b] == imgSwitchUp){ switches ++; }
	}}
	
	if(switches <= 0){
		for(var a=0; a<ww.W; a++){ for(var b=0; b<ww.H; b++){
			if(ww.fmap[a, b] == imgExitSeal){
				ww.fmap[a, b] = imgExit;
			}
		}}
	}
}