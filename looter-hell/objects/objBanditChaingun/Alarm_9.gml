if (bullets <= 0) alarm[10] = room_speed*reload; else {

    if (canmove == true) {

    proj = instance_create(x,y,pattern);
    proj.owner = 1;
    proj.type = objBulletEnemy;
    proj.speed = -(bspeed/2);
    proj.num = nnum;
    proj.spread = nspread/bnum;
    proj.direction = pangle;
    
    scrSetProj(proj);
    bullets -= 1;
    
    //if (boss == true) scrShootSound();
    }
    
    alarm[9] = room_speed/nrate;
}

