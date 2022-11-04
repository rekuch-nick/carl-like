function setPlayerStats(){
	
	
	
	pc.str = 4 + pc.str_l;
	pc.pow = 4 + pc.pow_l;
	pc.spd = 4 + pc.spd_l;
	pc.evd = 0 + pc.evd_l * 2;
	pc.def = 0 + pc.def_l * 2;
	pc.res = 0 + pc.res_l * 3;
	
	
	pc.mhp = 50 + pc.hp_l * 10 + pc.carrots * 5;
	
	
	
	pc.mmp = 20 + pc.mp_l * 5;
	
	
	pc.healCDMax = 10; 
	pc.heal = 0;
	pc.chargeCDMax = 10; 
	pc.charge = 0;
	
	
	
	pc.spellLevel[1] = 0 + pc.spellLevel_l[1];
	pc.spellLevel[2] = 0 + pc.spellLevel_l[2];
	pc.spellLevel[3] = 0 + pc.spellLevel_l[3];
	pc.spellLevel[4] = 0 + pc.spellLevel_l[4];
	pc.spellLevel[5] = 0 + pc.spellLevel_l[5];
	pc.spellLevel[6] = 0 + pc.spellLevel_l[6];
	
	pc.spellMax[1] = 5;
	pc.spellMax[2] = 3;
	pc.spellMax[3] = 3;
	pc.spellMax[4] = 3;
	pc.spellMax[5] = 3;
	pc.spellMax[6] = 3;
	
	pc.spellCost[1] = 12;
	pc.spellCost[2] = 6;
	pc.spellCost[3] = 6;
	pc.spellCost[4] = 6;
	pc.spellCost[5] = 36;
	pc.spellCost[6] = 24;
	
	
	
	
	if(pc.wep != noone){
		pc.str += pc.wep.str;
		pc.pow += pc.wep.pow;
		pc.spd += pc.wep.spd;
		pc.evd += pc.wep.evd;
		pc.def += pc.wep.def;
		pc.res += pc.wep.res;
		pc.mhp += pc.wep.hp;
		pc.mmp += pc.wep.mp;
		pc.heal += pc.wep.heal;
		pc.charge += pc.wep.charge;
		
		
	}
	
	if(pc.arm != noone){
		pc.str += pc.arm.str;
		pc.pow += pc.arm.pow;
		pc.spd += pc.arm.spd;
		pc.evd += pc.arm.evd;
		pc.def += pc.arm.def;
		pc.res += pc.arm.res;
		pc.mhp += pc.arm.hp;
		pc.mmp += pc.arm.mp;
		pc.heal += pc.arm.heal;
		pc.charge += pc.arm.charge;
		
	}
	
	if(pc.rng != noone){
		pc.str += pc.rng.str;
		pc.pow += pc.rng.pow;
		pc.spd += pc.rng.spd;
		pc.evd += pc.rng.evd;
		pc.def += pc.rng.def;
		pc.res += pc.rng.res;
		pc.mhp += pc.rng.hp;
		pc.mmp += pc.rng.mp;
		pc.heal += pc.rng.heal;
		pc.charge += pc.rng.charge;
		
	}
	
	
	
	pc.strCost = 1;
	pc.powCost = 1;
	pc.spdCost = 1;
	pc.evdCost = 1;
	pc.defCost = 1;
	pc.resCost = 1;
	pc.mpCost = 1;
	pc.hpCost = 1;
	
	pc.spell1Cost = 1;
	if(pc.spellLevel_l[1] >= 3){ pc.spell1Cost = 2; }
	
	pc.spell2Cost = 1;
	pc.spell3Cost = 1;
	pc.spell4Cost = 1;
	pc.spell5Cost = 1;
	pc.spell6Cost = 1;
	
	
	
	
	
	
	
	
	pc.c_str = c_white;
	pc.c_pow = c_white;
	pc.c_spd = c_white;
	pc.c_evd = c_white;
	pc.c_def = c_white;
	pc.c_res = c_white;
	
	
	
	
	pc.str = clamp(pc.str, 0, 1000);
	pc.pow = clamp(pc.pow, 0, 1000);
	pc.spd = clamp(pc.spd, 0, 1000);
	pc.evd = clamp(pc.evd, 0, 1000);
	pc.def = clamp(pc.def, 0, 1000);
	pc.res = clamp(pc.res, 0, 1000);
	
	

}