//CURRENT VALUE APPROACHES TARGET VALUE BY INCREMENT VALUE
var current = argument0;
var target = argument1;
var inc = argument2;

//increase or decrease depending on if target is </> from current
if (current > target) current -= inc;
else if (current < target) current += inc;

return current;
