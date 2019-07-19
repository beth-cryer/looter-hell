if (global.blood == 0) exit;

//blood amount/size based on kill damage
var blood = ((lasthit * (recenthits)) / hpmax);
if (blood > 3) blood = 3;

var blood_amount = blood * random_range(32,40);
var blood_size = blood * 16;

//SFX
if (blood < 1.5) sfx = choose(sfxEnemyDeath,sfxEnemyDeath2,sfxEnemyDeath3);
else sfx = choose(sfxEnemyExplode,sfxEnemyExplode2);

audio_play_sound(sfx,15,false);

//SCREEN SHAKE
scrShake(blood*3,0.6);

//BIG BLOOD SPLATTER
for (var i=0; i<blood_amount; i++) {
    instance_create(x+random_range(-blood_size,blood_size), y+random_range(-blood_size,blood_size), objBlood);
}

//EXPLODE?
if (blood >= 1.5 and boss == false) {
    var width = sprite_get_width(sprite_index), height = sprite_get_height(sprite_index),
    c_x = x+(width*0.5), c_y = y+(height*0.5),
    i_inc = (width/6), j_inc = (height/6);
    for (var i=0; i<width; i+=i_inc) {
    for (var j=0; j<height; j+=j_inc) {
        with (instance_create(x+i, y+j, objGib)) {
            left = i; top = j; self.width = i_inc; self.height = j_inc; 
            sprite_index = other.sprite_index;
            hspeed = (x - c_x) * 0.1;
            vspeed = (y - c_y) * 0.1;
            gravity = 0.5;
        }
    }}

//CREATE CORPSE
}else{
    var ii = instance_create(x,y,objCorpse);
    ii.sprite_index = sprite_index;
    ii.image_xscale = image_xscale;
    ii.speed = (blood * 6) + random(1);
}

