var LANGUAGE = global.lang;
var KEYWORD = argument0;

var JsonFile = file_text_open_read("lang.txt");
var Data = "";

//read all json text, save in Data var
while(!file_text_eof(JsonFile)) {
    Data += file_text_read_string(JsonFile);
    file_text_readln(JsonFile);
}
file_text_close(JsonFile);

//decode json and store in temp var
var temp_map = json_decode(Data);

//find current game language data
var lang_map = ds_map_find_value(temp_map, LANGUAGE);

//convert keyword to string if it isn't already (prevents errors)
if(!is_string(KEYWORD)) KEYWORD = string(KEYWORD);

//RETURNED STRING
var output_string = lang_map[? KEYWORD];

//clean up temp maps
ds_map_destroy(temp_map);
ds_map_destroy(lang_map);

return output_string;