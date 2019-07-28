if (spawn == true) {
    ii = instance_create(x,y,objGun);
    ii.typegen = "SMG";
    ii.rargen = rargen;
    ii.spawner = self.id;
    spawn = false;
}

