//argument0 = enemy
//argument1 = number
//argument2 = centerx
//argument3 = centery
//argument4 = distance apart
if (argument1 mod 2 == 0) offset = (argument4/2) else offset = 0;

for(i=0;i<argument1;i++) {
    enemies[i+eindex] = argument0;
    positionx[i+eindex] = argument2;
    //positiony[i+eindex] = argument3 - offset - ((argument4/2)*(argument1-1))+(argument4*i);
    positiony[i+eindex] = argument3 - (argument4*(argument1-1)/2)+(i*argument4);
}

eindex += argument1;