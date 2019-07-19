//check which keys are pressed every step
inputs_pressed();

if (keyboard_check_pressed(vk_escape)) {
    //pause if not in a menu room
    if (room == rmBattle or room == rmHub) global.paused = !global.paused;
}

//return to hub
if (global.k_select and global.paused == true) { global.paused = false; room_goto(rmHub); }

