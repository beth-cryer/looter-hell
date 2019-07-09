var damage = argument0;

global.shield -= damage;
if (global.shield < 0) {
    global.hp += global.shield;
    global.shield = 0;
}