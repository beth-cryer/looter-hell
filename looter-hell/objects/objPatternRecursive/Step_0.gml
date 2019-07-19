//CREATES X NUMBER OF EVENLY-SPREAD STRAIGHT PROJECTILES

//move center if even
if (num mod 2 == 0) origin = (spread); else origin = 0;

for(i=0; i<num; i+=1) {
    //determines if next projectile is above or below center line
    if (i mod 2 == 0) dir = 1; else dir = -1;
    
    //create projectile
    proj = instance_create(x,y,type);
    proj.direction = origin + ((i + i mod 2) * spread) * dir;
    proj.speed = speed;
    proj.num = num;
    proj.spread = spread;
    proj.type = type;
    proj.timetrans = objPatternRecursive;
    proj.lifespan = room_speed/3;
    proj.splits = splits;
    
    scrSetProj(proj);
}

instance_destroy();

