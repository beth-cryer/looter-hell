event_inherited();

hpmax = scale(300,1,global.stageLevel);
hp = hpmax;
mspeed = 1;
ospeed = mspeed;
rate = 1;

image_xscale = -1;
image_speed = 0;

scrNewGun(global.stageLevel,1,scrGenGunType());
bullets = mag;
nrate = rate/2;

if (bnum mod 2 == 0) nnum = bnum; else nnum = bnum+1;
if (nnum > 4) nnum = 4;
if (bspread < 25) nspread = bspread*2; else nspread = bspread;

if (pattern==objPattern2) nspread = 10;
if (pattern==objPattern4) pattern = objPattern1;

scrEnemyDiffScale();

alarm[9] = room_speed/nrate;

scrGunPos();

xp = 30;
gold = 40;
metal = irandom(5);
crystal = irandom(5);

