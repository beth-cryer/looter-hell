//create pattern1
p = instance_create(x,y,objPattern1);
p.type = type;
p.num = num;
p.spread = 180/num;
p.speed = speed;
p.owner = owner;
scrSetProj(p);


//create pattern2
if (!instance_exists(objPatternScarletLaser)) {
    p = instance_create(x,y,objPatternScarletLaser);
    p.type = objLaser;
    p.num = 1;
    p.spread = 1;
    p.speed = speed;
    p.owner = owner;
    scrSetProj(p);
}

instance_destroy();

