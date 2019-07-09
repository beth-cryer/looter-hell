switch(battery) {
    
    case(sprShieldBattery1):
    capacity = capacity*1.06;
    rate = rate*1.04;
    delay = delay*1.03;
    break;
    
    case(sprShieldBattery2):
    capacity = capacity*0.98;
    rate = rate*1.02;
    delay = delay*1.05;
    break;
    
    case(sprShieldBattery3):
    capacity = capacity*1.01;
    rate = rate*1.08;
    delay = delay*1.01;
    break;
    
    case(sprShieldBattery4):
    capacity = capacity*1.03;
    rate = rate*0.98;
    delay = delay*0.95;
    break;
    
}
