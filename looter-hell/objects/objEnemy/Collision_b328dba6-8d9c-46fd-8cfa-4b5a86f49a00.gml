if (other.owner == 0) {
//elemental effects
scrElemEffect();

if (corrode == true) {
hp -= (other.damage*1.1); lasthit = other.damage*1.1;
}else{
hp -= other.damage; lasthit = other.damage;
}
recenthits++;

if (other.vampire == 1) {
    global.hp += other.damage/5;
    if (objPlayer.vampire < 5) objPlayer.vampire += 0.5;
}

//BLOOD
if (global.blood != 0) {
    //Floor blood
    instance_create(x+16,y,objBlood);
}

if (other.hit_destroy == true) with(other) instance_destroy();
}

