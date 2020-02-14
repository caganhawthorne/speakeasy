// Increase the alpha incrimentally
if alpha < 1{alpha += .018}
// Spawns a speech bubble after the fade
if alpha >= 1 and instance_number(Speech) < 1 {instance_create_depth(x-200,y-300,0,Speech)}