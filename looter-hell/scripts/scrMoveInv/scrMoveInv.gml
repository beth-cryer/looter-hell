o = argument0;

//get weapon stats of current shifting weapon
scrWepStats(o);

//add current weapon to the above slot
prefix = "";
scrAddInv();

//drop weapon from its original slot
scrDropInv(o);