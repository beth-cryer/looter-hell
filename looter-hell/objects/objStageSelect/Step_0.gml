xp = 256;
yp = 160;
if (delay == 0) {
    if (global.k_down) {sel++; delay = 1;}
    if (global.k_up) {sel--; delay = 1;}
    if (global.k_right) {area++; delay = 1;}
    if (global.k_left) {area--; delay = 1;}
    if (delay == 1) alarm[0] = room_speed/10;
}

if (area>0) area = 0;
if (area<0) area = 0;

//select by mouseover
moused = false;
for(i=0;i<stages[area];i++) {
    if(point_in_rectangle(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),xp,yp+(i*20),xp+16,yp+(i*20+20))) {
    sel = i;
    moused = true;
    }
}

if (sel>stages[area]-1) sel = stages[area]-1;
if (sel<0) sel = 0;

//select option
if (global.k_select or (moused == true and mouse_check_button_pressed(mb_left))) {
    audio_play_sound(sfxMenuSelect,10,false);
    global.area = area;
    global.stage = sel;
    
    global.inv_open = false;
    
    room_goto(rmBattle);
}

