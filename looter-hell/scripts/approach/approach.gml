//Moves current towards target by amount
//Never overshoots
var current = argument0;
var target = argument1;
var amount = argument2;

if (current < target){
return min (current + amount, target);
} else {
return max (current - amount, target);
}
