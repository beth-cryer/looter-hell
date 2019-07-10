var amount = argument0;
var decay = argument1;

if(instance_exists(objCamera)) {
    objCamera.shake = amount;
    objCamera.decay = decay;
}
