//NO ACCESS
if (random(100) < 75) return 0;

rand = irandom_range(1,6);

switch(rand) {

    //Accuracy+
    case(1): prefix="Stable"; acc+=1; break;
    
    //Extra shot
    case(2): prefix="Hail"; bnum+=1; break;
    
    //Mag size+
    case(3): prefix="Unending"; mag+=4; break;
    
    //Damage+
    case(4): prefix="Potent"; damage+=1; break;
    
    //Fire rate+
    case(5): prefix="Intense"; rate+=0.5; break;
    
    //Reload speed+
    case(6): prefix="Reactive"; reload-=0.5; break;

}
