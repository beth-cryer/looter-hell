//CREATES X NUMBER OF EVENLY-SPREAD PROJECTILES THAT CURVE INWARDS

//move center if even
if (num mod 2 == 0) origin = (spread); else origin = 0;

for(i=0; i<num; i+=1) {
    //determines if next projectile is above or below center line
    if (i mod 2 == 0) dir = 1; else dir = -1;
    
    //create projectile
    proj = instance_create(x,y,type);
    proj.direction = origin + ((i + i mod 2) * spread) * dir;
    proj.speed = speed;
    proj.curve = spread/15 * -dir;
    proj.vampire = 1;
    
    scrSetProj(proj);
    
    //don't curve central projectile
    if (origin = 0 and i == 0)
    proj.curve = 0;
}

instance_destroy();

