//DECREASE RECENT HITS
recenthits -= 0.1;

if (recenthits < 0) recenthits = 0;

//ELEMENT DAMAGE
if (fire == true or corrode == true or electric == true) {
    hp -= elem_dps/room_speed;
}

//ELECTROCUTE NEARBY
if (electric == true) {
    for(var e=0; e<instance_number(objEnemy); e++) {
        ii = instance_find(objEnemy, e);
        if (distance_to_object(ii) < 320) ii.hp -= elem_dps/room_speed;
    }
}

mspeed = ospeed;
if (position_meeting(x,y,objPuddle)) {
mspeed = ospeed/2;
}

//DEATH
if (hp <= 0) {

//drop resources
global.xp += global.bonus_xp * (xp^(global.stageLevel/10));
global.gold += global.bonus_gold * (gold^(global.stageLevel/10));
global.metal += global.bonus_metal * (metal^(global.stageLevel/10));
global.crystal += global.bonus_crystal * (crystal^(global.stageLevel/10));

//chance to drop held gun
/*
if (body != 0) {
    if(round(random(100)) < 50) {
    drop = instance_create(x,y,objGun);
    drop.name = name;
    drop.prefix = "";
    drop.rarity = rarity;
    drop.type = type;
    drop.level = level;
    drop.damage = damage;
    drop.acc = acc;
    drop.rate = rate;
    drop.reload = reload;
    drop.mag = mag;
    drop.bnum = bnum;
    drop.bspeed = bspeed;
    drop.pattern = pattern;
    drop.bspread = bspread;
    drop.element = element;
    drop.elem_dps = elem_dps;
    drop.elem_chance = elem_chance;
    drop.texture = texture;
    drop.body = body;
    drop.barrel = barrel;
    drop.grip = grip;
    drop.stock = stock;
    drop.access = access;
    drop.splits = splits;
    drop.scope = scope;
    drop.burst = burst;
    }
}*/

instance_destroy();
}

/* */
/*  */
