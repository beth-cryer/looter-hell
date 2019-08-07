draw_set_font(global.font_stats);

gheight = sprite_get_height(body);

//RARITY GLOW
c = scrSetRarityColour();
gwidth = sprite_get_width(body);
draw_sprite_ext(sprGlow,-1,x-16+(gwidth/2),y+(gheight/2)-4,0.4,0.4,0,c,0.8);

if (cardopen == true) {

    //draw background card
    c1 = scrSetRarityColour();
    c2 = merge_colour(c1,c_dkgray,0.5);
    draw_rectangle_color(x-4,y-4,x+width,y+90,c1,c1,c2,c2,0);
    
    //Element
    if (elem_index != 0) {
        draw_text(x+4,y+gheight,string_hash_to_newline(string(element)));
        draw_text(x+4,y+gheight+10,string_hash_to_newline(load_text("elementchance") + ": " + string(elem_chance)));
    }
    
    //draw stats
    draw_text(x+width1,y,string_hash_to_newline(name));
    draw_text(x+width1,y+10,string_hash_to_newline(load_text("level") + " " + string(level) + " " + string(type)));
    
    //SHIELD
    if(type == "Shield") {
        draw_text(x+width1,y+20,string_hash_to_newline(load_text("capacity") + ": " + string(capacity)));
        draw_text(x+width1,y+30,string_hash_to_newline(load_text("shieldrate") + ": " + string(chargerate)));
        draw_text(x+width1,y+40,string_hash_to_newline(load_text("shielddelay") + ": " + string(delay)));
        
    //GUN
    }else{
    
    //DPS
    dps = damage*rate + elem_dps;
    draw_text(x+5,y,string_hash_to_newline("DPS: " + string(dps)));
    
    if (bnum > 1) draw_text(x+width1,y+20,string_hash_to_newline(load_text("damage") + ": " + string(damage) + "x" + string(bnum)));
    else draw_text(x+width1,y+20,string_hash_to_newline(load_text("damage") + ": " + string(damage)));
    
    draw_text(x+width1,y+30,string_hash_to_newline(load_text("accuracy") + ": " + string(acc)));
    draw_text(x+width1,y+40,string_hash_to_newline(load_text("firerate") + ": " + string(rate)));
    draw_text(x+width1,y+50,string_hash_to_newline(load_text("reloadspeed") + ": " + string(reload)));
    draw_text(x+width1,y+60,string_hash_to_newline(load_text("magsize") + ": " + string(mag)));
    
    }
    
    //RED TEXT
    if (redtext != "") {draw_set_color(c_red); draw_text_w(x+width1,y+70,redtext); draw_set_color(c_black);}    
    
}

if(type == "Shield") {
    draw_sprite_texture(arm,texture,0,x,y+(gheight/2),xsc,ysc);
    draw_sprite_texture(battery,texture,0,x,y+(gheight/2),xsc,ysc);
    draw_sprite_texture(body,texture,0,x,y+(gheight/2),xsc,ysc);
}else{

    //draw sprite
    if (scope != 0) draw_sprite_texture(scope,texture,0,x,y+(gheight/2),xsc,ysc);
    if (stock != 0) draw_sprite_texture(stock,texture,0,x,y+(gheight/2),xsc,ysc);
    
    draw_sprite_texture(grip,texture,0,x,y+(gheight/2),xsc,ysc);
	draw_sprite_texture(barrel,texture,0,x,y+(gheight/2),xsc,ysc);
    draw_sprite_texture(body,texture,0,x,y+(gheight/2),xsc,ysc);

}

