if (x+128 < room_width) {
    proj = instance_create(x,y,objPatternBlackHole);
    proj.type = type;
    proj.speed = speed;
    proj.num = num;
    proj.spread = spread;

    scrSetProj(proj);
}

instance_destroy();

