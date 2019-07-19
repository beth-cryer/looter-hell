event_inherited();

bossName = load_text("boss-cultist");
hpmax = scale(6000,2,global.stageLevel);
hp = hpmax;
mspeed = 1;
ospeed = mspeed;

timer_shoot[0] = 0;
timer_reload[0] = 0;
statept[0] = 0;
shootdir[0] = 0;

pts = 0;
state = 0;
phase = 0;

destx = -2;
desty = -2;

image_xscale = -1;
image_speed = 0;

xp = 120;
gold = 80;
metal = irandom_range(5,10);
crystal = irandom_range(15,25);

//SELECT STATE
alarm[9] = 1;

