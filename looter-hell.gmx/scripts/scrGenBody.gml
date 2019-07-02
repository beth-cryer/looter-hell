//PISTOL BODYS
if (type == "Pistol") {

    rand = round(random_range(1,4));
    switch(rand){
    
    case(1):
    damage = 11; acc = 84; rate = 6; reload = 3; mag = 20;
    return sprPistolBody1;
    break;
    
    case(2):
    damage = 18; acc = 80; rate = 4.5; reload = 2; mag = 16;
    return sprPistolBody2;
    break;
    
    case(3):
    damage = 9; acc = 90; rate = 7; reload = 2; mag = 25;
    return sprPistolBody3;
    break;
    
    case(4):
    damage = 21; acc = 87; rate = 3.5; reload = 1.5; mag = 12;
    return sprPistolBody4;
    break;
    
    }

}

//ASSAULT RIFLE BODYS
if (type == "Assault Rifle") {

    rand = round(random_range(1,4));
    switch(rand){
    
    case(1):
    damage = 9; acc = 83; rate = 8; reload = 2.5; mag = 35;
    return sprARBody1;
    break;
    
    case(2):
    damage = 12; acc = 87; rate = 6; reload = 2.5; mag = 25; scrElementalChance(30);
    return sprARBody2;
    break;
    
    case(3):
    damage = 14; acc = 80; rate = 6; reload = 3; mag = 30;
    return sprARBody3;
    break;
    
    case(4):
    damage = 11; acc = 85; rate = 7; reload = 3.5; mag = 42;
    return sprARBody4;
    break;
    
    }

}

//SHOTGUN BODYS
if (type == "Shotgun") {

    rand = round(random_range(1,4));
    switch(rand){
    
    case(1):
    damage = 16; acc = 82; rate = 2.5; reload = 4; mag = 16; scrElementalChance(40);
    return sprSGBody1;
    break;
    
    case(2):
    damage = 23; acc = 85; rate = 2; reload = 3.5; mag = 10; bnum = 2;
    return sprSGBody2;
    break;
    
    case(3):
    damage = 13; acc = 89; rate = 3; reload = 2; mag = 9;
    return sprSGBody3;
    break;
    
    case(4):
    damage = 21; acc = 80; rate = 2; reload = 2.5; mag = 11;
    return sprSGBody4;
    break;
    
    }

}

//SNIPER BODYS
if (type == "Sniper Rifle") {

    rand = round(random_range(1,4));
    switch(rand){
    
    case(1):
    damage = 27; acc = 89; rate = 2; reload = 2; mag = 8;
    return sprSniperBody1;
    break;
    
    case(2):
    damage = 32; acc = 93; rate = 1.5; reload = 3; mag = 6;
    return sprSniperBody2;
    break;
    
    case(3):
    damage = 23; acc = 90; rate = 2; reload = 2.5; mag = 11; scrElementalChance(100);
    return sprSniperBody3;
    break;
    
    case(4):
    damage = 19; acc = 86; rate = 3; reload = 2; mag = 12;
    return sprSniperBody4;
    break;
    
    }

}

//SMG BODYS
if (type == "SMG") {

    rand = round(random_range(1,4));
    switch(rand){
    
    case(1):
    damage = 9; acc = 84; rate = 7; reload = 1.5; mag = 18; scrElementalChance(100);
    return sprSMGBody1;
    break;
    
    case(2):
    damage = 7; acc = 78; rate = 8.5; reload = 3; mag = 30;
    return sprSMGBody2;
    break;
    
    case(3):
    damage = 12; acc = 80; rate = 6; reload = 2; mag = 24;
    return sprSMGBody3;
    break;
    
    case(4):
    damage = 8; acc = 88; rate = 7.5; reload = 2.5; mag = 20; scrElementalChance(50);
    return sprSMGBody4;
    break;
    
    }

}
