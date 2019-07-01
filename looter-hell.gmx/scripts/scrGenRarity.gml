//Generates rarities for world drops
rand = random(100);

//implement bonus rarity
rand -= (10*global.bonus_rarity);

if (rand <= 0.5*chestbonus)
    return 6; //pearl
else if (rand <= 5*chestbonus)
    return 5; //legendary
else if (rand <=15*chestbonus)
    return 4; //ultra rare
else if (rand <=30*chestbonus)
    return 3; //super rare
else if (rand <=60*chestbonus)
    return 2; //rare
else
    return 1; //common