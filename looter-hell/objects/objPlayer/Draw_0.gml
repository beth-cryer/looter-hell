draw_set_font(global.font_stats);

//draw player
draw_sprite(sprite_index,-1,x,y);

//draw reload
if (reloading == true) {
    //draw_text(x,y-64,global.inventory[global.loadout[equipped],6] - reloadtime);
    draw_circular_bar(x,y-48,reloadtime,global.inventory[global.loadout[equipped],6],c_dkgray,16,0.7,6);
}

//draw gun
if (equipped != -1) {
if (global.loadout[equipped] != -1) {

    //draw muzzle flash
    draw_sprite(sprMuzzleFlash,shoot,x+xsh,y+ysh);

    //draw BOTTOM hand
    draw_sprite(sprPlayerHand1,hi,x-shoot,y);

    xcenter = sprite_get_width(body)/2;

    if (scope != 0) draw_sprite_texture(scope,texture,0,x+xof+xcenter-shoot,y+yof,xsc,ysc);
    if (stock != 0) draw_sprite_texture(stock,texture,0,x+xof+xcenter-shoot,y+yof,xsc,ysc);
    draw_sprite_texture(grip,texture,0,x+xof+xcenter-shoot,y+yof,xsc,ysc);
    draw_sprite_texture(barrel,texture,0,x+xof+xcenter-shoot,y+yof,xsc,ysc);
    draw_sprite_texture(body,texture,0,x+xof+xcenter-shoot,y+yof,xsc,ysc);
    
    //draw TOP hand
    draw_sprite(sprPlayerHand2,hi,x-shoot,y);
    
}
}

//draw hitbox
if (global.hitbox != 0) draw_sprite_ext(sprHitbox,-1,x,y,1,1,0,image_blend,global.hitbox);


//DRAW ARROW INDICATOR
if (offscreenx != 0 or offscreeny != 0) {
    var ax; var ay;
    
    ax = x;
    ay = y;
    
    if(offscreenx == 1) {
    ax = clamp(x,32,room_width-32);
    ay = clamp(y,16,room_height-16);
    }
    
    if(offscreeny == 1) {
    ax = clamp(x,16,room_width-16);
    ay = clamp(y,32,room_height-32);
    }
    
    //DRAW ARROW
    var a_angle = point_direction(ax,ay,x,y);
    draw_sprite_ext(sprArrow,-1,ax,ay,1,1,a_angle,image_blend,image_alpha);
}

