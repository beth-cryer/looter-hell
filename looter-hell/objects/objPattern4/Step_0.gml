//CREATES X NUMBER OF EVENLY-SPREAD PROJECTILES AT 0 ANGLE

//move center if even
if (num mod 2 == 0) origin = y+(spread); else origin = y;

for(i=0; i<num; i+=1) {
    //determines if next projectile is above or below center line
    if (i mod 2 == 0) dir = 1; else dir = -1;
    
    //create projectile
    yorig = origin + ((i + i mod 2) * spread) * dir;
    proj = instance_create(x,yorig,type);
    proj.speed = speed;
    proj.owner = owner;
    
    scrSetProj(proj);
}

instance_destroy();

