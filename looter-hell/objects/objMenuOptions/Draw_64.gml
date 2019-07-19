draw_set_font(global.font_menub);
for(i=0;i<smax;i++) {
    if (sel==i) draw_set_color(c_green); else draw_set_color(c_black);
    draw_text(xp,yp+(i*32),string_hash_to_newline(menu[i]))
}

