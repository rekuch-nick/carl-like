function usePotion(){

	if(pc.potions > 0){
		pc.potions --;
		pc.hp = pc.mhp;
		
		instance_create_depth(pc.x, pc.y - 20, -5000, effHeart);
		instance_create_depth(pc.x-5, pc.y - 15, -5000, effHeart);
		instance_create_depth(pc.x-10, pc.y - 10, -5000, effHeart);
	}
	
	
}