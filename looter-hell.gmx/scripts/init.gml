randomize();

//LOAD SETTINGS FROM INI
scrLoadSettings();
global.input_device = 0; //0=kb+m //1=controller
key_bindings();

//PLAYER STATS
global.level = 1;
global.stageLevel = global.level;
global.regen = 0;
global.elem_bonus = 1;
global.elem_resist = 0;

//CHARACTER INIT
global.charNum = 1;
scrAddRebel(1,1);

//RESOURCES
global.xp = 0;
global.gold = 0;
global.metal = 0;
global.crystal = 0;

//GLOBAL BONUS RATES
global.bonus_gold = 1;
global.bonus_metal = 1;
global.bonus_crystal = 1;
global.bonus_xp = 1;
global.bonus_rarity = 0;

//OTHER GLOBALS
global.area = -1;
global.stage = -1;

//GLOBAL FLAGS
global.updated_load = -1;

//INVENTORY
global.invSize = 36;
scrCreateInv();

global.loadSlots = 5;
for(i=0;i<global.loadSlots;i++) {
    global.loadout[i] = -1;
}

//TECHNICAL SHIT
audio_group_load(1);
audio_group_load(2);
audio_master_gain(0.5);

global.res_w = 1920;
global.res_h = 1080;

//AUDIO
font_menu = load_text("font-menu");
font_text = load_text("font-text");
fstart = load_text("font-start");
fend = load_text("font-end");

//FONT
global.font_menu = font_add(font_menu,18,false,false,fstart,fend);
global.font_menub = font_add(font_menu,20,true,false,fstart,fend);
global.font_stats = font_add(font_text,8,true,false,fstart,fend);
global.font_gui = font_add(font_text,16,true,false,fstart,fend);
