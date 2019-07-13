ini_open("settings.ini");
global.lang = ini_read_string("settings","lang","eng");
global.res_w = ini_read_real("settings","res_w",1920);
global.res_h = ini_read_real("settings","res_h",1080);
global.blood = ini_read_real("settings","blood",1);
global.shake = ini_read_real("settings","shake",1);
global.hitbox = ini_read_real("settings","hitbox",1);
ini_close();
