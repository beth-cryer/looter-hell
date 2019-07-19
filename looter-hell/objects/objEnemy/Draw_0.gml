draw_set_font(global.font_stats);

if (fire == true) draw_col = c_red;
else if (frozen == true) draw_col = c_aqua;
else if (electric == true) draw_col = c_blue;
else if (corrode == true) draw_col = c_green;
else draw_col = image_blend;

draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,draw_col,image_alpha);

//if(hp>0) draw_text(x,y-24,string(hp));

