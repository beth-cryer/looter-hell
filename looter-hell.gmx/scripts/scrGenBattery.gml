rand = round(random_range(1,4));
switch(rand){

case(1):
battery = sprShieldBattery1;
break;

case(2):
battery = sprShieldBattery2;
break;

case(3):
battery = sprShieldBattery3;
break;

case(4):
battery = sprShieldBattery4;
break;
    
}

//LOOKUP STATS
scrStatsBattery();

return battery;
