event_inherited();

hpmax = 300 * global.stageLevel;
hp = hpmax;
mspeed = 1;
ospeed = mspeed;
rate = 1;

dir = 0;
strafetime = 0;

image_xscale = -1;

scrNewGun(global.stageLevel,1,"");
bullets = mag;
nrate = rate/2;
if (bnum mod 2 == 0) nnum = bnum; else nnum = bnum+1;

nspread = bspread*1.5;
if (pattern==objPattern2) nspread = 20;
alarm[9] = room_speed/nrate;

xp = 40;
gold = 50;
metal = floor(random(10));
crystal = floor(random(10));

