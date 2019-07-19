var damage = argument0;

//excess damage goes to hp
global.shield -= damage;
if (global.shield < 0) {
    global.hp += global.shield;
    global.shield = 0;
}

//delay shield recharge when hit
objPlayer.shieldbreak = objPlayer.delay*room_speed;
