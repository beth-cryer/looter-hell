if(global.k_select) {

    //OPEN CHEST
    if(distance_to_object(objPlayer)<64 and opened == false) {
        opened = true;
        image_index = 1;
        
        audio_play_sound(sfxChestOpen,10,false);
        
        //GENERATE GUNS
        type = scrGenType();
        
        xof = 0;
        switch(type) {
        case("Pistol"): xof = 12; break;
        case("Assault Rifle"): xof = 2; break;
        case("Shotgun"): xof = -2; break;
        case("Sniper Rifle"): xof = -8; break;
        case("SMG"): xof = 6; break;
        case("Shield"): xof = 8; break;
        }
        
        ii = instance_create(x+xof,y,objGun);
        ii.typegen = type;
        ii.lvlgen = global.stageLevel;
        ii.chestbonus = chestbonus;
        ii.depth = depth-1;
    
    }
    
}

