event_inherited();

hpmax = scale(250,1,global.stageLevel);
hp = hpmax;
mspeed = 1;
ospeed = mspeed;
rate = 1;

dir = 0;
strafetime = 0;

switch(choose(0,1)) {
case(0): sprite_index = sprBanditGunner; break;
case(1): sprite_index = sprBanditGunner2; break;
}

image_xscale = -1;

scrNewGun(global.stageLevel,1,scrGenGunType());
bullets = mag;

if (rate > 6) nrate = rate*0.5; else nrate = rate*0.75;
//if (bspread < 25) nspread = bspread*2; else nspread = bspread;
if (bnum mod 2 == 0) nnum = bnum; else nnum = bnum+1;

if (pattern==objPattern2) nspread = 10;
if (pattern==objPattern4) nspread = nnum*30; else nspread = nnum*15;

//DIFFICULTY SCALE
scrEnemyDiffScale();

alarm[9] = room_speed/nrate;

scrGunPos();

xp = 30;
gold = 40;
metal = irandom(5);
crystal = irandom(5);

