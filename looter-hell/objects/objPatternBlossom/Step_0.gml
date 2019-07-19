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
    proj.type = type;
    proj.num = num;
    proj.spread = spread;
    proj.deathspawn = objPatternBlossom;
    proj.splits = splits;
    proj.alarm[0] = room_speed/1.25;
    
    scrSetProj(proj);
}

instance_destroy();

