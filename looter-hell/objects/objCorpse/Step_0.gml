//slide along ground
if (sliding == true) {
speed *= 0.9;
instance_create(x,y,objBlood)
}

//stop sliding
if (speed < 0.1) {speed = 0; sliding = false;}


//fade out
if (fade == true) image_alpha -= 0.5/room_speed;
if (image_alpha < 0) instance_destroy();

