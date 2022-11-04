draw_self();
draw_set_color(c_white);




draw_sprite_stretched(imgCoinSmaller, 0, 25, 650, 50, 50);

for(var i=0; i<4; i++){
	if(ww.shopItem[i] != noone){
		draw_sprite_stretched(ww.shopItem[i], 0, (2 + (i * 4)) * 50, 650, 50, 50);
		draw_text((2 + (i * 4)) * 50 + 65, 665, "-" + string(ww.shopPrice[i]));
	}
}

draw_text(60, 68, "Points: " + string(pc.skillPoints));

var s = "Boost STR - " + string(pc.strCost) + " point";
s += pc.strCost > 1 ? "s" : "";
draw_text(60, 218, s);
if(pc.skillPoints < pc.strCost){
	draw_set_alpha(.4);
	draw_rectangle_color(1 * 50, 4 * 50, 10 * 50 - 1, 5 * 50 - 1, c_navy, c_black, c_black, c_navy, false);
	draw_set_alpha(1);
}

var s = "Boost POW - " + string(pc.powCost) + " point";
s += pc.powCost > 1 ? "s" : "";
draw_text(60, 268, s);
if(pc.skillPoints < pc.powCost){
	draw_set_alpha(.4);
	draw_rectangle_color(1 * 50, 5 * 50, 10 * 50 - 1, 6 * 50 - 1, c_navy, c_black, c_black, c_navy, false);
	draw_set_alpha(1);
}

var s = "Boost SPD - " + string(pc.spdCost) + " point";
s += pc.spdCost > 1 ? "s" : "";
draw_text(60, 318, s);
if(pc.skillPoints < pc.spdCost){
	draw_set_alpha(.4);
	draw_rectangle_color(1 * 50, 6 * 50, 10 * 50 - 1, 7 * 50 - 1, c_navy, c_black, c_black, c_navy, false);
	draw_set_alpha(1);
}

var s = "Boost EVD - " + string(pc.evdCost) + " point";
s += pc.evdCost > 1 ? "s" : "";
draw_text(60, 368, s);
if(pc.skillPoints < pc.evdCost){
	draw_set_alpha(.4);
	draw_rectangle_color(1 * 50, 7 * 50, 10 * 50 - 1, 8 * 50 - 1, c_navy, c_black, c_black, c_navy, false);
	draw_set_alpha(1);
}

var s = "Boost DEF - " + string(pc.defCost) + " point";
s += pc.defCost > 1 ? "s" : "";
draw_text(60, 418, s);
if(pc.skillPoints < pc.defCost){
	draw_set_alpha(.4);
	draw_rectangle_color(1 * 50, 8 * 50, 10 * 50 - 1, 9 * 50 - 1, c_navy, c_black, c_black, c_navy, false);
	draw_set_alpha(1);
}

var s = "Boost RES - " + string(pc.resCost) + " point";
s += pc.resCost > 1 ? "s" : "";
draw_text(60, 468, s);
if(pc.skillPoints < pc.resCost){
	draw_set_alpha(.4);
	draw_rectangle_color(1 * 50, 9 * 50, 10 * 50 - 1, 10 * 50 - 1, c_navy, c_black, c_black, c_navy, false);
	draw_set_alpha(1);
}

var s = "Boost HP - " + string(pc.hpCost) + " point";
s += pc.hpCost > 1 ? "s" : "";
draw_text(60, 518, s);
if(pc.skillPoints < pc.hpCost){
	draw_set_alpha(.4);
	draw_rectangle_color(1 * 50, 10 * 50, 10 * 50 - 1, 11 * 50 - 1, c_navy, c_black, c_black, c_navy, false);
	draw_set_alpha(1);
}
var s = "Boost MP - " + string(pc.mpCost) + " point";
s += pc.mpCost > 1 ? "s" : "";
draw_text(60, 568, s);
if(pc.skillPoints < pc.mpCost){
	draw_set_alpha(.4);
	draw_rectangle_color(1 * 50, 11 * 50, 10 * 50 - 1, 12 * 50 - 1, c_navy, c_black, c_black, c_navy, false);
	draw_set_alpha(1);
}


var s = "[1] - " + string(pc.spell1Cost) + " point";
s += pc.spell1Cost > 1 ? "s" : "";
draw_text(560, 318, s);
if(pc.skillPoints < pc.spell1Cost || pc.spellLevel_l[1] >= pc.spellMax[1]){
	draw_set_alpha(.4);
	draw_rectangle_color(11 * 50, 6 * 50, 18 * 50 - 1, 7 * 50 - 1, c_navy, c_black, c_black, c_navy, false);
	draw_set_alpha(1);
}

var s = "[2] - " + string(pc.spell2Cost) + " point";
s += pc.spell2Cost > 1 ? "s" : "";
draw_text(560, 368, s);
if(pc.skillPoints < pc.spell2Cost || pc.spellLevel_l[2] >= pc.spellMax[2]){
	draw_set_alpha(.4);
	draw_rectangle_color(11 * 50, 7 * 50, 18 * 50 - 1, 8 * 50 - 1, c_navy, c_black, c_black, c_navy, false);
	draw_set_alpha(1);
}

var s = "[3] - " + string(pc.spell3Cost) + " point";
s += pc.spell3Cost > 1 ? "s" : "";
draw_text(560, 418, s);
if(pc.skillPoints < pc.spell3Cost || pc.spellLevel_l[3] >= pc.spellMax[3]){
	draw_set_alpha(.4);
	draw_rectangle_color(11 * 50, 8 * 50, 18 * 50 - 1, 9 * 50 - 1, c_navy, c_black, c_black, c_navy, false);
	draw_set_alpha(1);
}

var s = "[4] - " + string(pc.spell4Cost) + " point";
s += pc.spell4Cost > 1 ? "s" : "";
draw_text(560, 468, s);
if(pc.skillPoints < pc.spell4Cost || pc.spellLevel_l[4] >= pc.spellMax[4]){
	draw_set_alpha(.4);
	draw_rectangle_color(11 * 50, 9 * 50, 18 * 50 - 1, 10 * 50 - 1, c_navy, c_black, c_black, c_navy, false);
	draw_set_alpha(1);
}

var s = "[5] - " + string(pc.spell5Cost) + " point";
s += pc.spell5Cost > 1 ? "s" : "";
draw_text(560, 518, s);
if(pc.skillPoints < pc.spell5Cost || pc.spellLevel_l[5] >= pc.spellMax[5]){
	draw_set_alpha(.4);
	draw_rectangle_color(11 * 50, 10 * 50, 18 * 50 - 1, 11 * 50 - 1, c_navy, c_black, c_black, c_navy, false);
	draw_set_alpha(1);
}

var s = "[6] - " + string(pc.spell6Cost) + " point";
s += pc.spell6Cost > 1 ? "s" : "";
draw_text(560, 568, s);
if(pc.skillPoints < pc.spell6Cost || pc.spellLevel_l[6] >= pc.spellMax[6]){
	draw_set_alpha(.4);
	draw_rectangle_color(11 * 50, 11 * 50, 18 * 50 - 1, 12 * 50 - 1, c_navy, c_black, c_black, c_navy, false);
	draw_set_alpha(1);
}








