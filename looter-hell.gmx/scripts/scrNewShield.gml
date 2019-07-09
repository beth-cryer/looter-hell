//arguments: level, rarity, type

//LEVEL
if (argument0 == 0) {
    level = scrLevelRange(global.level,1);
}else level = scrLevelRange(argument0,1);

if (level < 1) level = 1;

element = "None";
elem_index = 0
elem_dps = 6;
elem_chance = 10;

texture = texCamo;
redtext = "";

//RARITY
if (argument1 == 0) {
    rarity = scrGenRarity();
    //rarity = 5;
}else rarity = argument1;

//TYPE
type = "Shield";

prefix = "";

//generate uniques
if (rarity == 5) { scrGenLegendary(); }else
if (rarity == 6) { scrGenPearl();
}else{

//otherwise regular weapon

//generate parts
body = scrGenBody(); //determines base stats
arm = scrGenGrip(); //can override prefix
battery = scrGenBarrel();
access = scrGenAccess(); //determines prefix

name = scrGenName(); //uses body+arm to generate name
texture = scrGenTexture(); //uses body+rarity to generate texture
}

element = scrGenElement(element); //determines prefix if used

//scale capacity to shield level + rarity
capacity = ceil(0.5 * damage * (1.1^(rarity*2 + level*2)) );
elem_dps = ceil(elem_dps * (1.1^(rarity*2 + level)) );

elem_chance = 0.5 * elem_chance * (rarity + (level/5) - (rate/5));
if (elem_chance > 100) elem_chance = 100;
if (elem_chance < 1) elem_chance = 1;

//1% bonuses per rarity
rate = rate * (1+(rarity/100));
delay = reload * (1-(rarity/100));

//combine name and prefix for ease
if (prefix != "") name = prefix + " " + name;
