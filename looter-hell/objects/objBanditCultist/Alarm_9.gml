//GENERATE NEW STATE
if (phase == 0) {
    if (state == 1) state = 2;
    else state = choose(1,2,2);
}else if (phase == 1) {
    if (state == 4) state = 3;
    else state = choose(4,3,3);
}else{
    state = 5;
}

//MOVE FIRST

//CENTER
if (state == 1 or state == 4 or state == 5) {
    destx = room_width/2 + 128;
    desty = room_height/2;
}

//RANDOM
if (state == 2 or state == 3) {
    destx = irandom_range(64+room_width/2,room_width-64);
    desty = irandom_range(128,room_height-64);
}

