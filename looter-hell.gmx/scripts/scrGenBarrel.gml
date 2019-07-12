//PISTOL BARRELS
if (type == "Pistol") {

    rand = round(random_range(1,5));
    switch(rand){
    
    case(1):
    barrel = sprPistolBarrel1;
    break;
    
    case(2):
    barrel = sprPistolBarrel2;
    break;
    
    case(3):
    barrel = sprPistolBarrel3;
    break;
    
    case(4):
    barrel = sprPistolBarrel4;
    break;
    
    case(5):
    barrel = sprPistolBarrel5;
    break;
    
    }

}

//ASSAULT RIFLE BARRELS
if (type == "Assault Rifle") {

    rand = round(random_range(1,5));
    switch(rand){
    
    case(1):
    barrel = sprARBarrel1;
    break;
    
    case(2):
    barrel = sprARBarrel2;
    break;
    
    case(3):
    barrel = sprARBarrel3;
    break;
    
    case(4):
    barrel = sprARBarrel4;
    break;
    
    case(5):
    barrel = sprARBarrel5;
    break;
    
    }

}

//SHOTGUN BARRELS
if (type == "Shotgun") {

    rand = round(random_range(1,5));
    switch(rand){
    
    case(1):
    barrel = sprSGBarrel1;
    break;
    
    case(2):
    barrel = sprSGBarrel2;
    break;
    
    case(3):
    barrel = sprSGBarrel3;
    break;
    
    case(4):
    barrel = sprSGBarrel4;
    break;
    
    case(5):
    barrel = sprSGBarrel5;
    break;
    
    }

}

//SNIPER BARRELS
if (type == "Sniper Rifle") {

    rand = round(random_range(1,4));
    switch(rand){
    
    case(1):
    barrel = sprSniperBarrel1;
    break;
    
    case(2):
    barrel = sprSniperBarrel2;
    break;
    
    case(3):
    barrel = sprSniperBarrel3;
    break;
    
    case(4):
    barrel = sprSniperBarrel4;
    break;
    
    }
    
}

//SMG BARRELS
if (type == "SMG") {

    rand = round(random_range(1,4));
    switch(rand){
    
    case(1):
    barrel = sprSMGBarrel1;
    break;
    
    case(2):
    barrel = sprSMGBarrel2;
    break;
    
    case(3):
    barrel = sprSMGBarrel3;
    break;
    
    case(4):
    barrel = sprSMGBarrel4;
    break;
    
    }
    
}

//LOOKUP STATS
scrStatsBarrel();

return barrel;
