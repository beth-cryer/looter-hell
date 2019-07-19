//Spawn object on death
if (deathspawn != 0 and splits != 0) {
    proj = instance_create(x,y,deathspawn);
    proj.type = type;
    proj.speed = speed;
    proj.num = num;
    proj.spread = spread;
    proj.deathspawn = deathspawn;
    proj.splits = splits - 1;
    
    scrSetProj(proj);
}
    
instance_destroy();

