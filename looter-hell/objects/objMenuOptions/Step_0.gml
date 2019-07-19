xp = 256;
yp = 160;

if (delay == 0) {
    if (keyboard_check(vk_down)) {sel++; delay = 1;}
    if (keyboard_check(vk_up)) {sel--; delay = 1;}
    if (delay == 1) alarm[0] = room_speed/10;
}

//select by mouseover
for(i=0;i<smax;i++) {
    if(point_in_rectangle(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),xp,yp+(i*32),xp+64,yp+(i*32+32))) {
    sel = i;
    moused = true;
    }
}

if (sel>smax-1) sel = smax-1;
if (sel<0) sel = 0;

//select option
if (keyboard_check_pressed(vk_enter)
or (moused == true and mouse_check_button_pressed(mb_left))) {
    if(sel == 4) audio_play_sound(sfxMenuCancel,10,false); else audio_play_sound(sfxMenuSelect,10,false);
    switch(sel) {
        case(0): if window_get_fullscreen() window_set_fullscreen(false); else window_set_fullscreen(true); break;
        case(1): break;
        case(2): audio_group_set_gain(ag_sfx,0,0); break;
        case(3): audio_group_set_gain(ag_music,0,0); break;
        case(4): room_goto(rmMenu) break;
    }
}

