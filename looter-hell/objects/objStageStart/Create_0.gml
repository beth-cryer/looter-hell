wavelength = 15;
cx = 864; cy = room_height/2;
sp = 96;

//BACKGROUND SETUP
for(var i=0; i<8; i++) {
    if(__background_get( e__BG.Visible, i )) {
        __background_set( e__BG.XScale, i, 4 );
        __background_set( e__BG.YScale, i, 4 );
    }
}

//TEST STAGE
if(global.area == -1) {
instance_create(480,224,objEnemyDummy);
instance_create(320,224,objGunSpawn);
ii=instance_create(objPlayer.x,objPlayer.y,objChest);
ii.sprite_index=sprChest1; ii.chestbonus = 2;
instance_create(448,32,objInv);
instance_destroy();
}

var stage_str = "scrA" + string(global.area+1) + "S" + string(global.stage+1);
var stage_scr = asset_get_index(stage_str);
if (stage_scr > -1) {
    script_execute(stage_scr);
}

//DELAY START
alarm[0] = 1;

