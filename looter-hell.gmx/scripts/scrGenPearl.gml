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
    btype = objBulletSphere;
    //GRIP
    grip = sprVortexGrip;
    rate = rate*0.99;
    reload = reload*0.96;
    mag = mag*1.02;
    scope = scrGenScope();
    access = scrGenAccess();
    texture = texVortex;
    break;
    
    }
}

if (type == "Assault Rifle") {

    rand = round(random_range(1,3));
    switch(rand) {
    
    //TORNADO
    case(1):
    name = "Cyclone";
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
    btype = objBulletSphere;
    splits = 1;
    scope = scrGenScope();
    stock = scrGenStock();
    access = scrGenAccess();
    texture = texVortex;
    redtext = "Cloudy with a chance of death";
    break;
    
    //CHERRY BLOSSOM
    case(2):
    name = "Cherry Blossom";
    pattern = objPatternBlossom;
    //BODY
    body = sprCBlossomBody;
    damage = 12; acc = 80; rate = 4; reload = 4; mag = 32;
    grip = scrGenGrip();
    //BARREL
    barrel = sprCBlossomBarrel;
    bspeed = 5;
    bspread = 180;
    bnum = round(random_range(8,10));
    btype = objPetal;
    splits = 1;
    scope = scrGenScope();
    stock = scrGenStock();
    access = scrGenAccess();
    texture = texPink2;
    redtext = "Spring blooms";
    break;
    
    //BFG
    case(3):
    name = "BFG";
    pattern = objPattern1;
    //BODY
    body = sprBFGBody;
    damage = 60; acc = 88; rate = 1; reload = 2.5; mag = 10;
    grip = sprBFGGrip;
    //BARREL
    barrel = sprBFGBarrel;
    bspeed = 7;
    bspread = 1;
    btype = objBFGBullet;
    bnum = 1;
    scope = scrGenScope();
    stock = scrGenStock();
    access = scrGenAccess();
    texture = texTech2;
    redtext = "Big friendly giant?";
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
    damage = 10; acc = 85; rate = 3; reload = 3; mag = 25; bnum = 8;
    grip = scrGenGrip();
    //BARREL
    barrel = sprScarletBarrel;
    bspeed = 8;
    bspread = 180;
    btype = objScarlet;
    scope = 0;
    stock = 0;
    access = scrGenAccess(); //determines gun prefix
    texture = texBlood2;
    redtext = "U.N Owen Was Her?";
    break;
    
    }

}

if (type == "Sniper Rifle") {

    rand = round(random_range(1,2));
    switch(rand) {
    
    //THE WORLD
    case(1):
    name = "The World";
    pattern = objPattern4;
    //BODY
    body = sprWorldBody;
    damage = 50; acc = 100; rate = 0.5; reload = 3; mag = 3; fixed_bnum = 1;
    //GRIP
    grip = scrGenGrip();
    barrel = sprWorldBarrel;
    bspeed = 4;
    bspread = 25;
    btype = objKnife;
    scope = scrGenScope();
    stock = scrGenStock();
    bnum = round(random_range(4,6));
    access = scrGenAccess();
    texture = texGold3;;
    redtext = "BUT IT WAS ME";
    break;
    
    //BLOODHOUND
    case(2):
    name = "Bloodhound";
    pattern = objPatternBloodhound;
    body = scrGenBody();
    //GRIP
    grip = sprBloodhoundGrip;
    //BARREL
    barrel = sprBloodhoundBarrel;
    damage = damage*0.9;
    bspeed = 7;
    bnum = round(random_range(3,4));
    btype = objBloodhound;
    splits = 2;
    scope = scrGenScope();
    stock = scrGenStock();
    access = scrGenAccess();
    texture = texBlood3;
    redtext = "Near, far - Wherever you are"
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
    btype = objBulletSphere;
    bnum = round(random_range(6,8));
    splits = 1;
    scope = scrGenScope();
    stock = scrGenStock();
    access = scrGenAccess();
    texture = texSand;
    if (random(100) <= 1) prefix = "Darude"; //meme
    redtext = "DUDUDUDUDU"
    break;
    
    }
}

if(type == "Shield") {

    rand = round(random_range(1,1));
    switch(rand) {
    
    //BEE
    case(1):
    name = "Bee";
    body = sprShieldBody4;
    capacity = 40; chargerate = 20; delay = 2;
    arm = scrGenArm();
    battery = scrGenBattery();
    redtext = "NOT THE BEES";
    break;
    
    }

}
