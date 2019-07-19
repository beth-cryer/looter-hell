draw_set_font(global.font_menub);
draw_text(xp,yp-32,string_hash_to_newline("Area " + string(area+1)));

draw_set_font(global.font_menu);
for(i=0;i<stages[area];i++) {
    if (sel==i) draw_set_color(c_green); else draw_set_color(c_black);
    draw_text(xp,yp+(i*20),string_hash_to_newline(string(i+1)))
}


