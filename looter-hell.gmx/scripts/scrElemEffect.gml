rand = round(random(100));
if (rand > elem_chance) {
    return false;
}

//spawn element effect if element proc'd
switch(element) {

    case("Fire"):
    if (other.fire == false) {
        other.fire = true;
        other.elem_dps = elem_dps;
        other.alarm[0] = room_speed*4;
    }
    break;

    case("Ice"):
    if (other.frozen == false) other.frozen = true; other.alarm[1] = room_speed;
    break;
    
    case("Electric"):
        other.electric = true;
        other.elem_dps = elem_dps;
        other.alarm[3] = room_speed*4;
    break;
    
    case("Corrosive"):
    if (other.corrode == false) {
        other.corrode = true;
        other.elem_dps = elem_dps;
        other.alarm[2] = room_speed*4;
    }
    break;

    case("Explosive"):
    ii = instance_create(x,y,objExplosion);
    ii.dps = elem_dps;
    break;

}
