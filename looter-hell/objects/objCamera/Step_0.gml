//keep camera centered
__view_set( e__VW.XView, 0, (__view_get( e__VW.WView, 0 )/2) );
__view_set( e__VW.YView, 0, (__view_get( e__VW.HView, 0 )/2) );

//keep view within room
__view_set( e__VW.XView, 0, clamp(__view_get( e__VW.XView, 0 ),0,room_width-__view_get( e__VW.WView, 0 )) );
__view_set( e__VW.YView, 0, clamp(__view_get( e__VW.YView, 0 ),0,room_height-__view_get( e__VW.HView, 0 )) );

//shake view
__view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (random_range(-shake,shake)) );
__view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + (random_range(-shake,shake)) );
shake *= decay;

