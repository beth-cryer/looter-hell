hpmax = global.level*100;
capacity = global.level*300;
chargerate = global.level*10;
delay = 4;
shieldbreak = 0;

global.hp = hpmax;
global.shield = capacity;

basespeed = 3;
mspeed = basespeed;
dspeed = basespeed*2;

image_speed = 0;
image_index = 0;

texture = texCamo;

equipped = -1;
canmove = true;
moving = false;
canshoot = true;
shoot = 0;
reloading = false;
reloadtime = 0;
burstcount = 0;
sfx_reload = 0;

offscreenx = 0;
offscreeny = 0;

skill = "Dash";
cool = room_speed;

skillactive = false;
skillcool = false;

vampire = 0;

body = 0;

fire = false;
frozen = false;
corrode = false;

xsc = -0.65;
ysc = 0.65;
xof = -4;
yof = 4;

hi = 0;

//create mag trackers
for(i=0; i<global.loadSlots; i+=1) {
    if (global.loadout[i] == -1) global.mag[i] = 0;
    else global.mag[i] = global.inventory[global.loadout[i],7];
}

l = -1;
for(j=0;j<global.loadSlots;j++) {
    if (global.loadout[j] != -1 and l == -1) l = j;
}

scrSwitchWep(l);

