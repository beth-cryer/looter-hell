//Set gun+hand position
switch(type) {

    case("Pistol"):
    hi = 0;
    xof = 8;
    yof = 2;
    ysh = yof-12;
    xsh = xof+18;
    break;
    
    case("Assault Rifle"):
    hi = 1;
    xof = 0;
    yof = 4;
    ysh = yof-10;
    xsh = xof+36;
    break;
    
    case("Shotgun"):
    hi = 2;
    xof = 2;
    yof = 6;
    ysh = yof-9;
    xsh = xof+28;
    break;
    
    case("Sniper Rifle"):
    hi = 3;
    xof = 0;
    yof = 4;
    ysh = yof-12;
    xsh = xof+42;
    break;
    
    case("SMG"):
    hi = 4;
    xof = -5;
    yof = 4;
    ysh = yof-12;
    xsh = xof+26;
    break;
    
}

