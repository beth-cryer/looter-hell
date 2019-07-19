event_inherited();

if (global.paused == false and canmove == true and frozen==false) {
    image_speed = 0.1;
    
    //run at player
    if (distance_to_object(objPlayer)>32)
    move_towards_point(objPlayer.x,objPlayer.y,mspeed);
}else{
    image_speed = 0;
    speed = 0;
}

//MELEE
if (distance_to_object(objPlayer)<= 48 and canattack == true) {
    speed = 0;
    plr_damage(damage);
    canattack = false;
    alarm[9] = rate*room_speed;
}

