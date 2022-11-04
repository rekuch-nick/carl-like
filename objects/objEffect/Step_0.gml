

x += xs;
y += ys;

ys += grav;

image_angle += rot;

image_xscale += grow;
image_yscale += grow;

if(xFlip != 0){ if(irandom_range(1, xFlip) == 1){ xs = -xs; }}

if(flicker){
	image_alpha = random_range(.2, 1);
}

image_alpha -= fade;
if(image_alpha < 0){
	instance_destroy();
}

if(timeCD > 0){
	timeCD --;
	if(timeCD < 1){ instance_destroy(); }
}

if(x < 0 || y < 0 || x > room_width || y > room_height){
	instance_destroy();
}