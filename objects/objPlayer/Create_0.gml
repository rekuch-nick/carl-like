event_inherited();
debug = false;

skillPoints = 0;

xs = 0; ys = 0;
depth = -4000;

stage = 0;

triggerSwitch = true;
isPlayer = true;
collectItem = true;
drawHP = false;

xm = -1; ym = -1;
xmOld = xm;
ymOld = ym;
actCD = 0;
mouseReleased = true;
enter = "";
aniTimer = 0;

enchantTime = 0;
enchantTarget = 0;

spawnCD = 4; spawnCDMax = 4;

keys = 0;
bombs = 0;
potions = 0;
coins = 0;
eggs = 0;
stars = 0; 
for(var i=0; i<20; i++){ egg[0] = true; }
casting = 0;
xTars = ds_list_create();
yTars = ds_list_create();


str_l = 0;
pow_l = 0;
spd_l = 0;
evd_l = 0;
def_l = 0;
res_l = 0;
hp_l = 0;
mp_l = 0;

carrots = 0;

for(var i=0; i<7; i++){
	spellLevel[i] = 0;
	spellCost[i] = 0;
}

spellLevel_l[1] = 0;
spellLevel_l[2] = 0;
spellLevel_l[3] = 0;
spellLevel_l[4] = 0;
spellLevel_l[5] = 0;
spellLevel_l[6] = 0;

wep = noone;
arm = noone;
rng = noone;



setPlayerStats();
hp = mhp;
mp = mmp;


