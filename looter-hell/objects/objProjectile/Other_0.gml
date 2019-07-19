action_kill_object();
if (x > room_width + xbounds
or x < -xbounds
or y > room_height + ybounds
or y < -ybounds)
instance_destroy();

