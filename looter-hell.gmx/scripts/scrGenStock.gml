//ASSAULT RIFLE STOCKS
if (type == "Assault Rifle") {

    rand = round(random_range(1,4));
    switch(rand){
    
    case(1):
    acc = acc*0.98;
    reload = reload*1.02;
    return sprARStock1;
    break;
    
    case(2):
    acc = acc*1.03;
    return sprARStock2;
    break;
    
    case(3):
    acc = acc*1.05;
    return sprARStock3;
    break;
    
    case(4):
    acc = acc*0.97;
    mag = mag*1.05;
    return sprARStock4;
    break;
    
    }

}

//SHOTGUN STOCKS
if (type == "Shotgun") {

    if (grip==sprSGGrip4) return 0;

    rand = round(random_range(1,3));
    switch(rand){
    
    case(1):
    reload = reload*0.97;
    return sprSGStock1;
    break;
    
    case(2):
    acc = acc*0.98;
    damage = damage*1.02;
    bspeed -= 1;
    return sprSGStock2;
    break;
    
    case(3):
    acc = acc*1.04;
    reload = reload*0.99;
    return sprSGStock3;
    break;
    
    }

}

//SNIPER RIFLE STOCKS
if (type == "Sniper Rifle") {

    rand = round(random_range(1,4));
    switch(rand){
    
    case(1):
    acc = acc*0.98;
    reload = reload*1.02;
    return sprSniperStock1;
    break;
    
    case(2):
    damage = damage*1.02;
    reload = reload*0.98;
    return sprSniperStock2;
    break;
    
    case(3):
    damage = damage*0.99;
    acc = acc*1.02;
    return sprSniperStock3;
    break;
    
    case(4):
    damage = damage*0.97;
    rate = rate*1.03;
    return sprSniperStock4;
    break;
    
    }
}

//SMG STOCKS
if (type == "SMG") {

    rand = round(random_range(1,4));
    switch(rand){
    
    case(1):
    acc = acc*1.02;
    reload = reload*1.02;
    return sprSMGStock1;
    break;
    
    case(2):
    acc = acc*1.01;
    reload = reload*1.01;
    return sprSMGStock2;
    break;
    
    case(3):
    reload = reload*0.97;
    return sprSMGStock3;
    break;
    
    case(4):
    reload = reload*0.99;
    return sprSMGStock4;
    break;
    
    }
    
}

//NO STOCK
return 0;
