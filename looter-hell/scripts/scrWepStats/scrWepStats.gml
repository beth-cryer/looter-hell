var o = argument0;
name = global.inventory[o,0]; //name
type = global.inventory[o,1]; //type
level = global.inventory[o,2]; //level
if (type == "Shield") {
    capacity = global.inventory[o,3]; //damage
    delay = global.inventory[o,4]; //acc
    chargerate = global.inventory[o,5]; //rate
    battery = global.inventory[o,16]; //battery
    arm = global.inventory[o,17]; //arm
}else{
    damage = global.inventory[o,3]; //damage
    acc = global.inventory[o,4]; //acc
    rate = global.inventory[o,5]; //rate
    barrel = global.inventory[o,16]; //barrel
    grip = global.inventory[o,17]; //grip

    reload = global.inventory[o,6] ; //reload
    mag = global.inventory[o,7]; //mag
    bnum = global.inventory[o,8]; //bnum
    bspeed = global.inventory[o,9]; //bspeed
    pattern = global.inventory[o,10]; //pattern
    bspread = global.inventory[o,11]; //spread
    stock = global.inventory[o,18]; //stock
    access = global.inventory[o,19]; //access
    splits = global.inventory[o,20]; //splits
    scope = global.inventory[o,21]; //scope
    burst = global.inventory[o,22]; //burst
    btype = global.inventory[i,26]; //btype
}

element = global.inventory[o,12]; //element
elem_dps = global.inventory[o,13]; //elem_dps
elem_chance = global.inventory[o,14]; //elem_chance
body = global.inventory[o,15]; //body
texture = global.inventory[o,23]; //texture
redtext = global.inventory[o,24]; //redtext
rarity = global.inventory[o,25]; //rarity
