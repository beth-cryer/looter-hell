//unfreeze all enemies + bullets
for (var i=0; i<instance_number(objEnemy); i++) {
   enemy = instance_find(objEnemy,i);
   enemy.canmove = true;
}
for (var i=0; i<instance_number(objProjectile); i++) {
   proj = instance_find(objProjectile,i);
   proj.freeze = false
}

