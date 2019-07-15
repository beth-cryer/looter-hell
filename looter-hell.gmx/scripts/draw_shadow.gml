//shadow surface
shadow = surface_create(room_width,room_height);
surface_set_target(shadow);

//THINGS TO GIVE SHADOW
with(objPlayer) draw_self();
with(objEnemy) draw_self();

surface_reset_target();
draw_surface_ext(shadow,0,6,1,1,0,c_black,0.4);
