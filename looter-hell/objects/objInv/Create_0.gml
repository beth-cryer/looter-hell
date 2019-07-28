global.inv_open = false;

prefix = "";
drawcard = false;
moused = false;
sel = 0;
across = 0;
switching = -1;
iswitch = 0;
idelay = 0;
body = 0;

uinum = 0;
loadwidth = 0;
invwidth = 0;
xsc = 2;
ysc = 2;
ipage = 0;
inum = 12;

gwidth = 0;
gheight = 0;

vampire = 0;

//set filters
filterNum = 0;

//filters[0] = "Pistol";
//filters[1] = "Assault Rifle";
//filterNum = 1;


//APPLY SORTING TO INVENTORY (V IMPORTANT)

//create sorted inv
for(i=0;i<global.invSize;i++) {
    sinv[i] = i;
}

sinv = inv_sort(sinv);

