//find next empty space
i = -1;
for(var j=0; j<global.invSize; j++) {
    if (global.inventory[j,0] == "") {i = j; j = global.invSize}
}
return i;
