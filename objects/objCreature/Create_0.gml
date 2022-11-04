image_xscale = ww.scale;
image_yscale = ww.scale;

xs = floor(x / 50);
ys = floor(y / 50);

hp = 100; mhp = 100;
mp = 0; mmp = 0;
ally = false;

face = 1;

triggerSwitch = false;
isPlayer = false;
collectItem = false;
drawHP = true;

xGo = -1; yGo = -1;

hp = 6; mhp = 6;
mp = 10; mmp = 10;
str = 4;
pow = 4;
spd = 4;
evd = 0;
def = 0;
res = 0;
healCD = 10; healCDMax = 10; heal = 0;
chargeCD = 10; chargeCDMax = 10; charge = 0;

powers = ds_list_create();
//ds_list_add(powers, "First");
//ds_list_add(powers, "2nd");
//ds_list_add(powers, "3rd");


buffs = ds_map_create();
//ds_map_add(buffs, "Burn", 10);
//ds_map_add(buffs, "Fast", 2);

ammoOutSprite = noone;
shotRange = 0;
shotType = noone;

justStruck = false;