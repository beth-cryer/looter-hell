event_inherited();

if (canmove==true and frozen==false) {
    pangle += 1.5*pdir;
    if (pangle >= 100 or pangle <= -100) pdir = -pdir;
}

