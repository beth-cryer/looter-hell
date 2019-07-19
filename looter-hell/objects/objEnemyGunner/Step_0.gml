event_inherited();

if (global.paused==false and canmove==true and frozen==false
and distance_to_object(instance_nearest(x,y,objEnemy)) > 128) {
    image_speed = 0.1;
    
    //don't strafe if close to border
    if (y<=128+mspeed) {
    y+=mspeed;
    dir = 1;
    }else if (y>=room_height-mspeed) {
    y-=mspeed;
    dir = -1;
    }
    
    if (strafetime <= 0) {
        //start strafing in random direction
        dir = choose(-1,1);
        strafetime = room_speed * random_range(0.5,1.5);
    }else{
        //strafe for set time in set dir
        y += dir * mspeed;
        strafetime -= 1;
    }
}else{
    image_speed = 0;
}

