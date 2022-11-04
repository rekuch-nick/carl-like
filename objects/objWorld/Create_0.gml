scale = 5;
room_speed = 30;
screenTitle = instance_create_depth(0, 0, -8000, objTitle);
screenOther = noone;
hud = instance_create_depth(19 * 50, 0, -7800, objHUD);



makeWorld = false;


W = 19;
H = 15;

bgc = #000000;


for(var a=0; a<ww.W; a++){ for(var b=0; b<ww.H; b++){
	ww.fmap[a, b] = imgGrass;
	ww.bmap[a, b] = imgBlock;
	ww.tmap[a, b] = irandom_range(1, 1000);
	ww.imap[a, b] = noone;
	ww.mmap[a, b] = noone;
}}
