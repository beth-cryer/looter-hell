//free all blood surfaces
for(var i=0; i<array_length_1d(global.bsurf); i++) {
if (surface_exists(global.bsurf[i])) surface_free(global.bsurf[i]);
}

