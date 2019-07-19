if (other.owner == 1) {

//check if player has invicibility effects
if (skillactive == true) {
if (skill == "Dash") exit;
}

//elemental effects
scrElemEffect();

if (corrode == true) plr_damage(other.damage*1.1); else
plr_damage(other.damage);

//screen shake
scrShake(2,0.7);

//BLOOD
if (global.blood != 0) instance_create(x-8,y,objBlood);

audio_play_sound(sfxPlayerHurt,20,false);

if (other.hit_destroy == true) with(other) instance_destroy();
}

