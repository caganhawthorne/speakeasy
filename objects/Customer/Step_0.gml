// If the customer is not served *NEEDS TO BE AT START*
if global.choice = false{
	// Should output a dissatisfied message and remove the customer timer
	instance_destroy(CustomerClock)
	if instance_number(Speech > 1) {instance_destroy(Speech)}
	instance_create_depth(x-230,y-300,0,Speech)
	// Fade out
	if alpha > 0 {alpha -=.018}
	else if alpha <= 0 {instance_destroy()}
}

// Code basically starts here

// Customer leaves if customer time runs out
if global.customertime <= 0 and global.customertime != -1000 {
	// Should output a dissatisfied message and remove the customer timer
	instance_destroy(CustomerClock)
	if instance_number(Speech > 1) {instance_destroy(Speech)}
	instance_create_depth(x-230,y-300,0,Speech)
	// Fade out
	if alpha > 0 {alpha -=.018}
	if alpha <= 0 {instance_destroy()}
}

if global.choice = true{
	// Increase the alpha incrimentally for fade in
	if alpha < 1 and global.served = false and global.customertime > 0 {alpha += .018}
	// Fade out if the customer is served and not a cop
	else if global.served = true and alpha > 0 and global.customertype != "cop" {alpha -= .018}
	// Destroy self after the fade out is finished
	if alpha <= 0 {instance_destroy()}
	// Spawns a speech bubble after the fade
	if alpha >= 1 and global.served = false and instance_number(Speech) < 1 and global.choice = true{
		if instance_number(Speech) > 0 {instance_destroy(Speech)}
		instance_create_depth(x-230,y-300,0,Speech)
		// Creates your options for serving
		if instance_number(ChooseServe) < 2{
			yes = instance_create_depth(x-200,y-100,0,ChooseServe)
			with yes {image_index = 0}
			no = instance_create_depth(x+200,y-100,0,ChooseServe)
			with no {image_index = 1}
		}
	}
	// Sets the actions for when the customer is satisfied
	else if global.served = true{
		// Creates a new speech bubble with satisfied text (handled in Speech)
		if instance_number(Speech > 1){instance_destroy(Speech)}
		instance_create_depth(x-230,y-300,0,Speech)
		// Sets the amount to be paid
		if global.served = true and global.paid = false{
			global.paid = true
			// We can set the prices for each drink and topping later, right now it is set to a default value
			// Payment is sent to the MoneyAdd object, which adds the money to global.money when it is created. I use this to help its draw event
			if global.topping = "none" {global.pay = 10}
			else {global.pay = 15}
			instance_create_depth(x,y,-5,MoneyAdd)
		}
	}
}