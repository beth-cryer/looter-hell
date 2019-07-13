if (global.shake == 0) exit;

var amount = argument0;
var decay = argument1;

if(instance_exists(objCamera)) {
    objCamera.shake = amount*global.shake;
    objCamera.decay = decay*global.shake;
}
