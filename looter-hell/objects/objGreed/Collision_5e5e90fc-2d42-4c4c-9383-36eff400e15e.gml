if (owner == 0) {
    //REGEN AMMO
    if (global.mag[objPlayer.equipped] < global.inventory[global.loadout[objPlayer.equipped],7])
    global.mag[objPlayer.equipped] += 1;
}

