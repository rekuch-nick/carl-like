function openChest(a, b){
	pc.keys --;
	
	destroyBlock(a, b);
	
	spawnGear(noone, a, b);
	
	setTileImages();

}