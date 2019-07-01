//PISTOL GRIPS
if (type == "Pistol") {

    rand = round(random_range(1,5));
    switch(rand){
    
    case(1):
    reload = reload*0.97;
    mag = mag*1.04;
    prefix = "Stabilised";
    return sprPistolGrip1;
    break;
    
    case(2):
    scrElementalChance(80);
    reload = reload*1.05;
    mag = mag*1.05;
    prefix = "Technical";
    return sprPistolGrip2;
    break;
    
    case(3):
    reload = reload*0.96;
    mag = mag*0.96;
    prefix = "Combat";
    return sprPistolGrip3;
    break;
    
    case(4):
    mag = mag*0.97;
    prefix = "Compact";
    return sprPistolGrip4;
    break;
    
    case(5):
    rate = rate*1.04;
    mag = mag*1.02;
    prefix = "Forsaken";
    return sprPistolGrip5;
    break;
    
    }

}

//ASSAULT RIFLE GRIPS
if (type == "Assault Rifle") {

    rand = round(random_range(1,4));
    switch(rand){
    
    case(1):
    rate = rate*1.02;
    damage = damage*0.97;
    prefix = "Rapid";
    return sprARGrip1;
    break;
    
    case(2):
    acc = acc*1.05;
    prefix = "Focused";
    return sprARGrip2;
    break;
    
    case(3):
    damage = damage*1.03;
    reload = reload*0.98;
    rate = rate*0.96;
    prefix = "Powerful";
    return sprARGrip3;
    break;
    
    case(4):
    damage = damage*1.02;
    reload = reload*1.02;
    mag = mag*1.05;
    prefix = "Packed";
    return sprARGrip4;
    break;
    
    }

}

//SHOTGUN GRIPS
if (type == "Shotgun") {

    rand = round(random_range(1,4));
    switch(rand){
    
    case(1):
    rate = rate*1.02;
    damage = damage*0.97;
    prefix = "Filled";
    return sprSGGrip1;
    break;
    
    case(2):
    damage = damage*1.02;
    rate = rate*0.96;
    prefix = "Thick";
    return sprSGGrip2;
    break;
    
    case(3):
    damage = damage*0.98;
    acc = acc*1.06;
    reload = reload*1.02;
    rate = rate*1.03;
    prefix = "Stable";
    return sprSGGrip3;
    break;
    
    case(4):
    damage = damage*1.02;
    acc = acc*1.03;
    rate = rate*0.98;
    prefix = "Hammer";
    return sprSGGrip4;
    break;
    
    }

}

//SNIPER GRIPS
if (type == "Sniper Rifle") {

    rand = round(random_range(1,4));
    switch(rand){
    
    case(1):
    acc = acc*1.04;
    prefix = "Stable";
    return sprSniperGrip1;
    break;
    
    case(2):
    reload = reload*1.03;
    mag = mag*1.04;
    prefix = "Compact";
    return sprSniperGrip2;
    break;
    
    case(3):
    damage = damage*1.02;
    prefix = "Tough";
    return sprSniperGrip3;
    break;
    
    case(4):
    rate = rate*1.03;
    prefix = "Rapid";
    return sprSniperGrip4;
    break;
    
    }
    
}

//SMG GRIPS
if (type == "SMG") {

    rand = round(random_range(1,4));
    switch(rand){
    
    case(1):
    acc = acc*1.04;
    prefix = "Arc";
    return sprSMGGrip1;
    break;
    
    case(2):
    mag = mag*1.02;
    rate = rate*1.03;
    prefix = "Light";
    return sprSMGGrip2;
    break;
    
    case(3):
    mag = mag*1.02;
    acc = acc*1.04;
    prefix = "Stabilised";
    return sprSMGGrip3;
    break;
    
    case(4):
    mag = mag*1.06;
    acc = acc*1.02;
    prefix = "Loaded";
    return sprSMGGrip4;
    break;
    
    }
    
}