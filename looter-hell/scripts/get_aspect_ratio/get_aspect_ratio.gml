//replaces view_hview and wview above, good idea to keep this in a script
var aspect_ratio = global.res_w / global.res_h;

//determines the view wview and hview
if(aspect_ratio > 1.7) //16:9 (16/9 is 1.77777...)
{
    __view_set( e__VW.WView, 0, 1280 );
    __view_set( e__VW.HView, 0, 720 );
}
else if(aspect_ratio > 1.5) //16:10 (16/10 is 1.6 exactly)
{
    __view_set( e__VW.WView, 0, 1280 );
    __view_set( e__VW.HView, 0, 800 );
}
else //4:3
{
    __view_set( e__VW.WView, 0, 1024 );
    __view_set( e__VW.HView, 0, 768 );
}
