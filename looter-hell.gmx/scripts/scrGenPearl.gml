if (type == "Pistol") {
    rand = round(random_range(1,1));
    stock = 0;
    switch(rand) {
    
    //VORTEX
    case(1):
    name = "Vortex";
    body = scrGenBody();
    scrElementalChance(100);
    pattern = objPatternVortex;
    //BARREL
    barrel = sprVortexBarrel;
    damage = damage*1.02;
    bspread = 90;
    bnum += round(random_range(3,5));
    bspeed = 4;
    //GRIP
    grip = sprVortexGrip;
    rate = rate*0.99;
    reload = reload*0.96;
    mag = mag*1.02;
    scope = scrGenScope();
    access = 0;
    texture = texVortex;
    break;
    
    }
}

if (type == "Assault Rifle") {

    rand = round(random_range(1,1));
    switch(rand) {
    
    //TORNADO
    case(1):
    name = "Tornado";
    pattern = objPatternTornado;
    //BODY
    body = scrGenBody();
    //damage = 12; acc = 85; rate = 5; reload = 3; mag = 35;
    grip = sprTornadoGrip;
    //BARREL
    barrel = sprTornadoBarrel;
    bspeed = 4;
    bspread = 180;
    bnum = 6;
    splits = 1;
    scope = scrGenScope();
    stock = scrGenStock();
    access = 0;
    texture = texVortex;
    redtext = "uwu";
    break;
    
    }
}

if (type == "Shotgun") {

    rand = round(random_range(1,1));
    switch(rand) {
    
    //SCARLET DEVIL
    case(1):
    name = "Scarlet Devil";
    pattern = objPatternScarlet;
    //BODY
    body = sprScarletBody;
    damage = 10; acc = 85; rate = 3; reload = 3; mag = 30; bnum = 8;
    grip = scrGenGrip();
    //BARREL
    barrel = sprScarletBarrel;
    bspeed = 8;
    bspread = 180;
    scope = 0;
    stock = scrGenStock();
    access = 0; //determines gun prefix
    texture = texBlood2;
    redtext = "U.N.Owen";
    break;
    
    }

}

if (type == "Sniper Rifle") {

    rand = round(random_range(1,1));
    switch(rand) {
    
    //RECURSIVE
    case(1):
    name = "Recursive Assassin";
    pattern = objPatternRecursive;
    //BODY
    body = sprRecursiveBody;
    damage = 28; acc = 80; rate = 1; reload = 4; mag = 6;
    scrElementalChance(50);
    //GRIP
    grip = sprRecursiveGrip;
    barrel = scrGenBarrel();
    splits = 3;
    scope = scrGenScope();
    stock = scrGenStock();
    bnum = round(random_range(3,4));
    access = 0;
    texture = texTech3;
    redtext = "Did you mean: recursion";
    break;
    
    }
}

if (type == "SMG") {

    rand = round(random_range(1,1));
    switch(rand) {
    
    //SANDSTORM
    case(1):
    name = "Sandstorm";
    pattern = objPatternBlossom;
    //BODY
    body = sprSandstormBody;
    damage = 5; acc = 82; rate = 6; reload = 3.5; mag = 40;
    scrElementalChance(60);
    grip = scrGenGrip();
    //BARREL
    barrel = sprSandstormBarrel;
    bspeed = 5;
    bspread = 80;
    bnum = round(random_range(6,8));
    splits = 1;
    scope = scrGenScope();
    stock = scrGenStock();
    access = 0;
    texture = texSand;
    if (random(100) <= 1) prefix = "Darude"; //meme
    redtext = "DUDUDUDUDU"
    break;
    
    }
}