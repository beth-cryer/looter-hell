event_inherited();

hpmax = scale(150,1,global.stageLevel);
hp = hpmax;
mspeed = 3;
ospeed = mspeed;
damage = 20 * global.stageLevel;
rate = 1;

switch(choose(0,1)) {
case(0): sprite_index = sprBanditRunner; break;
case(1): sprite_index = sprBanditRunner2; break;
}

image_xscale = -1;

xp = 15;
gold = 30;
metal = floor(random(5));
crystal = 0;

