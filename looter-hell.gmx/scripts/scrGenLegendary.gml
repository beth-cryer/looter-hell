if (type == "Pistol") {
    rand = round(random_range(1,6));
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
    redtext = "Eye of the storm";
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
    bspeed = 4;
    //GRIP
    grip = scrGenGrip();
    scope = scrGenScope();
    access = scrGenAccess();
    bnum = 1;
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
    bspeed = 6;
    burst = 7;
    //GRIP
    grip = scrGenGrip();
    scope = scrGenScope();
    access = scrGenAccess();
    bnum = 7;
    texture = texDark2;
    redtext = "And now his watch is ended";
    break;
    
    //DEFILER
    case(6):
    name = "Pestilence";
    body = scrGenBody();
    pattern = objPattern4;
    //BARREL
    barrel = sprDefilerBarrel;
    bspread = 10;
    bnum += round(random_range(2,3));
    bspeed = 11;
    //GRIP
    grip = sprDefilerGrip;
    rate = rate*0.96;
    reload = reload*0.96;
    scope = scrGenScope();
    access = scrGenAccess();
    element = "Corrosive";
    texture = texToxic;
    redtext = "Down with the sickness";
    break;
    
    }
}

if (type == "Assault Rifle") {

    rand = round(random_range(1,4));
    switch(rand) {
    
    //BAKURETSU
    case(1):
    name = "Bakuretsu";
    pattern = objPattern1;
    //BODY
    body = scrGenBody();
    //(ignore body stats though)
    damage = 21; acc = 65; rate = 3; reload = 2.5; mag = 20;
    grip = sprBakaGrip;
    //BARREL
    barrel = sprBakaBarrel;
    bspeed = 9;
    bspread = 15;
    bnum = round(random_range(4,5));
    scope = scrGenScope();
    stock = scrGenStock();
    access = scrGenAccess();
    element = "Explosive";
    elem_chance = 100;
    texture = texGoldRed;
    redtext = "ECKSUSPUROSHION!!!";
    break;
    
    //CHAINGUN
    case(2):
    name = "Chain-Gun";
    pattern = objPattern1;
    //BODY
    body = sprARBody4
    damage = 12; acc = 60; rate = 9; reload = 3.5; mag = 50;
    grip = scrGenGrip();
    //BARREL
    barrel = sprARBarrel5;
    bspeed = 11;
    bspread = 15;
    bnum = round(random_range(4,5));
    scope = scrGenScope();
    stock = scrGenStock();
    access = scrGenAccess();
    texture = texFlag;
    redtext = "Smoking kills";
    break;
    
    //LEAD RAIN
    case(3):
    name = "Lead Rain";
    pattern = objPattern1;
    //BODY
    body = sprARBody4
    damage = 6; acc = 80; rate = 8; reload = 2.5; mag = 20; fixed_bnum = 1;
    grip = scrGenGrip();
    //BARREL
    barrel = sprARBarrel5;
    bspeed = 11;
    bspread = 25;
    bnum = 16;
    scope = scrGenScope();
    stock = scrGenStock();
    access = scrGenAccess();
    texture = texMetal2;
    redtext = "It's a terrible day for rain";
    break;
    
    //FROSTBITE
    case(4):
    name = "Frostbite";
    pattern = objPattern1;
    body = scrGenBody();
    //GRIP
    grip = sprFrostbiteGrip;
    //BARREL
    barrel = sprFrostbiteBarrel;
    bspeed = 9;
    bspread = 30;
    bnum = round(random_range(3,4));
    element = "Ice";
    scope = scrGenScope();
    stock = scrGenStock();
    access = scrGenAccess();
    texture = texIce;
    redtext = "Ouch!";
    break;
    
    }
}

