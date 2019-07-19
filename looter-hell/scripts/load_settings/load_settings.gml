ini_open("settings.ini");
//VISUAL
global.lang = ini_read_string("visual","lang","eng");
global.res_w = ini_read_real("visual","res_w",1920);
global.res_h = ini_read_real("visual","res_h",1080);
global.blood = ini_read_real("visual","blood",1);
global.shake = ini_read_real("visual","shake",1);
global.hitbox = ini_read_real("visual","hitbox",1);

//GAMEPLAY
global.difficulty = ini_read_real("gameplay","difficulty",1);

//CONTROLS
global.kb_up = ini_read_real("controls","up",38);
global.kb_down = ini_read_real("controls","down",40);
global.kb_left = ini_read_real("controls","left",37);
global.kb_right = ini_read_real("controls","right",39);
global.kb_select = ini_read_real("controls","select",13); //ENTER
global.kb_shoot = ini_read_real("controls","shoot",90); //Z
global.kb_reload = ini_read_real("controls","reload",88); //X
global.kb_ability = ini_read_real("controls","ability",32); //SPACE
global.kb_switchwep = ini_read_real("controls","switch",17); //CTRL
ini_close();
