//find next empty wave
i = -1;
for(j=0;j<global.numWaves;j++) {
    if (global.waves[j,0] == -1) {i=j; j=global.numWaves}
}
if (i == -1) return false; //this shouldn't happen

global.waves[i,0] = wavelength; //set wavelength

//add enemies and their positions to wave arrays
for(j=0;j<array_length_1d(enemies);j++) {
    global.w_enemies[i,j] = enemies[j]; //enemies array
    global.w_positionx[i,j] = positionx[j]; //positions array
    global.w_positiony[i,j] = positiony[j]; //positions array
}

scrResetWave();