if (type == "Shotgun") {

    rand = round(random_range(1,4));
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
    redtext = "RBMK reactor cores don't explode";
    break;
    
    //MILLION
    case(2):
    name = "Millionaire";
    pattern = objPattern4;
    //BODY
    body = sprMillionBody;
    damage = 21; acc = 72; rate = 1; reload = 3.5; mag = 10; bnum = 24; fixed_bnum = 1;
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
    reload = 0.35;
    grip = scrGenGrip();
    //BARREL
    barrel = sprMeatshotBarrel;
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
    
    //Spindash
    case(4):
    name = "Spin Dash";
    pattern = objPattern1;
    //BODY
    body = sprSpindashBody;
    damage = 40; acc = 84; rate = 1.2; reload = 3; mag = 6; fixed_bnum = 1;
    grip = scrGenGrip();
    //BARREL
    barrel = sprSpindashBarrel;
    bspeed = 7;
    bnum = 1;
    bspread = 1;
    btype = objSawblade;
    scope = scrGenScope();
    stock = scrGenStock();
    access = scrGenAccess(); //determines gun prefix
    element = scrGenElement("Electric");
    texture = texSanic;
    redtext = "Must accelerate";
    break;
    
    }

}

if (type == "Sniper Rifle") {

    rand = round(random_range(1,4));
    switch(rand) {
    
    //BLACK HOLE
    case(1):
    name = "Black Hole";
    pattern = objPatternBlackHole;
    //BODY
    body = sprBlackHoleBody;
    damage = 36; acc = 93; rate = 2; reload = 2.5; mag = 20;
    grip = scrGenGrip();
    //BARREL
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
    
    //RECURSIVE
    case(2):
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
    redtext = "Did you mean: recursion?";
    break;
    
    //SPECTRE
    case(3):
    name = "Spectre";
    pattern = objPattern1;
    //BODY
    body = sprSpectreBody;
    damage = 40; acc = 94; rate = 1.5; reload = 2; mag = 8; fixed_bnum = 1;
    scrElementalChance(50);
    grip = scrGenGrip();
    //BARREL
    barrel = sprSpectreBarrel;
    bnum = 1;
    bspread = 1;
    bspeed = 3;
    scope = scrGenScope();
    stock = scrGenStock();
    access = scrGenAccess();
    texture = texSpectre;
    redtext = "Who you gonna call?";
    break;
    
    //SPITFIRE
    case(4):
    name = "Spitfire";
    pattern = objPattern1;
    //BODY
    body = sprSpitfireBody;
    damage = 20; acc = 80; rate = 5; reload = 2.5; mag = 16; fixed_bnum = 1;
    grip = scrGenGrip();
    barrel = scrGenBarrel();
    element = "Fire";
    scope = 0;
    //STOCK
    stock = sprSpitfireStock;
    access = scrGenAccess();
    texture = texGreen2;
    redtext = "I'm not a rapper";
    break;
    
    }
}

if (type == "SMG") {

    rand = round(random_range(1,4));
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
    btype = objBloodBolt;
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
    pattern = objPattern6;
    //BODY
    body = sprGreedBody;
    damage = 12; acc = 86; rate = 7.5; reload = 3; mag = 16; fixed_bnum = 1;
    scrElementalChance(60);
    grip = scrGenGrip();
    //BARREL
    barrel = sprGreedBarrel;
    bspeed = 12;
    bspread = 240;
    bnum = 2;
    btype = objGreed;
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
    //GRIP
    grip = sprAquaGrip;
    barrel = scrGenBarrel();
    btype = objWaterBolt;
    scope = scrGenScope();
    stock = 0;
    access = scrGenAccess();
    texture = texAqua;
    redtext = "Not actually all that useless"
    break;
    
    //UZI
    case(4):
    name = "Uzi";
    pattern = objPattern1;
    //BODY
    body = sprUziBody;
    damage = 7; acc = 75; rate = 11; reload = 1.5; mag = 15;
    scrElementalChance(25);
    //GRIP
    grip = sprUziGrip;
    barrel = scrGenBarrel();
    scope = scrGenScope();
    stock = scrGenStock();
    access = scrGenAccess();
    texture = texGunMetal;
    redtext = "Weight: 1 ton"
    break;
    
    }

}

if(type == "Shield") {

    rand = round(random_range(1,1));
    switch(rand) {
    
    //TURTLE
    case(1):
    name = "Turtle";
    body = sprShieldBody1;
    capacity = 80; chargerate = 10; delay = 5;
    arm = scrGenArm();
    battery = scrGenBattery();
    redtext = "Slow and steady";
    break;
    
    }

}
