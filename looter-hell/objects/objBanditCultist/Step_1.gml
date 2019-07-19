//TICK TIMERS
if (global.paused == false) {
    for(var i=0; i<pts; i++) {
    if(timer_shoot[i] > 0) timer_shoot[i]--;
    if(timer_reload[i] > 0) timer_reload[i]--;
    }
}

