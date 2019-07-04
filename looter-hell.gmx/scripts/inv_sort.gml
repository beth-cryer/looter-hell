//var ascend = argument1;
var list = argument0;
var count = scrInvSize();

//BUBBLE SORT
for(var i=0;i<count;i++) {
   swapped = false

   for(var j=0;j<count;j++) {
      //compare the adjacent elements   
      if (sval_type(global.inventory[list[j],1]) > sval_type(global.inventory[list[j+1],1])) {
         // swap them
         temp = list[j+1];
         list[j+1] = list[j]
         list[j] = temp
         
         swapped = true
      }  
   }
   
   //if no number was swapped that means array is sorted now, break the loop
   if(swapped == false) {
      break;
   }
   
}

return list;
