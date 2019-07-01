colour = c_white;
switch(rarity) {
    case(1): colour = c_white; break; //Commom
    case(2): colour = make_color_rgb(40, 80, 170); break; //Rare
    case(3): colour = make_color_rgb(110, 30, 170); break; //Super Rare
    case(4): colour = make_color_rgb(230, 190, 50); break; //Epic
    case(5): colour = make_color_rgb(250, 130, 30); break; //Legendary
    case(6): colour = c_aqua; break; //Ancient
}

draw_set_color(colour);