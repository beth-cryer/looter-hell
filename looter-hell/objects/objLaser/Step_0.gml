event_inherited();

image_angle = direction;
speed = 0;

x = objPlayer.x;
y = objPlayer.y + yoffset;

if (global.mag[objPlayer.equipped] <= 0) instance_destroy();

