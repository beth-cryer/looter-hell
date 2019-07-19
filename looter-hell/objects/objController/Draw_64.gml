//PAUSE MENU
if (global.paused == true) {
    draw_set_font(global.font_menub);
    draw_set_color(c_white);
    draw_set_halign(fa_center);
    
    draw_text(display_get_gui_width()/2,display_get_gui_height()/2,string_hash_to_newline(load_text("paused")));
    
    draw_set_font(global.font_menu);
    draw_set_color(c_black);
    draw_text(display_get_gui_width()/2,(display_get_gui_height()/2)+32,string_hash_to_newline(load_text("exit?")));
    
    draw_set_color(c_black);
    draw_set_halign(fa_left);
}

