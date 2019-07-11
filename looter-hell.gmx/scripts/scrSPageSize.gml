var pstart = argument0;
var endsize = argument1;

//find next empty space
var size = 0;
for(var i=pstart; i<global.invSize; i++) {
    if (sinv[i] != -1) {
        //account for filters
        if (scrCheckFilters(global.inventory[sinv[i],1])) size++;
    //stop when there are no more items
    }else break;
    
    //stop when size has reached desired value
    if (size == endsize+1) break;
}
return i;
