with (objInv) {
display_set_gui_size(__view_get( e__VW.WPort, 0 ), __view_get( e__VW.HPort, 0 ));

draw_set_font(global.font_gui);

if global.inv_open == false exit;

//BACKGROUND
c = merge_color(c_white,c_dkgray,0.5);
draw_rectangle_colour(xp-8,yp-8,xp+32+loadwidth+invwidth,yp+32+(inum*16),c_white,c_white,c,c,0);
draw_set_color(c_black);

//LOADOUT
uiwidth = 0;
for(i=0;i<global.loadSlots;i++) {
    //HIGHLIGHT SELECTION
    draw_set_color(c_black);
    
    //IF NOT SWITCHING
    if (switching == -1) {
        //IF CURRENT SELECTED
        if (across == 0 and i == sel) draw_set_color(c_green);
    }else{
        //IF SWITCHING AND CURRENT IS SELECTED
        //OR SWITCHING FROM INV AND CURRENT WAS SELECTED
        if ((across == 0 and i == sel) or (switching == 0 and i == iswitch)) draw_set_color(c_blue);
    }
    
    if (global.loadout[i] != -1) {
        draw_text_w(xp,yp+(i*16),global.inventory[global.loadout[i],0]);
        //if (string_width(global.inventory[loadout[sel],0]) > loadwidth) loadwidth = global.inventory[loadout[sel],0];
    }else{
        draw_text(xp,yp+(i*16),string_hash_to_newline(load_text("empty")));
    }
}

loadwidth = uiwidth+8;
uiwidth = 0;

//INV
j = 0;
for(i=pstart;i<pend;i++) {
    //HIGHLIGHT SELECTION
    draw_set_color(c_black);
    
    //IF NOT SWITCHING
    if (switching == -1) {
        //IF CURRENT SELECTED
        if (across == 1 and i == sel) draw_set_color(c_green);
    }else{
        //IF SWITCHING AND CURRENT IS SELECTED
        //OR SWITCHING FROM INV AND CURRENT WAS SELECTED
        if ((across == 1 and i == sel) or (switching == 1 and i == iswitch)) draw_set_color(c_blue);
    }
    
    //Filter out Types in filters[]
    if (scrCheckFilters(global.inventory[sinv[i],1]))
    {draw_text_w(xp+loadwidth+8,yp+(j*16),global.inventory[sinv[i],0]); j++;}
}

invwidth = uiwidth;

draw_set_color(c_black);

}
//CODE FOR DRAWING WEAPON CARD
if drawcard == false exit;

//draw background card
c1 = scrSetRarityColour();
c2 = merge_colour(c1,c_dkgray,0.5);
draw_rectangle_color(xw-8,yp-8,xw+width,yp+gheight,c1,c1,c2,c2,0);
draw_set_color(c_black);

if (type == "Shield") {
    draw_sprite_texture(arm,texture,0,xw,yp+(gheight*0.1),xsc,ysc);
    draw_sprite_texture(battery,texture,0,xw,yp+(gheight*0.1),xsc,ysc);
    draw_sprite_texture(body,texture,0,xw,yp+(gheight*0.1),xsc,ysc);
}else{
    //draw sprite
    if (scope != 0) draw_sprite_texture(scope,texture,0,xw,yp+(gheight*0.1),xsc,ysc);
    if (stock != 0) draw_sprite_texture(stock,texture,0,xw,yp+(gheight*0.1),xsc,ysc);
    
    draw_sprite_texture(grip,texture,0,xw,yp+(gheight*0.1),xsc,ysc);
    //DECIDE ORDER TO DRAW BODY/BARREL
    if (type == "Shotgun") {
        draw_sprite_texture(body,texture,0,xw,yp+(gheight*0.1),xsc,ysc);
        draw_sprite_texture(barrel,texture,0,xw,yp+(gheight*0.1),xsc,ysc);
    }else{
        draw_sprite_texture(barrel,texture,0,xw,yp+(gheight*0.1),xsc,ysc);
        draw_sprite_texture(body,texture,0,xw,yp+(gheight*0.1),xsc,ysc);
    }
    
    //DPS
    draw_text(xw+4,yp,string_hash_to_newline("DPS: " + string(damage*rate + elem_dps)));
    
    //Element
    if (elem_index != 0) {
        draw_text(xw+4,yp+(gheight*0.6),string_hash_to_newline(string(element)));
        draw_text_w(xw+4,yp+(gheight*0.6)+10,load_text("elementchance") + ": " + string(elem_chance));
    }

}

var wcomp;

//draw stats
draw_text(xw+width1,yp,string_hash_to_newline(string(name)));
draw_text(xw+width1,yp+16,string_hash_to_newline(load_text("level") + " " + string(level) + " " + string(type)));

if (type == "Shield") {
    wcomp = draw_text_w(xw+width1,yp+32,load_text("capacity") + ": " + string(capacity));
    scrCompare(xw+width1+wcomp,yp+32,3);
    
    wcomp = draw_text_w(xw+width1,yp+48,load_text("shieldrate") + ": " + string(chargerate));
    scrCompare(xw+width1+wcomp,yp+48,5);
    
    wcomp = draw_text_w(xw+width1,yp+64,load_text("shielddelay") + ": " + string(delay));
    scrCompare(xw+width1+wcomp,yp+64,4);
}else{
    
    if (bnum > 1) wcomp = draw_text_w(xw+width1,yp+32,load_text("damage") + ": " + string(damage) + "x" + string(bnum));
    else wcomp = draw_text_w(xw+width1,yp+32,load_text("damage") + ": " + string(damage));
    scrCompare(xw+width1+wcomp,yp+32,3);
    
    wcomp = draw_text_w(xw+width1,yp+48,load_text("accuracy") + ": " + string(acc));
    scrCompare(xw+width1+wcomp,yp+48,4);
    
    wcomp = draw_text_w(xw+width1,yp+64,load_text("firerate") + ": " + string(rate));
    scrCompare(xw+width1+wcomp,yp+64,5);
    
    wcomp = draw_text_w(xw+width1,yp+80,load_text("reloadspeed") + ": " + string(reload));
    scrCompare(xw+width1+wcomp,yp+80,6);
    
    wcomp = draw_text_w(xw+width1,yp+96,load_text("magsize") + ": " + string(mag));
    scrCompare(xw+width1+wcomp,yp+97,7);
    
}

//RED TEXT
if (redtext != "") {draw_set_color(c_red); draw_text(xw+width1,yp+112,string_hash_to_newline(redtext)); draw_set_color(c_black);}


