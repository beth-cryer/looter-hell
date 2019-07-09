//find next empty space
scrInvSize();

//if there is space
if (i != -1 and i<global.invSize-1) {
    //name
    global.inventory[i,0] = name;
    global.inventory[i,1] = type; //type
    global.inventory[i,2] = level; //level
    if(type == "Shield") {
        global.inventory[i,3] = capacity; //damage
        global.inventory[i,4] = delay; //acc
        global.inventory[i,16] = battery; //battery
        global.inventory[i,17] = arm; //arm
    }else{
        global.inventory[i,3] = damage; //damage
        global.inventory[i,4] = acc; //acc
        global.inventory[i,16] = barrel; //barrel
        global.inventory[i,17] = grip; //grip
    }
    global.inventory[i,5] = rate; //rate
    global.inventory[i,6] = reload; //reload
    global.inventory[i,7] = mag; //mag
    global.inventory[i,8] = bnum; //bnum
    global.inventory[i,9] = bspeed; //bspeed
    global.inventory[i,10] = pattern; //pattern
    global.inventory[i,11] = bspread; //spread
    global.inventory[i,12] = element; //element
    global.inventory[i,13] = elem_dps; //elem_dps
    global.inventory[i,14] = elem_chance; //elem_change
    global.inventory[i,15] = body; //body
    
    
    global.inventory[i,18] = stock; //stock
    global.inventory[i,19] = access; //access
    global.inventory[i,20] = splits; //splits
    global.inventory[i,21] = scope; //scope
    global.inventory[i,22] = burst; //burst
    global.inventory[i,23] = texture; //texture
    global.inventory[i,24] = redtext; //redtext
    global.inventory[i,25] = rarity; //rarity
    
    //check for loadout space
    l = -1;
    for(j=0;j<global.loadSlots;j++) {
        if (global.loadout[j] == -1 and l == -1) l = j;
    }
    
    //add to loadout if space
    if (l != -1) {
        global.loadout[l] = i; scrReloadGun(i,0);
        if (l == 0) scrSwitchWep(0);
    }
    
    return true;
}

//return false if inv full
return false;
