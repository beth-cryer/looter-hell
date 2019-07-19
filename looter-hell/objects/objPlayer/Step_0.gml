//PAUSE ALARMS
if (global.paused == true) {
alarm_pause_all();
}

//CHECK FOR LOADOUT UPDATE
if(global.updated_load != -1) {
    if (equipped == global.updated_load) scrSwitchWep(equipped);
    global.updated_load = -1;
}

//SWITCH WEAPONS
/*
for(i=0;i<global.loadSlots-1;i++) {
    if (keyboard_check(ord(string(i+1)))) {
    scrSwitchWep(i);
    if (sfx_reload != 0) audio_stop_sound(sfx_reload);
    }
}*/

//OUTSIDE MAP?
if (x < 0 or x > room_width) {
    offscreenx = 1;
}else offscreenx = 0;

if (y < 0 or y > room_height) {
    offscreeny = 1;
}else offscreeny = 0;

//NEXT STAGE?
if (x > room_width+16 and !instance_exists(objSpawner)) {
    var stage_str = "scrA" + string(global.area+1) + "S" + string(global.stage+2);
    var stage_scr = asset_get_index(stage_str);
    //If next stage in this area exists
    if (stage_scr > -1) {
        global.stage++;
        room_goto(rmBattle);
    }
}

//MOVEMENT
image_speed = 0;
if (global.paused == false and canmove == true and global.inv_open == false) {
y += mspeed * (global.k_down - global.k_up);
x += mspeed * (global.k_right - global.k_left);

//Animate if moving
if (global.k_down or global.k_up or global.k_right or global.k_left) image_speed = 0.1;

}

//Animate if in wave transition
if (__background_get( e__BG.HSpeed, global.bg_floor ) != 0 and global.paused == false) image_speed = 0.1;


//For skills with effect every step:
if (skillactive == true) {
switch(skill) {
    case("Dash"):
    ii = instance_create(x,y,objDashTrail);
    ii.sprite_index = sprite_index;
    ii.image_index = image_index;
    ii.image_alpha = 0.5;
    break;
}
}

//increment reload timer
if (reloading == true) reloadtime += (1/room_speed);

//vampire drain effect
if (body = sprVampireBody) {
global.hp -= (damage/10)/room_speed;
vampire -= 0.05;
if (vampire < 0) vampire = 0;
}

//if a gun is equipped
if (equipped != -1) {
    //stop mag size going over max
    if (global.mag[equipped] > global.inventory[global.loadout[equipped],7])
    global.mag[equipped] = global.inventory[global.loadout[equipped],7];
    
    //reload if out of ammo
    if (global.mag[equipped] == 0 and reloading = false and (barrel != sprMeatshotBarrel)) {
        scrReloadSound();
        reloading = true;
        alarm[1] = room_speed * global.inventory[global.loadout[equipped],6];
    }

    type = global.inventory[global.loadout[equipped],1];
    //Set gun+hand position
    scrGunPos();

}

/* */
//GET SHIELD STATS
if (global.loadout[global.loadSlots-1] != -1) {
    capacity = global.inventory[global.loadout[global.loadSlots-1],3];
    delay = global.inventory[global.loadout[global.loadSlots-1],4];
    chargerate = global.inventory[global.loadout[global.loadSlots-1],5];
}else{
    capacity = 0;
}

//SHIELD DELAY
if(shieldbreak > 0) { shieldbreak--; }else{

//SHIELD RECHARGE
global.shield += (chargerate/room_speed);

}

//PREVENT OVERCHARGE
if(global.shield > capacity) global.shield = capacity;

/* */
//CHECK SHOOT BUTTON
if (global.k_shoot) {

    if (global.paused == false and canshoot == true and global.mag[equipped] > 0) {
    
    //cancel reload
    if (reloading == true) {audio_stop_sound(sfx_reload); reloadtime = 0; reloading = false;}
    
    //only shoot either if not burstfire or if underneath burst limit
    if (burst == 0 or (burst > 0 and burstcount == 0)) {
    
    //freeze enemies + enemy bullets
    if (body = sprWorldBody) {
        with (objEnemy) {
           canmove = false;
           canshoot = false;
        }
        with (objProjectile) {
            if (owner == 1) freeze = 1;
        }
    }
    
    //shoot sound
    scrShootSound();
    //screen shake
    //scrShake(0.5,0.1);
    
    proj = instance_create(x+xsh,y+ysh,pattern);
    proj.owner = 0;
    proj.type = btype;
    proj.speed = bspeed;
    proj.num = bnum;
    proj.spread = bspread/bnum;
    
    scrSetProj(proj);
    
    //deathspawn limit
    proj.splits = splits;
    
    //add to burstcount
    //if (burst > 0) burstcount += 1;
    
    global.mag[equipped] -= 1;
    alarm[0] = (room_speed/rate);
    
    canshoot = false;
    
    shoot = 1; alarm[6] = 1;
    }
    
    }

}

//CHECK RELOAD BUTTON
if (global.k_reload) {
    if (reloading == false
    and global.mag[equipped] != global.inventory[global.loadout[equipped],7]) {
        scrReloadSound();
        reloading = true;
        alarm[1] = room_speed * global.inventory[global.loadout[equipped],6];
    }
}

//CHECK SWITCH WEP BUTTON
if (global.k_switchwep) {
    equipped++;
    if (equipped >= global.loadSlots-1) equipped = 0;
    
    scrSwitchWep(equipped);
    if (sfx_reload != 0) audio_stop_sound(sfx_reload);
}

/* */
/*  */
