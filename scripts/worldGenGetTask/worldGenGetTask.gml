// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function worldGenGetTask(){
	
	
	if(ww.task == "exit"){
		ww.tasks = clamp(50 - (pc.stage * 2), 1, 40)
		//ww.tasks = 20; ///
		return "remove block";
	}
	
	if(ww.task == "remove block"){
		ww.tasks = irandom_range(4, 6);
		return "floor items";
	}
	
	if(ww.task == "floor items"){
		ww.tasks = irandom_range(0, 2);
		return "spawn chests";
	}
	
	
	
	return "";
	
}