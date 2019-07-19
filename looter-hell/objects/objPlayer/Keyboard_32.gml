//If skill not active and skill not on cooldown
if (skillactive == false and skillcool == false) {

    switch(skill) {
    case("Dash"): audio_play_sound(sfxPlayerDash,20,false); mspeed = dspeed; break;
    }

    skillactive = true;
    alarm[4] = room_speed/4;
}

