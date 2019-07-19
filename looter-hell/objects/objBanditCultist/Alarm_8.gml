pts = 0;

//ROTATING BALLS
if (state == 1) {
    
    damage = scale(15,1,global.stageLevel);
    btype = objCultistEnergy;
    reload = 1;
    mag = 24;
    bullets = mag;
    rate = 5;
    bnum = 24;
    bspread = 180;
    bspeed = 4;
    pattern = objPattern1;
    shootdir = 0;
    
    scrEnemyPattern(0);
    
}

//TELEPORT BURST
if (state == 2 or state == 3) {
    
    damage = scale(10,1,global.stageLevel);
    btype = objCultistBall;
    reload = 1;
    mag = 8;
    bullets = mag;
    rate = 16;
    bnum = 3;
    bspread = 5;
    bspeed = 10;
    pattern = objPattern1;
    
    shootdir = point_direction(x,y,objPlayer.x,objPlayer.y);
    
    //ALT FIRE
    if(state == 3) shootdir -= 40;
    
    scrEnemyPattern(0);
}


if (state == 4) {
    
    //SWIRL
    damage = scale(15,1,global.stageLevel);
    btype = objCultistEnergy;
    reload = 1;
    mag = 24;
    bullets = mag;
    rate = 5;
    bnum = 24;
    bspread = 180;
    bspeed = 4;
    pattern = objPattern1;
    shootdir = 0;
    scrEnemyPattern(0);
    
    //STRAIGHT LINES
    damage = scale(10,1,global.stageLevel);
    btype = objCultistBall;
    reload = 1;
    mag = 24;
    bullets = mag;
    rate = 3;
    bnum = 9;
    bspread = 80;
    bspeed = 12;
    pattern = objPattern1;
    
    shootdir = 180;
    
    scrEnemyPattern(1);
    
}

//DART PATTERN
if (state == 5) {

    //SECTION 1
    damage = scale(10,1,global.stageLevel);
    btype = objCultistDart;
    reload = 0.2;
    mag = 32;
    bullets = mag;
    rate = 4;
    bnum = 32;
    bspread = 180;
    bspeed = 3;
    pattern = objPattern1;
    shootdir = 0;
    
    scrEnemyPattern(0);
    
    
    //SECTION 2
    statept[state] = pts;
    
    damage = scale(10,1,global.stageLevel);
    btype = objCultistDart;
    reload = 0.2;
    mag = 32;
    bullets = mag;
    rate = 4;
    bnum = 32;
    bspread = 180;
    bspeed = 4;
    pattern = objPattern3;
    
    shootdir = 180+(bspread/bnum);
    
    scrEnemyPattern(1);
    timer_shoot[pts-1] = 1.5*(room_speed/p_rate[pts-1]);
}

