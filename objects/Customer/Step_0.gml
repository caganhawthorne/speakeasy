// If the customer is not served *NEEDS TO BE AT START*
if global.choice = false{
	// Should output a dissatisfied message
	if instance_number(Speech > 1){instance_destroy(Speech)}
	instance_create_depth(x-200,y-300,0,Speech)
	// Fade out
	if alpha > 0 {alpha -=.018}
	else if alpha <= 0 {instance_destroy()}
}

// Code basically starts here

if global.choice = true{
	// Increase the alpha incrimentally for fade in
	if alpha < 1 and global.served = false {alpha += .018}
	// Fade out
	else if global.served = true and alpha > 0 {alpha -= .018}
	// Destroy self after the fade out is finished
	if alpha <= 0 {
		instance_destroy()
		}
	// Spawns a speech bubble after the fade
	if alpha >= 1 and global.served = false and instance_number(Speech) < 1 and global.choice = true{
		instance_create_depth(x-200,y-300,0,Speech)
		// Creates your options for serving
		yes = instance_create_depth(x-200,y-100,0,ChooseServe)
		with yes {image_index = 0}
		no = instance_create_depth(x+200,y-100,0,ChooseServe)
		with no {image_index = 1}
	}
	// Sets the actions for when the customer is satisfied
	else if global.served = true{
		// Creates a new speech bubble with satisfied text (handled in Speech)
		if instance_number(Speech > 1){instance_destroy(Speech)}
		instance_create_depth(x-200,y-300,0,Speech)
		// Sets the amount to be paid
		if global.served = true and global.paid = false{
			global.paid = true
			//We can set the prices for each drink and topping later, right now it is set to a default value
			if global.topping = "none"{global.money += 10}
			else {global.money += 15}
		}
	}
}