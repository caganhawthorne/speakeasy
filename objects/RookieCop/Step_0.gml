// Freeze Time
global.time = room_speed*120

if alpha < 1 and global.served = false {alpha += .018}

if alpha >= 1 and global.served = false and instance_number(Speech) < 1 and global.choice = true{
	if instance_number(Speech) > 0 {instance_destroy(Speech)}
	instance_create_depth(x-330,y-300,0,Speech)
	// Creates your options for serving
	if instance_number(ChooseServe) < 2{
		yes = instance_create_depth(x-300,y-100,0,ChooseServe)
		with yes {image_index = 0}
		no = instance_create_depth(x+300,y-100,0,ChooseServe)
		with no {image_index = 1}
	}
}
else if global.served = true {
	if alpha > 0 {alpha -= .018}
	else if alpha <= 0 {instance_destroy()}
}