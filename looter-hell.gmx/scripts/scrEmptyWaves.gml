//create set of empty enemy waves
for(i=0; i<global.numWaves; i++) {
    global.waves[i,0] = -1; //wavelength
    global.w_enemies[i,0] = -1; //enemies array
    global.w_positionx[i,0] = -1; //positions array
    global.w_positiony[i,0] = -1;
}

eindex = 0;
