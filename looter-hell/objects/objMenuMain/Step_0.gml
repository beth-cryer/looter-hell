xp = 256;
yp = 160;

if (delay == 0) {
    if (keyboard_check(vk_down)) {sel++; delay = 1;}
    if (keyboard_check(vk_up)) {sel--; delay = 1;}
    if (delay == 1) alarm[0] = room_speed/10;
}

//select by mouseover
for(i=0;i<3;i++) {
    if(point_in_rectangle(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),xp,yp+(i*32),xp+64,yp+(i*32+32))) {
    //if (i != sel) audio_play_sound(sfxMouseover,10,false);
    sel = i;
    moused = true;
    }
}

if (sel>smax-1) sel = smax-1;
if (sel<0) sel = 0;

//select option
if (keyboard_check_pressed(vk_enter)
or (moused == true and mouse_check_button_pressed(mb_left))) {
    audio_play_sound(sfxMenuSelect,10,false);
    switch(sel) {
        case(0): room_goto(rmHub); break;
        case(1): room_goto(rmOptions); break;
        case(2): game_end(); break;
    }
}

