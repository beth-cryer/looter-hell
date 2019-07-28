switch(body) {
    
    //PISTOLS

    case(sprPistolBody1):
    damage = 13; acc = 84; rate = 5.5; reload = 1; mag = 20;
    break;
    
    case(sprPistolBody2):
    damage = 18; acc = 80; rate = 4.5; reload = 1.5; mag = 16;
    break;
    
    case(sprPistolBody3):
    damage = 10; acc = 86; rate = 6.5; reload = 2; mag = 25;
    break;
    
    case(sprPistolBody4):
    damage = 21; acc = 87; rate = 3.5; reload = 1.5; mag = 12;
    break;
    
    case(sprPistolBody5):
    damage = 8; acc = 90; rate = 7; reload = 2; mag = 24;
    break;
    
    //ASSAULT RIFLES
    
    case(sprARBody1):
    damage = 9; acc = 83; rate = 8; reload = 2; mag = 35;
    break;
    
    case(sprARBody2):
    damage = 12; acc = 87; rate = 6; reload = 1.5; mag = 25; scrElementalChance(30);
    break;
    
    case(sprARBody3):
    damage = 16; acc = 80; rate = 5.5; reload = 2.5; mag = 30;
    break;
    
    case(sprARBody4):
    damage = 11; acc = 85; rate = 7; reload = 3; mag = 42;
    break;

    case(sprARBody5):
    damage = 14; acc = 73; rate = 6.5; reload = 2; mag = 20; scope = 0;
    break;

    //SHOTGUNS
    
    case(sprSGBody1):
    damage = 16; acc = 82; rate = 2.5; reload = 1.5; mag = 16; scrElementalChance(40);
    break;
    
    case(sprSGBody2):
    damage = 23; acc = 85; rate = 2; reload = 2.5; mag = 10;
    break;
    
    case(sprSGBody3):
    damage = 13; acc = 89; rate = 3; reload = 2; mag = 9;
    break;
    
    case(sprSGBody4):
    damage = 21; acc = 80; rate = 2; reload = 3; mag = 11;
    break;
    
    //SNIPERS
        
    case(sprSniperBody1):
    damage = 27; acc = 89; rate = 2; reload = 2; mag = 8;
    break;
    
    case(sprSniperBody2):
    damage = 32; acc = 93; rate = 1.5; reload = 3; mag = 6;
    break;
    
    case(sprSniperBody3):
    damage = 23; acc = 90; rate = 2; reload = 1.5; mag = 11; scrElementalChance(100);
    break;
    
    case(sprSniperBody4):
    damage = 18; acc = 86; rate = 3; reload = 2; mag = 12;
    break;

    case(sprSniperBody5):
    damage = 20; acc = 95; rate = 2.5; reload = 2.5; mag = 5;
    break;

    //SMGS
    
    case(sprSMGBody1):
    damage = 9; acc = 84; rate = 7; reload = 1.5; mag = 18; scrElementalChance(100);
    break;
    
    case(sprSMGBody2):
    damage = 7; acc = 78; rate = 8.5; reload = 3; mag = 30;
    break;
    
    case(sprSMGBody3):
    damage = 12; acc = 80; rate = 6; reload = 2; mag = 24;
    break;
    
    case(sprSMGBody4):
    damage = 8; acc = 88; rate = 7.5; reload = 2.5; mag = 20; scrElementalChance(30);
    break;
    
    case(sprSMGBody5):
    damage = 8; acc = 91; rate = 8; reload = 2; mag = 15; scrElementalChance(50);
    break;
	
	case(sprSMGBody6):
    damage = 11; acc = 93; rate = 6; reload = 2.5; mag = 26; scrElementalChance(90);
    break;
    
    //SHIELDS
    
    case(sprShieldBody1):
    capacity = 40; chargerate = 15; delay = 4;
    break;
    
    case(sprShieldBody2):
    capacity = 20; chargerate = 20; delay = 5;
    break;
    
    case(sprShieldBody3):
    capacity = 25; chargerate = 25; delay = 3;
    break;
    
    case(sprShieldBody4):
    capacity = 30; chargerate = 10; delay = 2;
    break;

}
