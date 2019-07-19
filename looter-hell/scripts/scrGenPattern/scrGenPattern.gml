switch(rarity) {

    case(1):
    rand = round(random_range(1,3));
    switch(rand) {
        case(1): return objPattern1; break;
        case(2): bspread /= 2; return objPattern2; break;
        case(3): return objPattern4; break;
    }
    break;
    
    case(2):
    rand = round(random_range(1,3));
    switch(rand) {
        case(1): return objPattern1; break;
        case(2): return objPattern4; break;
        case(3): return objPattern3; break;
    }
    break;
    
    case(3):
    rand = round(random_range(1,4));
    switch(rand) {
        case(1): return objPattern3; break;
        case(2): return objPattern4; break;
        case(3): return objPattern5; break;
        case(4): return objPattern6; break;
    }
    break;
    
    case(4):
    rand = round(random_range(1,4));
    switch(rand) {
        case(1): return objPattern4; break;
        case(2): return objPattern5; break;
        case(3): return objPattern6; break;
        case(4): damage = damage*0.95; return objPattern7; break;
    }
    break;

}

return objPattern1;