scale = 5;
room_speed = 30;
screenTitle = instance_create_depth(0, 0, -8000, objTitle);
screenOther = noone;
hud = instance_create_depth(19 * 50, 0, -7800, objHUD);

// mazegen variables
nodes = 0;
tasks = 0;
task = "";
xc = 0; yc = 0;
xLast[0] = xc;
yLast[0] = yc;
mazeSteps = 1;
mapCD = 0;
mapCDMax = 0;
tRollIndex = 0;
for(var i=0; i<1000; i++){ tRoll[i] = 0; }


WIDTH = 19;
HEIGHT = 15;

upSwitches = 0;




nextRoomGrassFill();
for(var a=0; a<ww.WIDTH; a++){
	for(var b=0; b<ww.HEIGHT; b++){
		fTileMap[a, b] = instance_create_depth(a * 50, b * 50, 0 - b, objTile);
		fTileMap[a, b].image_xscale = scale;
		fTileMap[a, b].image_yscale = scale;
		bTileMap[a, b] = instance_create_depth(a * 50, b * 50, -100 - b - 100, objTile);
		bTileMap[a, b].image_xscale = scale;
		bTileMap[a, b].image_yscale = scale;
		
		mmap[a, b] = noone;
		imap[a, b] = noone;
	}
}

//loadNodes();
setTileImages();