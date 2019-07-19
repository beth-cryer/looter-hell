event_inherited();

for(var e=0; e<instance_number(objEnemy); e++) {
    ii = instance_find(objEnemy, e);
    if (distance_to_object(ii) < 128) ii.hp -= damage/room_speed;
}

