event_inherited();

bossName = load_text("boss-chaingun");
hpmax = scale(1500,1,global.stageLevel);
hp = hpmax;
mspeed = 1;
ospeed = mspeed;
rate = 1;

pdir = 1;
pangle = 0;

image_xscale = -1;
image_speed = 0;

scrNewGun(global.stageLevel,1,"Assault Rifle");
barrel = sprARBarrel5;

mag = 80;
bullets = mag;

//alter stats a little
pattern = objPattern1;
nrate = 12;
nnum = 2;
bspeed = 10;
nspread = 50;
reload = 1.5;

alarm[9] = room_speed/nrate;

scrGunPos();

xp = 80;
gold = 60;
metal = irandom_range(10,20);
crystal = irandom(10);

