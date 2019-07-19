if (reloading == true) {
    //reset ammo
    if (barrel == sprMeatshotBarrel)
    scrReloadGun(equipped,1);
    else {
    scrReloadGun(equipped,0);
    audio_play_sound(sfxReloadEnd,20,false);
    }
}

