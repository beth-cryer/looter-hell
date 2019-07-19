xp = 16;
yp = 160;

draw_set_font(global.font_gui);
draw_set_color(c_black);
draw_text(xp,yp,string_hash_to_newline("XP: " + string(global.xp)));
draw_text(xp,yp+16,string_hash_to_newline(load_text("gold") + ": " + string(global.gold)));
draw_text(xp,yp+32,string_hash_to_newline(load_text("metal") + ": " + string(global.metal)));
draw_text(xp,yp+48,string_hash_to_newline(load_text("crystal") + ": " + string(global.crystal)));

