//in case no sfx match
sfx_reload = sfxPistolReload2;

//PICK SFX BASED ON GUN TYPE + RELOAD TIME
switch(type) {

case("Pistol"):
if (reload <= 2.5) sfx_reload = sfxPistolReload2;
else sfx_reload = sfxPistolReload1;
break;

case("Assault Rifle"):
if (reload <= 2.5) sfx_reload = sfxARReload2;
else sfx_reload = sfxARReload1;
break;

case("Shotgun"):
if (reload <= 0.5) sfx_reload = sfxSGReload2;
else if (reload <= 1) sfx_reload = sfxSGReload3;
else if (reload <= 4) sfx_reload = sfxSGReload4;
else sfx_reload = sfxSGReload1;
break;

case("SMG"):
if (reload <= 2.5) sfx_reload = sfxSMGReload1;
else sfx_reload = sfxSMGReload1;
break;


}

//PLAY SOUND
audio_play_sound(sfx_reload,15,false);