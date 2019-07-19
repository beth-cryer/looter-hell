//PISTOL SCOPES
if (type == "Pistol") {
    
    //NO SCOPE
    if (random(100) < 50) return 0;

    rand = irandom_range(1,4);
    switch(rand){
    case(1): return sprPistolScope1; break;
    case(2): return sprPistolScope2; break;
    case(3): return sprPistolScope3; break;
    case(4): return sprPistolScope4; break;
    }
}

//ASSAULT RIFLE SCOPES
if (type == "Assault Rifle") {
    
    //NO SCOPE
    if (random(100) < 50) return 0;

    rand = irandom_range(1,4);
    switch(rand){
    case(1): return sprARScope1; break;
    case(2): return sprARScope2; break;
    case(3): return sprARScope3; break;
    case(4): return sprARScope4; break;
    
    }
}

//SHOTGUN SCOPES
if (type == "Shotgun") {
    
    //NO SCOPE
    if (random(100) < 50) return 0;

    rand = irandom_range(1,3);
    switch(rand){
    case(1): return sprSGScope1; break;
    case(2): return sprSGScope2; break;
    case(3): return sprSGScope3; break;
    }
}

//SNIPER RIFLE SCOPES
if (type == "Sniper Rifle") {

    rand = irandom_range(1,3);
    switch(rand){
    case(1): return sprSniperScope1; break;
    case(2): return sprSniperScope2; break;
    case(3): return sprSniperScope3; break;
    }
}

//SMG SCOPES
if (type == "SMG") {

    //NO SCOPE
    if (random(100) < 50) return 0;

    rand = irandom_range(1,4);
    switch(rand){
    case(1): return sprSMGScope1; break;
    case(2): return sprSMGScope2; break;
    case(3): return sprSMGScope3; break;
    case(4): return sprSMGScope4; break;
    }
}

//NO SCOPE
return 0;
