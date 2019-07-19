//CREATES X NUMBER OF EVENLY-SPREAD PROJECTILES AT X ANGLE

//move center if even
if (num mod 2 == 0) originy = y+(spread); else originy = y;
if (num mod 2 == 0) origin = (spread); else origin = 0;

for(i=0; i<num; i+=1) {
    //determines if next projectile is above or below center line
    if (i mod 2 == 0) dir = 1; else dir = -1;
    
    //create projectile
    yorig = originy + ((i + i mod 2) * spread) * dir;
    proj = instance_create(x,yorig,type);
    proj.direction = direction + origin + ((i + i mod 2) * spread/2) * dir;
    proj.speed = speed;
    
    scrSetProj(proj);
}

instance_destroy();

