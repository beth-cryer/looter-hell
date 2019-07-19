//Draw element/non-textured parts
if (sprite_get_number(sprite) > 1) {
    if (element != "None") {
        index = elem_index;
    }else{
        index = 1;
    }
    
    if (sprite = sprVampireBody) {
        if (vampire < 1) exit;
        else index = round(vampire);
    }
}else exit;

sprite = argument0;
posx = argument1;
posy = argument2;
xscale = argument3;
yscale = argument4;

width = sprite_get_width(sprite);
height = sprite_get_height(sprite);

ycenter = height/2;

draw_sprite_ext(sprite,index,posx,posy-ycenter,xscale,yscale,0,image_blend,1);