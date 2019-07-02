//PISTOL BARRELS
if (type == "Pistol") {

    rand = round(random_range(1,5));
    switch(rand){
    
    case(1):
    bspeed = 6;
    bspread = 30;
    bnum += round(random_range(1,2));
    scrElementalChance(60);
    return sprPistolBarrel1;
    break;
    
    case(2):
    bspeed = 7;
    bspread = 20;
    bnum += round(random_range(1,2));
    damage += 2;
    rate = rate*0.99;
    return sprPistolBarrel2;
    break;
    
    case(3):
    bspeed = 8;
    bspread = 40;
    damage += 4;
    rate += 2;
    burst = round(random_range(2,3));
    return sprPistolBarrel3;
    break;
    
    case(4):
    bspeed = 10;
    bspread = 10;
    acc = acc*1.03;
    bnum += round(random_range(0,1));
    return sprPistolBarrel4;
    break;
    
    case(5):
    rate = rate*1.04;
    damage -= 1;
    bspeed = 8;
    bspread = 60;
    bnum += round(random_range(1,2));
    return sprPistolBarrel5;
    break;
    
    }

}

//ASSAULT RIFLE BARRELS
if (type == "Assault Rifle") {

    rand = round(random_range(1,4));
    switch(rand){
    
    case(1):
    bspeed = 9;
    bspread = 40;
    bnum += round(random_range(1,3));
    damage += 1;
    rate += 1;
    return sprARBarrel1;
    break;
    
    case(2):
    bspeed = 12;
    bspread = 30;
    bnum += round(random_range(2,3));
    damage += 3;
    rate += 2;
    scrElementalChance(60);
    burst = round(random_range(2,3));
    return sprARBarrel2;
    break;
    
    case(3):
    bspeed = 11;
    bspread = 20;
    damage += 5;
    rate -= 1;
    bnum += round(random_range(1,2));
    return sprARBarrel3;
    break;
    
    case(4):
    bspeed = 10;
    bspread = 25;
    bnum += round(random_range(1,3));
    rate = rate*1.03;
    return sprARBarrel4;
    break;
    
    }

}

//SHOTGUN BARRELS
if (type == "Shotgun") {

    rand = round(random_range(1,4));
    switch(rand){
    
    case(1):
    bspeed = 10;
    bspread = 30;
    bnum += round(random_range(3,4));
    damage += 2;
    rate += 0.5;
    scrElementalChance(60);
    return sprSGBarrel1;
    break;
    
    case(2):
    bspeed = 9;
    bspread = 50;
    bnum += round(random_range(2,5));
    damage += 4;
    scrElementalChance(40);
    return sprSGBarrel2;
    break;
    
    case(3):
    bspeed = 11;
    bspread = 40;
    bnum += round(random_range(2,3));
    damage += 1;
    rate += 1;
    return sprSGBarrel3;
    break;
    
    case(4):
    bspeed = 14;
    bspread = 25;
    bnum += round(random_range(3,5));
    damage += 2;
    rate -= 0.5;
    return sprSGBarrel4;
    break;
    
    }

}

//SNIPER BARRELS
if (type == "Sniper Rifle") {

    rand = round(random_range(1,4));
    switch(rand){
    
    case(1):
    bspeed = 16;
    bspread = 5;
    bnum += round(random_range(0,1));
    burst = round(random_range(2,3));
    acc = acc*1.02;
    rate += 3;
    return sprSniperBarrel1;
    break;
    
    case(2):
    bspeed = 13;
    bspread = 10;
    bnum += round(random_range(1,2));
    damage = damage*1.02;
    return sprSniperBarrel2;
    break;
    
    case(3):
    bspeed = 12;
    bspread = 15;
    scrElementalChance(75);
    bnum += round(random_range(0,2));
    damage = damage*1.01;
    return sprSniperBarrel3;
    break;
    
    case(4):
    bspeed = 14;
    bspread = 20;
    bnum += round(random_range(1,3));
    rate += 0.5;
    damage = damage*0.97;
    return sprSniperBarrel4;
    break;
    
    }
    
}

//SMG BARRELS
if (type == "SMG") {

    rand = round(random_range(1,4));
    switch(rand){
    
    case(1):
    bspeed = 11;
    bspread = 10;
    bnum += round(random_range(1,2));
    scrElementalChance(60);
    acc = acc*1.02;
    return sprSMGBarrel1;
    break;
    
    case(2):
    bspeed = 14;
    bspread = 20;
    bnum += round(random_range(1,3));
    scrElementalChance(40);
    acc = acc*0.99;
    damage = damage*1.01;
    return sprSMGBarrel2;
    break;
    
    case(3):
    bspeed = 12;
    bspread = 10;
    bnum += round(random_range(2,3));
    acc = acc*1.01;
    damage = damage*1.01;
    rate = rate*0.97;
    burst = round(random_range(2,3));
    return sprSMGBarrel3;
    break;
    
    case(4):
    bspeed = 13;
    bspread = 7;
    bnum += round(random_range(1,2));
    acc = acc*1.03;
    damage = damage*0.99;
    rate = rate*1.01;
    return sprSMGBarrel4;
    break;
    
    }
    
}
