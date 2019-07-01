//loop until value returned
while(1) {
    rand = round(random_range(1,5));

    switch(rand){
        case(1): return "Pistol"; break;
        case(2): return "Assault Rifle"; break;
        case(3): return "Shotgun"; break;
        case(4): return "Sniper Rifle"; break;
        case(5): return "SMG"; break;
    }

}