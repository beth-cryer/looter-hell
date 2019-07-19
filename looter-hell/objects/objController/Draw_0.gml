//blood surfaces
for(var i=0; i<global.bsurfc+1; i++) {
    if(surface_exists(global.bsurf[i]))
        draw_surface(global.bsurf[i],global.bpos[i],0);
    else
        global.bsurf[i] = surface_create(room_width,room_height);
}

