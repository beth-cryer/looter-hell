switch(stock) {

    //ASSAULT RIFLE STOCKS
    
    case(sprARStock1):
    acc = acc*0.98;
    reload = reload*1.02;
    break;
    
    case(sprARStock2):
    acc = acc*1.03;
    break;
    
    case(sprARStock3):
    acc = acc*1.05;
    break;
    
    case(sprARStock4):
    acc = acc*0.97;
    mag = mag*1.05;
    break;
    
    case(sprARStock5):
    acc = acc*1.02;
    rate = rate*1.03;
    break;
	
    case(sprARStock6):
	damage = damage*1.01;
    acc = acc*1.04;
    rate = rate*1.02;
    break;
    
    //SHOTGUN STOCKS
    
    case(sprSGStock1):
    reload = reload*0.97;
    break;
    
    case(sprSGStock2):
    acc = acc*0.98;
    damage = damage*1.02;
    bspeed -= 1;
    break;
    
    case(sprSGStock3):
    acc = acc*1.04;
    reload = reload*0.99;
    break;
    
    //SNIPER RIFLE STOCKS
    
    case(sprSniperStock1):
    acc = acc*0.98;
    reload = reload*1.02;
    break;
    
    case(sprSniperStock2):
    damage = damage*1.02;
    reload = reload*0.98;
    break;
    
    case(sprSniperStock3):
    damage = damage*0.99;
    acc = acc*1.02;
    break;
    
    case(sprSniperStock4):
    damage = damage*0.97;
    rate = rate*1.03;
    break;
    
    case(sprSniperStock5):
    acc = acc*1.04;
	rate = rate*1.02;
    break;
    
    //SMG STOCKS
    
    case(sprSMGStock1):
    acc = acc*1.02;
    reload = reload*1.02;
    break;
    
    case(sprSMGStock2):
    acc = acc*1.01;
    reload = reload*1.01;
    break;
    
    case(sprSMGStock3):
    reload = reload*0.97;
    break;
    
    case(sprSMGStock4):
    reload = reload*0.99;
    break;
    
    case(sprSMGStock5):
    reload = reload*0.95;
    acc = acc*0.98;
    break;
	
    case(sprSMGStock6):
    reload = reload*0.98;
    break;
    
}