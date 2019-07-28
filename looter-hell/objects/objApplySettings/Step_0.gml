switch(step) //each case is a different step.
{
    case(0):
    //display_reset(aa, vsync); //not too surprising that resetting the display comes first. Only necessary if you give players the option to change aa and vsync in game
    break;
    
    case(1):
    window_set_size(global.res_w, global.res_h); //this is the only function that needs to run on a separate step. I've found it will not work correctly if used in the same step as the other functions
    break;

    case(2):
    //window_set_fullscreen(true/false); //if setting it to fullscreen (true), window_set_size() won't have any effect.
    break;

    case(3):
    surface_resize(application_surface, global.res_w, global.res_h); //This will resize the application surface so that it fills the screen/window correctly. Only use this along with views.
    //get_aspect_ratio(); //change aspect ratio
    display_set_gui_size(global.res_w, global.res_h); //resize the gui to fit the new resolution so any draw GUI events will appear in the correct place.
    break;
    
    case(4):
    if (!window_get_fullscreen()) window_center();
    break;

    default:
    instance_destroy(); //destroy the instance for all other values of step_number
    break;
}

step++; //increment step number so it will cycle through all the cases

