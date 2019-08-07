//PISTOL BODYS
if (type == "Pistol") {

    rand = irandom_range(1,5);
    switch(rand){
    case(1): body = sprPistolBody1; break;
    case(2): body = sprPistolBody2; break;
    case(3): body = sprPistolBody3; break; 
    case(4): body = sprPistolBody4; break;
    case(5): body = sprPistolBody5; break;
    }

}

//ASSAULT RIFLE BODYS
if (type == "Assault Rifle") {

    rand = irandom_range(1,6);
    switch(rand){
    case(1): body = sprARBody1; break;
    case(2): body = sprARBody2; break;
    case(3): body = sprARBody3; break;
    case(4): body = sprARBody4; break;
	case(5): body = sprARBody5; break;
	case(6): body = sprARBody6; break;
    }

}

//SHOTGUN BODYS
if (type == "Shotgun") {

    rand = irandom_range(1,5);
    switch(rand){
    case(1): body = sprSGBody1; break;
    case(2): body = sprSGBody2; break;
    case(3): body = sprSGBody3; break;
    case(4): body = sprSGBody4; break;
	case(5): body = sprSGBody5; break;
    }

}

//SNIPER BODYS
if (type == "Sniper Rifle") {

    rand = irandom_range(1,5);
    switch(rand){
    case(1): body = sprSniperBody1; break;
    case(2): body = sprSniperBody2; break;
    case(3): body = sprSniperBody3; break;
    case(4): body = sprSniperBody4; break;
    case(5): body = sprSniperBody5; break;
	}
    

}

//SMG BODYS
if (type == "SMG") {

    rand = irandom_range(1,6);
    switch(rand){
    case(1): body = sprSMGBody1; break;
    case(2): body = sprSMGBody2; break;
    case(3): body = sprSMGBody3; break;
    case(4): body = sprSMGBody4; break;
    case(5): body = sprSMGBody5; break;
    case(6): body = sprSMGBody6; break;
	}

}

//SHIELD BODYS
if (type == "Shield") {

    rand = irandom_range(1,4);
    switch(rand){
    case(1): body = sprShieldBody1; break;
    case(2): body = sprShieldBody2; break;
    case(3): body = sprShieldBody3; break;
    case(4): body = sprShieldBody4; break;
    }

}

//LOOKUP STATS
scrStatsBody();

return body;
