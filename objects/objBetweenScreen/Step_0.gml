

pressingExit = false;
buying1 = false;
buying2 = false;
buying3 = false;
buying4 = false;

stat1 = false;
stat2 = false;
stat3 = false;
stat4 = false;
stat5 = false;
stat6 = false;
stat7 = false;
stat8 = false;

spell1 = false;
spell2 = false;
spell3 = false;
spell4 = false;
spell5 = false;
spell6 = false;

if(mouse_check_button_pressed(mb_left)){
		if(pc.xm >= 16 && pc.xm <= 17 && pc.ym >= 1 && pc.ym <= 2){ pressingExit = true; }
		
		if(pc.xm >= 2 && pc.xm <= 4 && pc.ym == 13 ){ buying1 = true; }
		if(pc.xm >= 6 && pc.xm <= 8 && pc.ym == 13 ){ buying2 = true; }
		if(pc.xm >= 10 && pc.xm <= 12 && pc.ym == 13 ){ buying3 = true; }
		if(pc.xm >= 14 && pc.xm <= 16 && pc.ym == 13 ){ buying4 = true; }
		
		if(pc.xm >= 1 && pc.xm <= 9){
			if(pc.ym == 4){ stat1 = true; }
			if(pc.ym == 5){ stat2 = true; }
			if(pc.ym == 6){ stat3 = true; }
			if(pc.ym == 7){ stat4 = true; }
			if(pc.ym == 8){ stat5 = true; }
			if(pc.ym == 9){ stat6 = true; }
			if(pc.ym == 10){ stat7 = true; }
			if(pc.ym == 11){ stat8 = true; }
		}
		
		if(pc.xm >= 11 && pc.xm <= 17){
			if(pc.ym == 6){ spell1 = true; }
			if(pc.ym == 7){ spell2 = true; }
			if(pc.ym == 8){ spell3 = true; }
			if(pc.ym == 9){ spell4 = true; }
			if(pc.ym == 10){ spell5 = true; }
			if(pc.ym == 11){ spell6 = true; }
		}
}

if(keyboard_check_pressed(vk_enter)){ pressingExit = true; }





if(pressingExit){
	ww.screenOther = noone;
	instance_destroy();
	ww.makeWorld = true;
	pc.enter = "";
}

var i = 0;
if(buying1) { if(ww.shopItem[i] != noone && pc.coins >= ww.shopPrice[i]) {
	pc.coins -= ww.shopPrice[i];
	collectItemByImage(ww.shopItem[i]);
	ww.shopItem[i] = noone;
}}
i = 1;
if(buying2) { if(ww.shopItem[i] != noone && pc.coins >= ww.shopPrice[i]) {
	pc.coins -= ww.shopPrice[i];
	collectItemByImage(ww.shopItem[i]);
	ww.shopItem[i] = noone;
}}
i = 2;
if(buying3) { if(ww.shopItem[i] != noone && pc.coins >= ww.shopPrice[i]) {
	pc.coins -= ww.shopPrice[i];
	collectItemByImage(ww.shopItem[i]);
	ww.shopItem[i] = noone;
}}
i = 3;
if(buying4) { if(ww.shopItem[i] != noone && pc.coins >= ww.shopPrice[i]) {
	pc.coins -= ww.shopPrice[i];
	collectItemByImage(ww.shopItem[i]);
	ww.shopItem[i] = noone;
}}

if(stat1 && pc.skillPoints >= pc.strCost){ pc.str_l ++; pc.skillPoints -= pc.strCost; setPlayerStats(); }
if(stat2 && pc.skillPoints >= pc.powCost){ pc.pow_l ++; pc.skillPoints -= pc.powCost; setPlayerStats(); }
if(stat3 && pc.skillPoints >= pc.spdCost){ pc.spd_l ++; pc.skillPoints -= pc.spdCost; setPlayerStats(); }
if(stat4 && pc.skillPoints >= pc.evdCost){ pc.evd_l ++; pc.skillPoints -= pc.evdCost; setPlayerStats(); }
if(stat5 && pc.skillPoints >= pc.defCost){ pc.def_l ++; pc.skillPoints -= pc.defCost; setPlayerStats(); }
if(stat6 && pc.skillPoints >= pc.resCost){ pc.res_l ++; pc.skillPoints -= pc.resCost; setPlayerStats(); }
if(stat7 && pc.skillPoints >= pc.hpCost){ pc.hp_l ++; pc.skillPoints -= pc.hpCost; setPlayerStats(); }
if(stat8 && pc.skillPoints >= pc.mpCost){ pc.mp_l ++; pc.skillPoints -= pc.mpCost; setPlayerStats(); }


if(spell1 && pc.skillPoints >= pc.spell1Cost &&  pc.spellLevel_l[1] < pc.spellMax[1]){ pc.spellLevel_l[1] ++; pc.skillPoints -= pc.spell1Cost; setPlayerStats(); }
if(spell2 && pc.skillPoints >= pc.spell2Cost &&  pc.spellLevel_l[2] < pc.spellMax[2]){ pc.spellLevel_l[2] ++; pc.skillPoints -= pc.spell2Cost; setPlayerStats(); }
if(spell3 && pc.skillPoints >= pc.spell3Cost &&  pc.spellLevel_l[3] < pc.spellMax[3]){ pc.spellLevel_l[3] ++; pc.skillPoints -= pc.spell3Cost; setPlayerStats(); }
if(spell4 && pc.skillPoints >= pc.spell4Cost &&  pc.spellLevel_l[4] < pc.spellMax[4]){ pc.spellLevel_l[4] ++; pc.skillPoints -= pc.spell4Cost; setPlayerStats(); }
if(spell5 && pc.skillPoints >= pc.spell5Cost &&  pc.spellLevel_l[5] < pc.spellMax[5]){ pc.spellLevel_l[5] ++; pc.skillPoints -= pc.spell5Cost; setPlayerStats(); }
if(spell6 && pc.skillPoints >= pc.spell6Cost &&  pc.spellLevel_l[6] < pc.spellMax[6]){ pc.spellLevel_l[6] ++; pc.skillPoints -= pc.spell6Cost; setPlayerStats(); }