if (create == 0) {
scrNewGun(lvlgen,rargen,typegen);

create = 1;
}

//GENERATE NEW GUN
if (newgun == true) {newgun = false; scrNewGun(0,rargen,typegen);}

//PICKUP GUN
if (pickup == true) {
if (scrAddInv() == true) {instance_destroy();}
}

//SELECT BY MOUSEOVER
moused = false;
if point_in_rectangle(mouse_x, mouse_y, x, y, x+96, y+64) and idelay!=0 {
    moused = true;
    cardopen = true;
}else{
    cardopen = false;
}

//SELECT BY PROXIMITY
if (distance_to_object(objPlayer)<64 and idelay!=0) cardopen = true;

//IF SELECTED
if (cardopen == true) {
    xsc = 1; ysc = 1;
	//get the max width of the guncard for Draw event
	draw_set_font(global.font_stats);
	gwidth = sprite_get_width(body);
	gheight = sprite_get_height(body);
	scrGetGCWidth();
    //PICKUP GUN
    //+inform spawner object if needed
    if (global.k_select or (moused == true and mouse_check_button_pressed(mb_left))) {
        if (scrAddInv() == true) {
            if (spawner != 0) spawner.spawn = 1;
            instance_destroy();
        }
    }
}else{
    if (type == "Shield") { xsc = 0.6; ysc = 0.6; }
    else{ xsc = 0.75; ysc = 0.75;}
}

