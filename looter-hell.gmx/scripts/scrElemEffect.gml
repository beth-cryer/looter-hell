var rand = round(random(100));
if (rand > other.elem_chance) {
    return false;
}

//spawn element effect if element proc'd
switch(other.element) {

    case("Fire"):
    if (fire == false) {
        fire = true;
        elem_dps = other.elem_dps;
        alarm[0] = room_speed*4;
    }
    break;

    case("Ice"):
    if (frozen == false) frozen = true; alarm[1] = room_speed;
    break;
    
    case("Electric"):
        electric = true;
        elem_dps = other.elem_dps;
        alarm[3] = room_speed*4;
    break;
    
    case("Corrosive"):
    if (corrode == false) {
        corrode = true;
        elem_dps = other.elem_dps;
        alarm[2] = room_speed*4;
    }
    break;

    case("Explosive"):
    ii = instance_create(x,y,objExplosion);
    ii.dps = other.elem_dps;
    break;

}
