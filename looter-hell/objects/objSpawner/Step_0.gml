if (smove != 0) {
    
    //SCROLL BACKGROUND IF NOT PAUSED
    if(global.paused == true) {
    alarm_pause(1);
    __background_set( e__BG.HSpeed, global.bg_floor, 0 );
    
    } else __background_set( e__BG.HSpeed, global.bg_floor, -(0.9*objPlayer.basespeed) );
    
    //scroll other background layers accordingly
    for(var i=0; i<8; i++) {
        if(__background_get( e__BG.Visible, i ) and i != global.bg_floor) {
        //BEHIND FLOOR
        if (global.bg_floor-i > 0) __background_set( e__BG.HSpeed, i, (__background_get( e__BG.HSpeed, global.bg_floor )*(0.5/(global.bg_floor-i))) );
        //IN FRONT OF FLOOR
        else __background_set( e__BG.HSpeed, i, (__background_get( e__BG.HSpeed, global.bg_floor ) * 1.5*(i-global.bg_floor)) );
        }
    }
    
    //scroll all blood
    for(var i=0; i<global.bsurfc+1; i++)
    global.bpos[i] += __background_get( e__BG.HSpeed, global.bg_floor );
    
    //scroll corpses
    with(objCorpse) {
        x += __background_get( e__BG.HSpeed, global.bg_floor );
    }
    
}

//check if all enemies defeated
if (instance_number(objEnemy) == 0 and waveend = 0) {
    alarm[1] = room_speed*3;
    waveend = 1;
    
    smove = 1;
    
    //END STAGE
    if (current >= global.numWaves) {
    
    //stop moving all background layers
    backgrounds_stop();
    
    //generate chest rarity
    rand = random(100);
    if (rand <= 5) {chest=sprChest1; chestbonus = 2.5;}
    else if (rand <= 30) {chest=sprChest2; chestbonus = 2;}
    else if (rand <= 60) {chest=sprChest3; chestbonus = 1.5;}
    else {chest=sprChest3; chestbonus = 1;}
    
    ii = instance_create(room_width/2,room_height/2,objChest);
    ii.sprite_index = chest;
    ii.chestbonus = chestbonus;
    
    scrEmptyWaves();
    instance_create((__view_get( e__VW.WView, 0 )/2)-128,__view_get( e__VW.HView, 0 )/2,objInv);
    
    instance_create(128,(__view_get( e__VW.HView, 0 )/2)+16,objEvac);
    instance_destroy();
    }
}

