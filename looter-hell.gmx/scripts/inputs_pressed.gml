global.k_up = keyboard_check(global.kb_up) or gamepad_axis_value(global.gpad,gp_axislv < 0);
global.k_down = keyboard_check(global.kb_down) or gamepad_axis_value(global.gpad,gp_axislv > 0);
global.k_left = keyboard_check(global.kb_left) or gamepad_axis_value(global.gpad,gp_axislh < 0);
global.k_right = keyboard_check(global.kb_right) or gamepad_axis_value(global.gpad,gp_axislh > 0);
global.k_select = keyboard_check_pressed(global.kb_select) or gamepad_button_check_pressed(global.gpad, gp_face1);
global.k_shoot = keyboard_check(global.kb_shoot) or gamepad_button_check(global.gpad, gp_shoulderrb);
global.k_reload = keyboard_check(global.kb_reload) or gamepad_button_check(global.gpad, gp_face2);
global.k_ability = keyboard_check(global.kb_ability) or gamepad_button_check(global.gpad, gp_shoulderlb);
global.k_switchwep = keyboard_check_pressed(global.kb_switchwep) or gamepad_button_check_pressed(global.gpad, gp_face4);
