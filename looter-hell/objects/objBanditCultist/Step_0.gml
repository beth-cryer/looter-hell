event_inherited();

if (canmove==true and frozen==false
and distance_to_object(instance_nearest(x,y,objEnemy)) > 128) {
    //move_towards_point(x,objPlayer.y,mspeed);
    speed = 0;
}else speed = 0;

//PHASES
if (hp < hpmax*0.7) phase = 1;
if (hp < hpmax*0.4) phase = 2;

//ROTATE PATTERNS
if (destx == -1) {
    if (state == 1 or state == 4) p_shootdir[stateptn[state,0]] += 8;
    if (state == 3) p_shootdir[stateptn[state,0]] += 4;
    if (state == 5) p_shootdir[stateptn[state,1]] += 4;
}

//MOVEMENT
if (destx != -1) {
    x = lerp(x,destx,0.1);
    y = lerp(y,desty,0.1);
    if (diff(x,destx)<4 and diff(y,desty)<4) {
        destx = -1;
        alarm[8] = 1; //SHOOT
    }
}

//Loop through all current patterns
for(var i=0; i<pts; i++) {
    //SHOOT
    if (timer_shoot[i] <= 1 and timer_shoot[i] > 0) { //if shoot timer for this pattern is done
        //reload if out of bullets
        if (p_bullets[i] <= 0) timer_reload[i] = room_speed*p_reload[i]; else {
        
            if (global.paused == false and canmove == true) {
            proj = instance_create(x,y,p_pattern[i]);
            proj.owner = 1;
            proj.type = p_btype[i];
            proj.speed = p_bspeed[i];
            proj.num = p_bnum[i];
            proj.spread = p_bspread[i]/p_bnum[i];
            proj.direction = p_shootdir[i];
                        
            scrSetProj(proj);
            proj.damage = p_damage[i];
            
            p_bullets[i]--;
            }
            
            timer_shoot[i] = room_speed/p_rate[i];
        }
    }
    //RELOAD
    if (timer_reload[i] == 1) { //if reload timer for this pattern is done
        if (state == 4 and i == stateptn[state,1])
            p_bullets[i] = p_mag[i];
        else{
            //NEW PHASE
            alarm[9] = 1;
        }
    }
}

