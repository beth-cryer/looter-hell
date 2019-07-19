//CREATES X NUMBER OF EVENLY-SPREAD PROJECTILES AT 0 ANGLE

//move center if even
if (num mod 2 == 0) origin = y+(spread); else origin = y;

for(i=0; i<num; i+=1) {
    //determines if next projectile is above or below center line
    if (i mod 2 == 0) dir = 1; else dir = -1;
    
    //create projectile
    if (i == 0) xoffset = 32; else xoffset = 32/(i + (i mod 2));
    
    yorig = origin + ((i + i mod 2) * spread) * dir;
    proj = instance_create(x-32+xoffset,yorig,type);
    proj.speed = speed;
    proj.dragon = 1;
    proj.owner = owner;
    
    scrSetProj(proj);
}

instance_destroy();

