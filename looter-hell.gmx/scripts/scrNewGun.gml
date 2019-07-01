//arguments: level, rarity, type

randomize();

//LEVEL
if (argument0 == 0) {
    level = scrLevelRange(global.level,1);
}else level = scrLevelRange(argument0,1);

if (level < 1) level = 1;

element = "None";
elem_index = 0
elem_dps = 6;
elem_chance = 10;

bspeed = 4;
bspread = 60;
bnum = 1;
fixed_bnum = 0;
splits = 0;
burst = 0;

texture = texCamo;
redtext = "";

//RARITY
if (argument1 == 0) {
    rarity = scrGenRarity();
    //rarity = 5;
}else rarity = argument1;

//TYPE
if (argument2 == "") {
    type = scrGenType();
    //type = "SMG";
}else type = argument2;

prefix = "";

//generate uniques
if (rarity == 5) { scrGenLegendary(); fixed_bnum = 1; }else
if (rarity == 6) { scrGenPearl(); fixed_bnum = 1; 
}else{

//otherwise regular weapon

//generate parts
body = scrGenBody(); //determines base stats
grip = scrGenGrip(); //can override gun prefix
barrel = scrGenBarrel(); //determines bullet speed
scope = scrGenScope();
stock = scrGenStock();
access = scrGenAccess(); //determines gun prefix

pattern = scrGenPattern();
//pattern = objPattern6;

name = scrGenName(); //uses body+barrel to generate name
texture = scrGenTexture(); //uses body+rarity to generate texture
}

element = scrGenElement(element); //determines gun prefix if used

//scale down damage for multiple shots
for(i=0;i<bnum;i++) damage = damage*0.99

//scale damage to weapon level + rarity
damage = ceil(0.5 * damage * (1.1^(rarity*2 + level*2)) );
elem_dps = ceil(elem_dps * (1.1^(rarity*2 + level)) );

elem_chance = 0.5 * elem_chance * (rarity + (level/5) - (rate/5));
if (elem_chance > 100) elem_chance = 100;
if (elem_chance < 1) elem_chance = 1;

//scale other stats to rarity only
acc = acc * (1+(rarity/100));
if (acc > 100) acc = 100;

//don't scale bnum for certain weapons
if (fixed_bnum == 0) bnum = ceil(bnum * (rarity/3));

//1% bonuses per rarity
rate = rate * (1+(rarity/100));
reload = reload * (1-(rarity/100));
mag = round(mag * (1+(rarity/100)));

//bring double shots together
if (bnum == 2) {bspread /=5}

//don't allow single shot bursts
if (burst == 1) burst = 0;
