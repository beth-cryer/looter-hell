switch(grip) {
    
    //PISTOL GRIPS
    
    case(sprPistolGrip1):
    reload = reload*0.97;
    mag = mag*1.04;
    prefix = "Stabilised";
    break;
    
    case(sprPistolGrip2):
    scrElementalChance(80);
    reload = reload*1.05;
    mag = mag*1.05;
    prefix = "Neon";
    break;
    
    case(sprPistolGrip3):
    reload = reload*0.96;
    mag = mag*0.96;
    prefix = "Combat";
    break;
    
    case(sprPistolGrip4):
    mag = mag*0.97;
    prefix = "Compact";
    break;
    
    case(sprPistolGrip5):
    rate = rate*1.04;
    mag = mag*1.02;
    prefix = "Forsaken";
    break;

    case(sprPistolGrip6):
	scrElementalChance(25);
    rate = rate*1.05;
    mag = mag*1.05;
	damage = damage*0.95;
    prefix = "Technical";
    break;

    //ASSAULT RIFLE GRIPS
    
    case(sprARGrip1):
    rate = rate*1.02;
    damage = damage*0.97;
    prefix = "Rapid";
    break;
    
    case(sprARGrip2):
    acc = acc*1.05;
    prefix = "Focused";
    break;
    
    case(sprARGrip3):
    damage = damage*1.03;
    reload = reload*0.98;
    rate = rate*0.96;
    prefix = "Powerful";
    break;
    
    case(sprARGrip4):
    damage = damage*1.02;
    reload = reload*1.02;
    mag = mag*1.05;
    prefix = "Packed";
    break;
    
    case(sprARGrip5):
    damage = damage*0.98;
	rate = rate*1.05;
    prefix = "Hydraulic";
    break;
    
    //SHOTGUN GRIPS
    
    case(sprSGGrip1):
    rate = rate*1.02;
    damage = damage*0.97;
    prefix = "Filled";
    break;
    
    case(sprSGGrip2):
    damage = damage*1.02;
    rate = rate*0.96;
    prefix = "Thick";
    break;
    
    case(sprSGGrip3):
    damage = damage*0.98;
    acc = acc*1.06;
    reload = reload*1.02;
    rate = rate*1.03;
    prefix = "Stable";
    break;
    
    case(sprSGGrip4):
    damage = damage*1.02;
    acc = acc*1.03;
    rate = rate*0.98;
    prefix = "Hammer";
    break;
    
    case(sprSGGrip5):
    damage = damage*1.04;
    acc = acc*0.96;
    rate = rate*1.02;
    prefix = "Rider";
    break;
    
    //SNIPER GRIPS
    
    case(sprSniperGrip1):
    acc = acc*1.04;
    prefix = "Stable";
    break;
    
    case(sprSniperGrip2):
    reload = reload*1.03;
    mag = mag*1.04;
    prefix = "Compact";
    break;
    
    case(sprSniperGrip3):
    damage = damage*1.02;
    prefix = "Tough";
    break;
    
    case(sprSniperGrip4):
    rate = rate*1.03;
    prefix = "Rapid";
    break;

    case(sprSniperGrip5):
    rate = rate*0.98;
	acc = acc*1.04;
    prefix = "Longbow";
    break;

    //SMG GRIPS
    
    case(sprSMGGrip1):
    acc = acc*1.04;
    reload = reload*0.96;
    prefix = "Arc";
    break;
    
    case(sprSMGGrip2):
    mag = mag*1.02;
    rate = rate*1.03;
    prefix = "Light";
    break;
    
    case(sprSMGGrip3):
    mag = mag*1.02;
    acc = acc*1.04;
    prefix = "Stabilised";
    break;
    
    case(sprSMGGrip4):
    mag = mag*1.06;
    acc = acc*1.02;
    prefix = "Loaded";
    break;
    
    case(sprSMGGrip5):
    mag = mag*0.96;
    acc = acc*1.05;
    reload = reload*0.99;
    prefix = "Tactical";
    break;
	
    case(sprSMGGrip6):
    mag = mag*1.06;
    acc = acc*1.03;
    reload = reload*1.05;
    prefix = "Hydraulic";
    break;
    
}