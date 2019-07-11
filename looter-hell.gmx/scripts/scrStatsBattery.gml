switch(battery) {
    
    case(sprShieldBattery1):
    capacity *= 1.06;
    chargerate *= 1.04;
    delay *= 1.03;
    break;
    
    case(sprShieldBattery2):
    capacity *= 0.98;
    chargerate *= 1.02;
    delay *= 1.05;
    break;
    
    case(sprShieldBattery3):
    capacity *= 1.01;
    chargerate *= 1.08;
    delay *= 1.01;
    break;
    
    case(sprShieldBattery4):
    capacity *= 1.03;
    chargerate *= 0.98;
    delay *= 0.95;
    break;
    
}
