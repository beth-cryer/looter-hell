//keep shooting until burst finished
if (burst > 0 and global.mag[equipped] > 0) {

//add to burstcount
burstcount++;

//if underneath burst limit
if (burstcount < burst) {
    
    //shoot sound
    scrShootSound();
    //screen shake
    //scrShake(0.5,0.1);

    proj = instance_create(x+xsh,y+ysh,pattern);
    proj.type = btype;
    proj.speed = bspeed;
    proj.num = bnum;
    proj.spread = bspread/bnum;
    proj.owner = 0;

    scrSetProj(proj);

    //deathspawn limit
    proj.splits = splits;

    global.mag[equipped] -= 1;
    alarm[0] = (room_speed/rate);
    
    shoot = 1; alarm[6] = 1;
    
}else{
    //if reached burst limit
    alarm[3] = 2*(room_speed/rate);
}


}else{
    //just set canshoot to true if not bursting
    canshoot = true;
}

