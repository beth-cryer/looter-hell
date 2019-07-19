if (global.blood == 0) instance_destroy();

//initial puddle size
image_xscale = random_range(0.33, 1);
image_yscale = image_xscale;

//move blood blobs in random direction
movDir = random(360);
movSpd = random_range(3,12);

//blood creation starts fast, slows down quickly
fric = random_range(movSpd/8, movSpd/2);

// As the blood spreads, it thins out
// This creates the *points* at the end of each stream
// The blood will spread for 3-10 frames
sizeChange = random_range(image_xscale/10, image_xscale/3);

