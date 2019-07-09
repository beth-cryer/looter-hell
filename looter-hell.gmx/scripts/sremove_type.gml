var list = argument0;
var type = argument1;
var count = scrInvSize();

//loop through all items in inv
for(var i=0; i<count; i++) {
    //if array element matches removal filter
    if (global.inventory[list[i],1] == argument1) {
        //remove element, move others up
        for(var j=i; j<count-1; j++) {
            list[j] = list[j+1];
        }
        list[j] = -1; //empty last element
        count--; //decrement invsize
    }
}

return list;