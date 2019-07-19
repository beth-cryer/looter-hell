//stop moving all background layers
backgrounds_stop();

smove = 0;

//new blood surface
global.bsurfc++;
global.bsurf[global.bsurfc] = surface_create(room_width,room_height);

//free surfaces that are definitely offscreen
for(var i=0; i<global.bsurfc+1; i++) {
    if (surface_exists(global.bsurf[i])) {
    if (-global.bpos[i] > room_width) surface_free(global.bsurf[i]);
    }
}

//clean up corpses
//with(objCorpse) fade = true;

//spawn this wave of enemies
for(var i=0; i<array_length_2d(global.w_enemies,current); i++) {
    //if position is empty
    if !(instance_position(global.w_positionx[current,i],global.w_positiony[current,i],objEnemy))
    instance_create(global.w_positionx[current,i],global.w_positiony[current,i],global.w_enemies[current,i]);
}

//check if boss wave
if (current == global.w_boss[0]) {
    var b = instance_find(asset_get_index(global.w_boss[1]),0);
    if (b != noone) b.boss = true;
}

//increment current
current++;

//reset timer (if there is a next wave)
if (current < global.numWaves) {
    alarm[1] = global.waves[current,0]*room_speed;
}

waveend = 0;

