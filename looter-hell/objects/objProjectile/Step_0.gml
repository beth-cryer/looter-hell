if (create == 0) {

//add accuracy offset
if (owner == 0) {
    acc = choose(1,-1);
    direction += acc*(1/objPlayer.acc);
}

//set initial pause speed
pausespeed = speed;

create = 1;
}

//PAUSED/FROZEN
if (global.paused == 1 or freeze == 1) {
    //Zero speed
    if (speed != 0) {
        pausespeed = speed;
        speed = 0;
    }
    //Pause all alarms
    alarm_pause(0);
    alarm_pause(3);
    alarm_pause(4);
    exit;
}else{
    speed = pausespeed;
}

//Zigzag activate
if (zigzag == 1) { alarm[4] = timetrans; zigzag = 2; }

//Lock activate
if (lock == 1) {
    target = instance_nearest(x,y,objEnemy);
    
    if (target != noone) {
    varx = round(random_range(-10,10)); vary = round(random_range(-10,10)); //add variation
    direction = point_direction(x,y,target.x+varx,target.y+vary);
    lock = 2;
    }
}

//Change direction if set to curve
if (curve != 0) {
    direction += curve; //otherwise curve
}

//Swirling bullets
if (vortex == 1) {
    //move in current direction
    if (dir == 0) direction += speed; else direction -= speed;
    
    //change direction
    if (direction >= 45) dir = 1; else if (direction <= -45) dir = 0;
}

//Black hole effect
if (blackhole == 1) {
    ox = x;
    oy = y;
    ospeed = speed;
    speed = 96; //distance to start from
    alarm[1] = 1;
}

//Black hole converge
if (blackhole == 2) {
    move_towards_point(ox,oy,ospeed);
    if (distance_to_point(ox,oy) <= 1) {instance_destroy();}
}

//Slingshot
if (slingshot == 1) {
    odir = direction;
    ospeed = speed;
    speed = ospeed/5;
    alarm[2] = room_speed/2;
    slingshot = 2;
} if (slingshot == 2) {
    //move in current direction
    if (dir == 0) direction += speed*5; else direction -= speed*5;
    
    //change direction
    if (direction >= 45) dir = 1; else if (direction <= -45) dir = 0;
}

//Transform into object after certain time
if (timetrans != 1 and lifespan != 0) {
    alarm[3] = lifespan;
    lifespan = 0;
}

//Spawn object after certain time

