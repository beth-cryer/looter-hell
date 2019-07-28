if global.inv_open == false exit;

xp = 640;
yp = 32;

//SORT INVENTORY
if (keyboard_check(ord("S"))) sinv = inv_sort(sinv);

//CHANGE INV PAGE
if (idelay = 0) {
    if (keyboard_check(ord("A"))) {ipage--; idelay = 1; alarm[0] = room_speed/10;}
    if (keyboard_check(ord("D"))) {ipage++; idelay = 1; alarm[0] = room_speed/10;}
    ipage = clamp(ipage,0,floor(scrSInvSize()/inum));
}

//delete
if (keyboard_check_pressed(ord("B")) or (moused == true and mouse_check_button_pressed(mb_right))) {
    if (across == 1) {
        //delete from loadout
        for(i=0;i<global.loadSlots;i++) {if (global.loadout[i] == sinv[sel]) {global.loadout[i] = -1}}
        
        //drop weapon
        scrDropInv(sinv[sel]);
        
        //shift inventory up by one
        if (sel < global.invSize-1) {
        for (k=sel+1; k<global.invSize; k++) {
            scrMoveInv(k);
        }}
    }
}

//SELECT ITEM
if (keyboard_check_pressed(vk_enter)
or (moused == true and mouse_check_button_pressed(mb_left))) {

    //if not already switching
    if (switching == -1) {
        //from loadout
        if (across == 0) {
        if (global.loadout[sel] != -1) switching = 0; across = 1;
        //from inventory
        }else if (across == 1) {
        switching = 1; across = 0;
        }
        
        iswitch = sel;
        
        //RECORD CURRENT WEP STATS
        
        //move sel up if necessary
        if (sel > global.loadSlots)
        sel = global.loadSlots-1;
    
    //otherwise switch
    }else{
        //if switching from loadout
        if (switching == 0) {
            if (across == 0) { //to loadout
            
                //CHECK LOADOUT SLOT IS VALID
                if ((scrItemType(global.inventory[iswitch,1]) == 0 and sel < global.loadSlots-1)) {
                
                    temp = global.loadout[sel]; global.loadout[sel] = global.loadout[iswitch]; global.loadout[iswitch] = temp;
                    scrReloadGun(iswitch,0); scrReloadGun(sel,0);
                    global.updated_load = sel;
                }
            }
            //to inv
            if (across == 1) {
                //If gun not already in loadout, switch
                if (scrInLoadout(sinv[sel]) == false) {
                
                    //CHECK LOADOUT SLOT SELECTED WAS VALID
                    if ((scrItemType(global.inventory[sinv[sel],1]) == 0 and iswitch < global.loadSlots-1) or
                    (scrItemType(global.inventory[sinv[sel],1]) == 1 and iswitch = global.loadSlots-1)) {
                
                    global.loadout[iswitch] = sinv[sel]; scrReloadGun(iswitch,0);
                    global.updated_load = iswitch;
                    
                    }
                }
            }
        }
        //if switching from inventory
        if (switching == 1) {
            if (across == 0) { //to loadout
                //If gun not already in loadout, switch
                if (scrInLoadout(sinv[iswitch]) == false) {
                
                    //CHECK LOADOUT SLOT SELECTED IS VALID
                    if ((scrItemType(global.inventory[sinv[iswitch],1]) == 0 and sel < global.loadSlots-1) or
                    (scrItemType(global.inventory[sinv[iswitch],1]) == 1 and sel = global.loadSlots-1)) {
                
                    global.loadout[sel] = sinv[iswitch]; scrReloadGun(sel,0);
                    global.updated_load = sel;
                    
                    }
                }
            }
            //to inv
            if (across == 1) {}
        }
        switching = -1;
    }
}

//UP/DOWN KEYS
if (keyboard_check(vk_down) and idelay == 0) {
    if (across == 1) and (sel+1 < scrSInvSize()) {
        sel+=1;
    }else if (across == 0) {
        sel += 1;
    }
    idelay = 1;
    alarm[0] = room_speed/10;
}

if (keyboard_check(vk_up) and idelay == 0) {
    sel-=1;
    idelay = 1;
    alarm[0] = room_speed/10;
}

if (global.k_left) {across=0};
if (global.k_right) {across=1};

//select gun by mouseover

//get start and end indexes of current page
var p = 0;
pstart = 0; //first page start
while(p < ipage) {
    pstart = scrSPageSize(pstart,inum); //add prev page size to the next
    p++;
}
//then simply get the next page size at the end
pend = scrSPageSize(pstart,inum);

moused = false; j = 0;
for(i=pstart;i<pend;i++) {
    if (scrCheckFilters(global.inventory[sinv[i],1])) {
        if(point_in_rectangle(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),xp+loadwidth,yp+(j*16),xp+loadwidth+string_width(string_hash_to_newline(global.inventory[sinv[i],0])),yp+(j*16+16))) {
            sel = i;
            across = 1;
            moused = true;
        }
        j++;
    }
}

//select loadout by mouseover
for(i=0;i<global.loadSlots;i++) {
    if(point_in_rectangle(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),xp,yp+(i*16),xp+loadwidth,yp+(i*16+16))) {
    sel = i;
    across = 0;
    moused = true;
    }
}

if (sel < 0) sel = 0;

//INV
if (across == 1) {
    if (sel > global.invSize-1) sel = global.invSize-1;
//LOADOUT
}else if (across == 0) {
    if (sel > global.loadSlots-1) sel = global.loadSlots-1;
}

//UPDATE GUN SHOWN
if (scrInvSize() > 0) {
    drawcard = true;
    if (across == 0) {
        if (global.loadout[sel] != -1) { i = global.loadout[sel];
        }else{ drawcard = false; }
    }else if (across == 1) {
        if (global.inventory[sinv[sel],0] != "") { i = sinv[sel];
        }else{ drawcard = false; }
    }else{
        drawcard = false; //just in case
    }
    
    //get card stats if it exists
    if (drawcard == true) {
        scrWepStats(i);
        elem_index = scrGetElemIndex(element);
        if (body == sprVampireBody) vampire = 4;
    }
}

//get the max width of the guncard
draw_set_font(global.font_gui);
gwidth = sprite_get_width(body)*xsc;
gheight = sprite_get_height(body)*ysc;
scrGetGCWidth();
xw = xp-(width+16);