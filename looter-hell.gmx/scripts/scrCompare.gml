var xpos = argument0;
var ypos = argument1;
var comp = argument2;;

var oitem;
var matchtype = -1;
var index = 0;

//IF CURRENTLY COMPARING
if (switching != -1) {
    if (switching == 0) oitem = global.loadout[iswitch];
    if (switching == 1) oitem = sinv[iswitch];
    
    //TO LOADOUT
    if (across == 0) {
        //if same type
        if (scrItemType(type) == scrItemType(global.inventory[oitem,1])) {
            matchtype = scrItemType(type);
            index = compare_stats(global.inventory[global.loadout[sel],comp], global.inventory[oitem,comp]);
        }
    }
    
    //TO INVENTORY
    if (across == 1) {
        if (scrItemType(type) == scrItemType(global.inventory[oitem,1])) {
            matchtype = scrItemType(type);
            index = compare_stats(global.inventory[sinv[sel],comp], global.inventory[oitem,comp]);
        }
    }
    
    //(RELOAD, lower is better)
    if (matchtype == 0)
    if (comp == 6) { if (index == 2) index = 3; else if (index == 3) index = 2;}
    
    //(DELAY, lower is better)
    if (matchtype == 1)
    if (comp == 4) { if (index == 2) index = 3; else if (index == 3) index = 2;}
    
}

draw_sprite(sprCompare,index,xpos,ypos);
