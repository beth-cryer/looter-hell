//Show remaining waves
if (current <= global.numWaves) {
    draw_set_font(global.font_menu);
    draw_set_halign(fa_center);
    
    draw_text(display_get_gui_width()/2,64,
    string_hash_to_newline(string(current) + " / " + string(global.numWaves)));
    
    draw_set_halign(fa_left);
}

