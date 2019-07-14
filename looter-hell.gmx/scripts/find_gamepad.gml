//FIND GAMEPAD
for(var i=0; i<gamepad_get_device_count(); i++) {
    if (gamepad_is_connected(i)) {
        gamepad_set_axis_deadzone(i, 0.25); //set deadzone
        global.gpad = i; //set gamepad
        break; //use first gamepad connected
    }
}
