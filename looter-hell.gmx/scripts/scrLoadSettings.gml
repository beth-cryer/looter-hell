ini_open("settings.ini");
global.lang = ini_read_string("settings","lang","eng");
ini_close();