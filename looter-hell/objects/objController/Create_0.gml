//Prevent multiple objController instances
if(instance_number(object_index) > 1) instance_destroy();

//INIT
init();

instance_create(x,y,objStarterItems);

global.bpos[0] = 0;
global.bsurfc = 0;
global.bsurf[global.bsurfc] = surface_create(room_width,room_height);

alarm[0] = global.loadSlots+1;

