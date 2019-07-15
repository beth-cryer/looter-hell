i = global.loadout[argument0];

//switch only if weapon in slot
if (i != -1) {
    reloading = false;
    reloadtime = 0;
    burstcount = 0;
    equipped = argument0;
    
    if (i == -1) return false;
    
    scrWepStats(i);
    
    elem_index = scrGetElemIndex(element);
    
    if (body == sprVampireBody) vampire = 4;
}
