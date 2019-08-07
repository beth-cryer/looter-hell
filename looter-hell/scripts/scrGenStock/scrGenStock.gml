stock = 0;

//ASSAULT RIFLE STOCKS
if (type == "Assault Rifle") {

    rand = irandom_range(1,6);
    switch(rand){
    case(1): stock = sprARStock1; break;
    case(2): stock = sprARStock2; break;
    case(3): stock = sprARStock3; break;
    case(4): stock = sprARStock4; break;
	case(5): stock = sprARStock5; break;
	case(6): stock = sprARStock6; break;
    }

}

//SHOTGUN STOCKS
if (type == "Shotgun") {

    if (grip == sprSGGrip4) return 0;

    rand = irandom_range(1,3);
    switch(rand){
    case(1): stock = sprSGStock1; break;
    case(2): stock = sprSGStock2; break;
    case(3): stock = sprSGStock3; break;
    }

}

//SNIPER RIFLE STOCKS
if (type == "Sniper Rifle") {

    rand = irandom_range(1,4);
    switch(rand){
    case(1): stock = sprSniperStock1; break;
    case(2): stock = sprSniperStock2; break;
    case(3): stock = sprSniperStock3; break;
    case(4): stock = sprSniperStock4; break;
	case(5): stock = sprSniperStock5; break;
    }
}

//SMG STOCKS
if (type == "SMG") {

    rand = irandom_range(1,6);
    switch(rand){
    case(1): stock = sprSMGStock1; break;
    case(2): stock = sprSMGStock2; break;
    case(3): stock = sprSMGStock3; break;
    case(4): stock = sprSMGStock4; break;
    case(5): stock = sprSMGStock5; break;
	case(6): stock = sprSMGStock6; break;
    }
    
}

//LOOKUP STATS
scrStatsStock();

return stock;
