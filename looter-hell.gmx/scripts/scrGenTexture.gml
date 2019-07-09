//MALIWAN
if (body==sprPistolBody1 or body==sprSMGBody1 or body==sprSniperBody3) {
switch(rarity) {
    case(1): return texSilver; break;
    case(2): return texTech2; break;
    case(3): return texBlood2; break;
    case(4): return texFlame; break;
    return texFlame;
}
}

//DAHL
if (body==sprARBody2 or body==sprSMGBody3) {
switch(rarity) {
    case(1): return texCamo; break;
    case(2): return texDark; break;
    case(3): return texCamo3; break;
    case(4): return texCamo2; break;
    return texCamo2;
}
}

//BANDIT
if (body==sprSMGBody2 or body==sprSGBody1 or body==sprARBody4) {
switch(rarity) {
    case(1): return texRust; break;
    case(2): return texRust2; break;
    case(3): return texRust3; break;
    case(4): return texSun2; break;
    return texSun2;
}
}

//JAKOBS/VLADOF
if (body==sprPistolBody4 or body==sprSniperBody2 or body==sprSGBody4 or body==sprARBody1) {
switch(rarity) {
    case(1): return texGreen2; break;
    case(2): return texWood3; break;
    case(3): return texWood; break;
    case(4): return texWood4; break;
    return texWood4;
}
}

//HYPERION
if (body==sprSniperBody1 or body==sprSGBody3 or body==sprSMGBody4) {
switch(rarity) {
    case(1): return texSand2; break;
    case(2): return texSun3; break;
    case(3): return texGoldRed; break;
    case(4): return texSun; break;
    return texSun;
}
}

//TORGUE
if (body==sprARBody3 or body==sprSGBody2 or body==sprPistolBody2 or body==sprSniperBody4 or body==sprSMGBody4) {
switch(rarity) {
    case(1): return texDark2; break;
    case(2): return texDark3; break;
    case(3): return texFlag; break;
    case(4): return texRace; break;
    return texSun;
}
}

return texCamo;