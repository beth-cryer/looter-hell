//BLOOOOOOD
global.bpos[0] = 0;

for(var i=0; i<global.numWaves+1; i++) {
global.bsurf[i] = -1;
global.bpos[i] = 0;
}

global.bsurfc = 0;
global.bsurf[global.bsurfc] = surface_create(room_width,room_height);

