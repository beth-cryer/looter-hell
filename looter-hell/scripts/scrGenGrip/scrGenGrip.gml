//PISTOL GRIPS
if (type == "Pistol") {

    rand = irandom_range(1,6);
    switch(rand){
    case(1): grip = sprPistolGrip1; break;
    case(2): grip = sprPistolGrip2; break;
    case(3): grip = sprPistolGrip3; break;
    case(4): grip = sprPistolGrip4; break;
    case(5): grip = sprPistolGrip5; break;
	case(6): grip = sprPistolGrip6; break;
    }

}

//ASSAULT RIFLE GRIPS
if (type == "Assault Rifle") {

    rand = irandom_range(1,6);
    switch(rand){
    case(1): grip = sprARGrip1; break;
    case(2): grip = sprARGrip2; break;
    case(3): grip = sprARGrip3; break;
    case(4): grip = sprARGrip4; break;
	case(5): grip = sprARGrip5; break;
	case(6): grip = sprARGrip6; break;
    }

}

//SHOTGUN GRIPS
if (type == "Shotgun") {

    rand = irandom_range(1,6);
    switch(rand){
    case(1): grip = sprSGGrip1; break;
    case(2): grip = sprSGGrip2; break;
    case(3): grip = sprSGGrip3; break;
    case(4): grip = sprSGGrip4; break;
    case(5): grip = sprSGGrip5; break;
    case(6): grip = sprSGGrip6; break;
    }

}

//SNIPER GRIPS
if (type == "Sniper Rifle") {

    rand = irandom_range(1,6);
    switch(rand){
    case(1): grip = sprSniperGrip1; break;
    case(2): grip = sprSniperGrip2; break;
    case(3): grip = sprSniperGrip3; break;
    case(4): grip = sprSniperGrip4; break;
	case(5): grip = sprSniperGrip5; break;
	case(6): grip = sprSniperGrip6; break;
    }
    
}

//SMG GRIPS
if (type == "SMG") {

    rand = irandom_range(1,6);
    switch(rand){
    case(1): grip = sprSMGGrip1; break;
    case(2): grip = sprSMGGrip2; break;
    case(3): grip = sprSMGGrip3; break;
    case(4): grip = sprSMGGrip4; break;
    case(5): grip = sprSMGGrip5; break;
	case(6): grip = sprSMGGrip6; break;
    }
    
}

//LOOKUP STATS
scrStatsGrip();

return grip;
