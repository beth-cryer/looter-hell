switch(barrel) {
    
    case(sprPistolBarrel1):
    bspeed = 6;
    bspread = 30;
    bnum += round(random_range(1,2));
    scrElementalChance(60);
    break;
    
    case(sprPistolBarrel2):
    bspeed = 7;
    bspread = 20;
    bnum += round(random_range(1,2));
    damage += 2;
    rate = rate*0.99;
    break;
    
    case(sprPistolBarrel3):
    bspeed = 8;
    bspread = 40;
    damage += 4;
    rate += 2;
    burst = round(random_range(2,3));
    break;
    
    case(sprPistolBarrel4):
    bspeed = 10;
    bspread = 10;
    acc = acc*1.03;
    bnum += round(random_range(0,1));
    break;
    
    case(sprPistolBarrel5):
    rate = rate*1.04;
    damage -= 1;
    bspeed = 8;
    bspread = 60;
    bnum += round(random_range(1,2));
    break;

    //ASSAULT RIFLE BARRELS
    
    case(sprARBarrel1):
    bspeed = 9;
    bspread = 40;
    bnum += round(random_range(1,3));
    damage += 1;
    rate += 1;
    break;
    
    case(sprARBarrel2):
    bspeed = 12;
    bspread = 30;
    bnum += round(random_range(2,3));
    damage += 3;
    rate += 2;
    scrElementalChance(60);
    burst = round(random_range(2,3));
    break;
    
    case(sprARBarrel3):
    bspeed = 11;
    bspread = 20;
    damage += 5;
    rate -= 1;
    bnum += round(random_range(1,2));
    break;
    
    case(sprARBarrel4):
    bspeed = 10;
    bspread = 25;
    bnum += round(random_range(1,3));
    rate = rate*1.03;
    break;
    
    case(sprARBarrel5):
    bspeed = 14;
    bspread = 30;
    bnum += round(random_range(2,4));
    rate += 1;
    damage = damage*0.96;
    break;

    //SHOTGUN BARRELS

    case(sprSGBarrel1):
    bspeed = 10;
    bspread = 30;
    bnum += round(random_range(3,4));
    damage += 2;
    rate += 0.5;
    scrElementalChance(60);
    break;
    
    case(sprSGBarrel2):
    bspeed = 9;
    bspread = 50;
    bnum += round(random_range(2,5));
    damage += 4;
    scrElementalChance(40);
    break;
    
    case(sprSGBarrel3):
    bspeed = 11;
    bspread = 40;
    bnum += round(random_range(2,3));
    damage += 1;
    rate += 1;
    break;
    
    case(sprSGBarrel4):
    bspeed = 14;
    bspread = 25;
    bnum += round(random_range(3,5));
    damage += 2;
    rate -= 0.5;
    break;

    //SNIPER BARRELS
    
    case(sprSniperBarrel1):
    bspeed = 16;
    bspread = 5;
    bnum += round(random_range(0,1));
    burst = round(random_range(2,3));
    acc = acc*1.02;
    rate += 3;
    break;
    
    case(sprSniperBarrel2):
    bspeed = 13;
    bspread = 10;
    bnum += round(random_range(1,2));
    damage = damage*1.02;
    break;
    
    case(sprSniperBarrel3):
    bspeed = 12;
    bspread = 15;
    scrElementalChance(75);
    bnum += round(random_range(0,2));
    damage = damage*1.01;
    break;
    
    case(sprSniperBarrel4):
    bspeed = 14;
    bspread = 20;
    bnum += round(random_range(1,3));
    rate += 1;
    damage = damage*0.96;
    break;

    //SMG BARRELS
    
    case(sprSMGBarrel1):
    bspeed = 11;
    bspread = 10;
    bnum += round(random_range(1,2));
    scrElementalChance(60);
    acc = acc*1.02;
    break;
    
    case(sprSMGBarrel2):
    bspeed = 14;
    bspread = 20;
    bnum += round(random_range(1,3));
    scrElementalChance(40);
    acc = acc*0.99;
    damage = damage*1.01;
    break;
    
    case(sprSMGBarrel3):
    bspeed = 12;
    bspread = 10;
    bnum += round(random_range(2,3));
    acc = acc*1.01;
    damage = damage*1.01;
    rate = rate*0.97;
    burst = round(random_range(2,3));
    break;
    
    case(sprSMGBarrel4):
    bspeed = 13;
    bspread = 7;
    bnum += round(random_range(1,2));
    acc = acc*1.03;
    damage = damage*0.99;
    rate = rate*1.01;
    break;
    
}
