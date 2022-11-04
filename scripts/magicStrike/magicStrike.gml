function magicStrike(target, caster, spell){

	if(target == noone){ return; }
	if(target == caster){ return; }
	
	var dam = caster.pow;
	
	if(spell == 1){ dam += caster.pow; }
	
	
	
	target.hp -= dam;

}