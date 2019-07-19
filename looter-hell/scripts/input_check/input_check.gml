//KB_MOUSE
if(global.input_device == 0) {
    if(keyboard_check(argument0)) return true;
}
//CONTROLLER
if(global.input_device == 1) {
    if(gamepad_button_check(argument0,0)) return true;
}

//false if button not pressed
return false;