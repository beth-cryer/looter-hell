//find next empty space
var size = 0;
for(var j=0; j<global.invSize; j++) {
    if (sinv[j] != -1) size++;
}
return size;