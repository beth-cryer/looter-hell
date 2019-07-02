if (type == "Pistol") {
    rand = round(random_range(1,5));
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
    access = scrGenAccess();
    texture = texVortex;
    break;
    
    //SLINGSHOT
    case(2):
    name = "Slingshot";
    body = scrGenBody();
    scrElementalChance(50);
    pattern = objPatternSlingshot;
    //BARREL
    barrel = sprSlingshotBarrel;
    damage = damage*1.03;
    bspread = 10;
    bnum += round(random_range(2,4));
    bspeed = 22;
    //GRIP
    grip = sprSlingshotGrip;
    rate = rate*1.05;
    reload = reload*0.95;
    acc = acc*0.96;
    scope = scrGenScope();
    access = scrGenAccess();
    texture = texWood2;
    redtext = "THWPING!";
    break;
    
    //DRAGON
    case(3):
    name = "Dragon";
    body = sprDragonBody;
    damage = 17; acc = 89; rate = 5; reload = 2; mag = 28;
    pattern = objPatternDragon;
    //BARREL
    barrel = sprDragonBarrel;
    bspread = 40;
    bnum = round(random_range(6,9));
    bspeed = 8;
    //GRIP
    grip = scrGenGrip();
    scope = scrGenScope();
    access = 0;
    texture = texScales;
    redtext = "That's rad!";
    break;
    
    //ONESHOT
    case(4):
    name = "ONE SHOT";
    body = sprOSBody;
    damage = 1000; acc = 100; rate = 1; reload = 10; mag = 1; fixed_bnum = 1;
    pattern = objPattern1;
    //BARREL
    barrel = sprOSBarrel;
    bspread = 1;
    bnum = 1;
    bspeed = 4;
    //GRIP
    grip = scrGenGrip();
    scope = scrGenScope();
    access = scrGenAccess();
    texture = texYellow;
    redtext = "EVERY SINGLE DAY";
    break;
    
    //CROW
    case(5):
    name = "Crow";
    body = sprCrowBody;
    damage = 14; acc = 88; rate = 7; reload = 1; mag = 7; fixed_bnum = 1;
    pattern = objPattern1;
    //BARREL
    barrel = sprCrowBarrel;
    bspread = 10;
    bnum = 7;
    bspeed = 6;
    burst = 7;
    //GRIP
    grip = scrGenGrip();
    scope = scrGenScope();
    access = scrGenAccess();
    texture = texDark2;
    redtext = "And so his watch has ended";
    break;
    
    }
}

if (type == "Assault Rifle") {

    rand = round(random_range(1,1));
    switch(rand) {
    
    //BAKURETSU
    case(1):
    name = "Bakuretsu";
    pattern = objPattern1;
    //BODY
    body = scrGenBody();
    //(ignore body stats though)
    damage = 21; acc = 65; rate = 3; reload = 3.5; mag = 20;
    grip = sprBakaGrip;
    //BARREL
    barrel = sprBakaBarrel;
    bspeed = 9;
    bspread = 20;
    bnum = round(random_range(4,5));
    splits = 0;
    scope = scrGenScope();
    stock = scrGenStock();
    access = scrGenAccess();
    element = "Explosive";
    elem_chance = 100;
    texture = texGoldRed;
    redtext = "ECKSUSPUROSHION!!!";
    break;
    
    }
}

if (type == "Shotgun") {

    rand = round(random_range(1,3));
    switch(rand) {
    
    //CHERNOBYL
    case(1):
    name = "Chernobyl";
    pattern = objPatternSlingshot;
    //BODY
    body = sprChernobylBody;
    damage = 30; acc = 80; rate = 2; reload = 2.5; mag = 10; bnum = 12;
    element = scrGenElement("Explosive");
    grip = scrGenGrip();
    //BARREL
    barrel = sprChernobylBarrel;
    bspeed = 6;
    bspread = 60;
    scope = scrGenScope();
    stock = scrGenStock();
    access = scrGenAccess(); //determines gun prefix
    texture = texNuclear;
    redtext = "Oopsie.";
    break;
    
    //MILLION
    case(2):
    name = "Millionaire";
    pattern = objPattern4;
    //BODY
    body = sprMillionBody;
    damage = 18; acc = 72; rate = 1; reload = 3.5; mag = 10; bnum = 24; fixed_bnum = 1;
    grip = scrGenGrip();
    //BARREL
    barrel = sprMillionBarrel;
    bspeed = 10;
    bspread = 180;
    scope = scrGenScope();
    stock = scrGenStock();
    access = scrGenAccess(); //determines gun prefix
    texture = texGold2;
    redtext = "ONE MILLION DOLLARS"
    break;
    
    //MEATSHOT
    case(3):
    name = "Meatshot";
    pattern = objPattern1;
    //BODY
    body = scrGenBody();
    mag = 6;
    reload = 0.25;
    grip = scrGenGrip();
    //BARREL
    barrel = sprMeatshotBarrel;
    damage = damage*1.05;
    bspeed = 15;
    bspread = 5;
    bnum = 10;
    scope = scrGenScope();
    stock = sprMeatshotStock;
    access = scrGenAccess(); //determines gun prefix
    texture = texMetal2;
    element = scrGenElement("None"); //never have an element
    redtext = "8)"
    break;
    
    }

}

