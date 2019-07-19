display_set_gui_size(__view_get( e__VW.WPort, 0 ), __view_get( e__VW.HPort, 0 ));

draw_set_font(global.font_gui);

//draw_text(10,10,"HP: " + string(global.hp));
//draw_text(10,20,"Shield: " + string(global.shield));

//HP/SHIELD CIRCLES
draw_pie(64,64,global.hp,hpmax,c_red,32,1);
draw_circular_bar(64,64,global.shield,capacity,c_aqua,48,1,16);

//draw ammo
if (equipped != -1) and (global.loadout[equipped] != -1)
draw_text(16,__view_get( e__VW.HView, 0 )/2,string_hash_to_newline("Ammo: " + string(global.mag[equipped]) + " / " + string(global.inventory[global.loadout[equipped],7])))

