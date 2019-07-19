event_inherited();

if (canmove==true and frozen==false
and distance_to_object(instance_nearest(x,y,objEnemy)) > 128)
    //move_towards_point(x,objPlayer.y,mspeed);
    speed = 0;
else speed = 0;

