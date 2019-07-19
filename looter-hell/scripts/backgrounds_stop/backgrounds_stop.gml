//stop moving all background layers
for(var i=0; i<8; i++) {
    if(__background_get( e__BG.Visible, i )) __background_set( e__BG.HSpeed, i, 0 );
}
