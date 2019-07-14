rand = irandom_range(1,4);

switch(rand){
case(1): arm = sprShieldArm1; break;
case(2): arm = sprShieldArm2; break;
case(3): arm = sprShieldArm3; break;
case(4): arm = sprShieldArm4; break;
}

//LOOKUP STATS
scrStatsArm();

return arm;
