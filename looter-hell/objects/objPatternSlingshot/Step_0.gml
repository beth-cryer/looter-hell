//CREATES X NUMBER OF EVENLY-SPREAD PROJECTILES AT 0 ANGLE
if (num mod 2 == 0) origin = (spread); else origin = 0;

for(i=0; i<num; i++) {
    //determines if next projectile is above or below center line
    if (i mod 2 == 0) dir = 1; else dir = -1;
    
    //create projectile
    proj = instance_create(x,y,type);
    proj.direction = origin + ((i + i mod 2) * spread) * dir;
    proj.speed = speed;
    proj.slingshot = 1;
    
    scrSetProj(proj);
}

instance_destroy();

