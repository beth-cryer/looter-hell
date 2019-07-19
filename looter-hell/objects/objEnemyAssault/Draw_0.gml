event_inherited();

xcenter = sprite_get_width(body)/2;

if (scope != 0) draw_sprite_texture(scope,texture,0,x-xcenter+8,y+4,0.75,0.75);
if (stock != 0) draw_sprite_texture(stock,texture,0,x-xcenter+8,y+4,0.75,0.75);
draw_sprite_texture(grip,texture,0,x-xcenter+8,y+4,0.75,0.75);

if (type == "Shotgun") {
draw_sprite_texture(body,texture,0,x-xcenter+8,y+4,0.75,0.75);
draw_sprite_texture(barrel,texture,0,x-xcenter+8,y+4,0.75,0.75);
}else{    
draw_sprite_texture(barrel,texture,0,x-xcenter+8,y+4,0.75,0.75);
draw_sprite_texture(body,texture,0,x-xcenter+8,y+4,0.75,0.75);
}

