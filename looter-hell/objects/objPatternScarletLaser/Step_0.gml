//CREATE LASER
if (create == 0) {

    //move center if even
    if (num mod 2 == 0) origin = (spread); else origin = 0;
    
    for(i=0; i<num; i+=1) {
        //determines if next projectile is above or below center line
        if (i mod 2 == 0) dir = 1; else dir = -1;
        
        //create projectile
        proj = instance_create(x,y,type);
        proj.direction = origin + ((i + i mod 2) * spread) * dir;
        proj.speed = speed;
        proj.owner = owner;
        proj.alarm[0] = 0;
        
        scrSetProj(proj);
        proj.damage = damage*0.1;
        
        //do curve central projectile too
    }
    
    create = 1;
}

//SPIN IN A SET DIRECTION, ACCELERATING WITH TIME
if (instance_exists(proj)) {
    proj.direction += spin;
    //also buff damage a little
    proj.damage *= 1.05; if (proj.damage > damage*5) proj.damage = damage*5;
}else instance_destroy();

spin += 0.1;
if (spin > speed*2) spin = speed*2;

