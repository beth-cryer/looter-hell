//thin out blood as it spreads
image_xscale -= sizeChange;
image_yscale  = image_xscale;

//fade blood by random amount as it spreads
if (movSpd > 0)
    image_alpha -= random_range(0.05, 0.1);

//slow down blood
movSpd = approach(movSpd,0,fric);

//draw blood to surface
surface_set_target(global.bsurf[global.bsurfc]);
draw_sprite_ext(sprBlood,0,x,y,image_xscale,image_yscale,image_angle,c_white,global.blood);
surface_reset_target();

//destroy self once blood thins to size 0
if (image_xscale <= 0) instance_destroy();

// Actual movement
x += lengthdir_x(movSpd, movDir);
y += lengthdir_y(movSpd, movDir);

