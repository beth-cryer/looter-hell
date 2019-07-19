stateptn[state,argument0] = pts;

p_damage[pts] = damage;
p_btype[pts] = btype;
p_reload[pts] = reload;
p_mag[pts] = mag;
p_bullets[pts] = p_mag[pts];
p_rate[pts] = rate;
nnum = bnum;
p_bspread[pts] = bspread;
p_bspeed[pts] = bspeed;
p_pattern[pts] = pattern;

p_shootdir[pts] = shootdir;

scrEnemyDiffScale();
p_bnum[pts] = nnum;

//start shoot alarm
timer_shoot[pts] = room_speed/p_rate[pts];
timer_reload[pts] = 0;
pts++;
