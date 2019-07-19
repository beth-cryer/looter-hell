if (spawn == true) {
    ii = instance_create(x,y,objGun);
    //ii.typegen = "Pistol";
    ii.rargen = rargen;
    ii.spawner = self.id;
    spawn = false;
}

