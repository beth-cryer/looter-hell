//find next empty space
var size = 0;
for(var i=0; i<global.invSize; i++) {
    if (sinv[i] != -1) {
        //account for filters
        if (global.inventory[sinv[i],0] != "" and
        scrCheckFilters(global.inventory[sinv[i],1])) size++;
    }
}
return size;
