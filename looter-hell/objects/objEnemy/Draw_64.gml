if (boss == true) {
draw_set_font(global.font_gui);

draw_healthbar(display_get_gui_width()*0.25, __view_get( e__VW.HView, 0 )-32, display_get_gui_width()*0.75, __view_get( e__VW.HView, 0 )-8, (100*(hp/hpmax)), c_black, c_red, c_green, 0, true, false);

draw_set_halign(fa_center);
draw_text(display_get_gui_width()*0.5,__view_get( e__VW.HView, 0 )-48,string_hash_to_newline(bossName))
draw_set_halign(fa_left);
}

