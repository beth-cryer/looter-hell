//arguments: level, rarity, type, pickup?
ii = instance_create(x,y,objGun);
ii.lvlgen = argument0;
ii.rargen = argument1;
ii.typegen = argument2;
if (argument3 == 1) ii.pickup = true;