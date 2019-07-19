event_inherited();

xcenter = sprite_get_width(body)/2;

draw_sprite_ext(sprPlayerHand1,hi,x,y,-1,1,0,image_blend,image_alpha);

if (scope != 0) draw_sprite_texture(scope,texture,0,x-xof-xcenter,y+yof,0.75,0.75);
if (stock != 0) draw_sprite_texture(stock,texture,0,x-xof-xcenter,y+yof,0.75,0.75);
draw_sprite_texture(grip,texture,0,x-xof-xcenter,y+yof,0.75,0.75);

if (type == "Shotgun") {
draw_sprite_texture(body,texture,0,x-xof-xcenter,y+yof,0.75,0.75);
draw_sprite_texture(barrel,texture,0,x-xof-xcenter,y+yof,0.75,0.75);
}else{    
draw_sprite_texture(barrel,texture,0,x-xof-xcenter,y+yof,0.75,0.75);
draw_sprite_texture(body,texture,0,x-xof-xcenter,y+yof,0.75,0.75);
}

draw_sprite_ext(sprPlayerHand2,hi,x,y,-1,1,0,image_blend,image_alpha);