if (type == "Sniper Rifle") {

    rand = round(random_range(1,4));
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
    access = scrGenAccess();
    texture = texTech3;
    redtext = "Did you mean: recursion";
    break;
    
    //BLACK HOLE
    case(2):
    name = "Black Hole";
    pattern = objPatternBlackHole;
    //BODY
    body = sprBlackHoleBody;
    damage = 36; acc = 93; rate = 2; reload = 2.5; mag = 20;
    //GRIP
    grip = scrGenGrip();
    barrel = sprBlackHoleBarrel;
    bspeed = 7;
    bspread = 180;
    bnum = round(random_range(7,8));
    scrElementalChance(100);
    scope = 0;
    stock = scrGenStock();
    access = scrGenAccess();
    texture = texBHole;
    redtext = "Does NOT look like an anime eye"
    break;
    
    //BLOODHOUND
    case(3):
    name = "Bloodhound";
    pattern = objPatternBloodhound;
    //BODY
    body = scrGenBody();
    //GRIP
    grip = sprBloodhoundGrip;
    barrel = sprBloodhoundBarrel;
    damage = damage*0.9;
    bspeed = 7;
    bnum = round(random_range(3,4));
    splits = 1;
    scope = scrGenScope();
    stock = scrGenStock();
    access = scrGenAccess();
    texture = texBlood3;
    redtext = "Near, far - Wherever you are"
    break;
    
    //THE WORLD
    case(4):
    name = "The World";
    pattern = objPatternWorld;
    //BODY
    body = sprWorldBody;
    damage = 72; acc = 100; rate = 0.5; reload = 5; mag = 3; fixed_bnum = 1;
    //GRIP
    grip = scrGenGrip();
    barrel = sprWorldBarrel;
    bspeed = 4;
    bspread = 25;
    scope = scrGenScope();
    stock = scrGenStock();
    bnum = round(random_range(4,6));
    access = scrGenAccess();
    texture = texGold3;;
    redtext = "BUT IT WAS ME";
    break;
    
    }
}

if (type == "SMG") {

    rand = round(random_range(1,3));
    switch(rand) {
    
    //VAMPIRE
    case(1):
    name = "Dracula";
    pattern = objPatternVampire;
    //BODY
    body = sprVampireBody;
    damage = 11; acc = 92; rate = 7; reload = 2.5; mag = 28; fixed_bnum = 1;
    scrElementalChance(60);
    grip = scrGenGrip();
    //BARREL
    barrel = sprVampireBarrel;
    bspeed = 10;
    bspread = 180;
    bnum = 2;
    splits = 0;
    scope = scrGenScope();
    stock = scrGenStock();
    access = scrGenAccess();
    texture = texBlood;
    vampire = 4;
    redtext = "1 dead guy! 2 dead guys! 3 dead guys!"
    break;
    
    //GREED
    case(2):
    name = "Greed";
    pattern = objPatternGreed;
    //BODY
    body = sprGreedBody;
    damage = 14; acc = 86; rate = 7.5; reload = 3; mag = 36; fixed_bnum = 1;
    scrElementalChance(60);
    grip = scrGenGrip();
    //BARREL
    barrel = sprGreedBarrel;
    bspeed = 12;
    bspread = 240;
    bnum = 2;
    splits = 0;
    scope = scrGenScope();
    stock = scrGenStock();
    access = scrGenAccess();
    texture = texGreed;
    redtext = "What does it do!?"
    break;
    
    //AQUA
    case(3):
    name = "Aqua";
    pattern = objPattern1;
    //BODY
    body = sprAquaBody;
    damage = 11; acc = 83; rate = 7; reload = 2; mag = 25; fixed_bnum = 1;
    scrElementalChance(75);
    grip = sprAquaGrip;
    //BARREL
    barrel = scrGenBarrel();
    splits = 0;
    scope = scrGenScope();
    stock = 0;
    access = scrGenAccess();
    texture = texAqua;
    redtext = "Not actually all that useless"
    break;
    
    }
}
