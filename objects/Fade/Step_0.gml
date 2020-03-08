// Make the image fade. If the image is invisible, destroy it
if alpha > 0 {alpha -=.018}
else if alpha <= 0 {instance_destroy()}