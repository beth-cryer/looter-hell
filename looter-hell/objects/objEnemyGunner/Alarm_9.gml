if (bullets <= 0) alarm[10] = room_speed*reload; else{

    if (global.paused == false and canmove == true) {

    //scrShootSound();

    proj = instance_create(x,y,pattern);
    proj.owner = 1;
    proj.type = objBulletEnemy;
    proj.speed = -(bspeed/2);
    proj.num = nnum;
    proj.spread = nspread/nnum;
    
    scrSetProj(proj);
    
    bullets -= 1;
    }
    
    alarm[9] = room_speed/nrate;
}

