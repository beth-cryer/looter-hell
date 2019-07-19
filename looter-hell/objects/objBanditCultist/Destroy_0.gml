event_inherited();

scrShake(32,0.8);

with(objProjectile) {
    if (owner == 1) {
    effect_create_below(ef_explosion,x,y,1,c_blue);
    instance_destroy();
    }
}

