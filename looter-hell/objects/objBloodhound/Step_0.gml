if (create == 0) {
ospeed = speed;
odir = direction;
}

event_inherited();

//Bloodhound lock-on
if (locked == false) {
    if (instance_exists(objEnemy)) {
    target = instance_nearest(x,y,objEnemy);
    speed = 0;
    direction = 0;
    locked = true;
    
    } else {
    //reset speed if all enemies dead
    speed = ospeed;
    direction = odir;
    }
}

//Bloodhound tracking
if (locked == true) {
    if (instance_exists(target)) move_towards_point(target.x,target.y,ospeed);
    else locked = false;
}

