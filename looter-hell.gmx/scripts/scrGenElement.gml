if (argument0 == "Gen") rand = round(random_range(1,5)); else rand = 0;

if (rand == 1 or argument0 == "Fire"){ scrGenFirePrefixes(); elem_index = 2; elem_dps = 9; return "Fire"; } //Fire
if (rand == 2 or argument0 == "Ice"){ scrGenIcePrefixes(); elem_index = 3; return "Ice"; } //Ice
if (rand == 3 or argument0 == "Electric"){ scrGenElectricPrefixes(); elem_index = 4; return "Electric"; } //Electric
if (rand == 4 or argument0 == "Corrosive"){ scrGenCorrosivePrefixes(); elem_index = 5; elem_dps = 6; return "Corrosive"; } //Corrosive
if (rand == 5 or argument0 == "Explosive"){ scrGenExplosivePrefixes(); elem_index = 6; return "Explosive"; } //Explosive

return "None";