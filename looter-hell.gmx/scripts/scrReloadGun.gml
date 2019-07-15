//reload x amount
//reload all if arg1 == 0
if (argument1 > 0)
global.mag[argument0] += argument1;
else
global.mag[argument0] = global.inventory[global.loadout[argument0],7];

burstcount = 0;
reloading = false;
reloadtime = 0;
