if (splits != 0) {
    proj = instance_create(x,y,timetrans);
    proj.type = type;
    proj.speed = speed;
    proj.num = num;
    proj.spread = spread;
    proj.splits = splits - 1;
    
    scrSetProj(proj);
}

instance_destroy();

