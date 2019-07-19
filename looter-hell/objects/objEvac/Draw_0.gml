draw_self();

if (distance_to_object(objPlayer) < 64) {
    if (global.k_select) { room_goto(rmHub); }
    
    draw_set_font(global.font_stats);
    draw_text(x-8,y-32,string_hash_to_newline(load_text("evac")));

}

