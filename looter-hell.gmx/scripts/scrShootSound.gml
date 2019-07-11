//in case no sfx match
sfx_shoot = sfxPistolShoot3;

//PICK SFX BASED ON GUN TYPE + RELOAD TIME
switch(type) {

case("Pistol"):
sfx_shoot = sfxPistolShoot1;
if (barrel == sprPistolBarrel2) sfx_shoot = sfxPistolShoot1;
else if (barrel == sprPistolBarrel3 or barrel == sprPistolBarrel4) sfx_shoot = sfxPistolShoot2;
else if (barrel == sprPistolBarrel1 or barrel == sprPistolBarrel5) sfx_shoot = sfxPistolShoot3;
//UNIQUES
if (barrel == sprVortexBarrel) sfx_shoot = sfxShootVortex;
if (barrel == sprSlingshotBarrel) sfx_shoot = sfxShootSlingshot;
if (barrel == sprOSBarrel) sfx_shoot = sfxShootOS;
if (barrel == sprCrowBarrel) sfx_shoot = sfxShootCrow;
break;

case("Assault Rifle"):
sfx_shoot = sfxARShoot1;
if (barrel == sprARBarrel1) sfx_shoot = sfxARShoot1;
if (barrel == sprARBarrel2 or barrel == sprARBarrel3) sfx_shoot = sfxARShoot2;
else if (barrel == sprARBarrel4 or barrel == sprARBarrel5) sfx_shoot = sfxARShoot3;
//UNIQUES
if (barrel == sprCBlossomBarrel) sfx_shoot = sfxShootCB;
if (barrel == sprBakaBarrel) sfx_shoot = sfxShootBaka;
if (barrel == sprFrostbiteBarrel) sfx_shoot = sfxShootFrostbite;
if (barrel == sprTornadoBarrel) sfx_shoot = sfxShootCyclone;
if (barrel == sprBFGBarrel) sfx_shoot = sfxShootBFG;
break;

case("Shotgun"):
sfx_shoot = sfxSGShoot1;
if (barrel == sprSGBarrel2) sfx_shoot = sfxSGShoot1;
if (barrel == sprSGBarrel4 or barrel == sprSGBarrel1) sfx_shoot = sfxSGShoot2;
if (barrel == sprSGBarrel3) sfx_shoot = sfxSGShoot3;
//UNIQUES
if (barrel == sprMillionBarrel) sfx_shoot = sfxShootMillion;

break;

case("Sniper Rifle"):
sfx_shoot = sfxSniperShoot2;
if (barrel == sprSniperBarrel1) sfx_shoot = sfxSniperShoot1;
else if (barrel == sprSniperBarrel2 or barrel == sprSniperBarrel4) sfx_shoot = sfxSniperShoot2;
else if (barrel == sprSniperBarrel3) sfx_shoot = sfxSniperShoot3;
//UNIQUES
if (barrel == sprBlackHoleBarrel) sfx_shoot = sfxShootBHole;
if (barrel == sprWorldBarrel) sfx_shoot = sfxShootWorld;
if (body == sprSpitfireBody) sfx_shoot = sfxShootSpitfire;

break;

case("SMG"):
sfx_shoot = sfxSMGShoot1;
if (barrel == sprSMGBarrel4) sfx_shoot = sfxSMGShoot1;
if (barrel == sprSMGBarrel3) sfx_shoot = sfxSMGShoot2;
if (barrel == sprSMGBarrel1 or barrel == sprSMGBarrel2) sfx_shoot = sfxSMGShoot3;
//UNIQUES
if (barrel == sprVampireBarrel) sfx_shoot = sfxShootVampire;

break;

}

//PLAY SOUND
audio_play_sound(sfx_shoot,20,false);
