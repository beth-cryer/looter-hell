sprite = argument0;
texture = argument1;
index = argument2;
posx = argument3;
posy = argument4;
xscale = argument5;
yscale = argument6;

width = sprite_get_width(sprite);
height = sprite_get_height(sprite);

Surface = surface_create(width,height);
surface_set_target(Surface);

//clear surface - just in case
draw_clear_alpha(c_white,0);

//draw texture
draw_set_colour_write_enable(true,true,true,false);
draw_sprite(texture,0,0,0);

//activate texture with sprite
draw_set_colour_write_enable(false,false,false,true);
draw_sprite(sprite,index,0,0);

//use white pixels of sprite to burn texture
draw_set_colour_write_enable(true,true,true,false);
draw_set_blend_mode(bm_subtract);
draw_sprite(sprite,index,0,0);

//wrap up 
draw_set_blend_mode(bm_normal);
surface_reset_target();
draw_set_colour_write_enable(true,true,true,true);

ycenter = height/2;

//draw result
draw_surface_ext(Surface,posx,posy-ycenter,xscale,yscale,0,image_blend,1);

//destroy surface if you don't need it
surface_free(Surface);

//Draw any elemental/non-textured parts
draw_elem(sprite,posx,posy,xscale,yscale);