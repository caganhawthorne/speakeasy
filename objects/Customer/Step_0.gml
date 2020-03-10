// Time down if a clock is initalized
if global.customertime != -1000 {
	global.customertime -= 1
}

// Fade out and destroy if service is refused or if you run out of serving time on a normal mobs
if global.choice = false or (global.customertime <= 0 and global.customertime != -1000) {
	// Uses paid to only iterate once
	if pick = 1 and global.customertype = "special" and paid = false {
		paid = true
		global.pay -= 20
		instance_create_depth(TipJar.x,TipJar.y,-9,MoneyAdd)
		}
	if alpha > 0 {alpha -= .018}
	else {instance_destroy()}
}

else if global.choice = true{
	// Increase the alpha incrimentally for fade in
	if alpha < 1 and global.served = false {alpha += .018}
	// Fade out if the customer is served and not a cop
	else if global.served = true and alpha > 0 and global.customertype != "cop" {alpha -= .018}
	// Destroy self after the fade out is finished
	if alpha < 0 {instance_destroy()}
	// Spawns a speech bubble after the fade
	if alpha >= 1 and global.served = false and instance_number(Speech) < 1 and global.choice = true{
		if instance_number(Speech) > 0 {instance_destroy(Speech)}
		instance_create_depth(x-230,y-300,0,Speech)
		// Creates your options for serving
		if instance_number(ChooseServe) < 2{
			yes = instance_create_depth(x-300,y-100,0,ChooseServe)
			with yes {image_index = 0}
			no = instance_create_depth(x+300,y-100,0,ChooseServe)
			with no {image_index = 1}
		}
	}
	// Sets the actions for when the customer is satisfied
	else if global.served = true{
		// Creates a new speech bubble with satisfied text (handled in Speech)
		if instance_number(Speech > 1){instance_destroy(Speech)}
		instance_create_depth(x-230,y-300,0,Speech)
		// Sets the amount to be paid
		if global.served = true and paid = false{
			paid = true
			// We can set the prices for each drink and topping later, right now it is set to a default value
			// Payment is sent to the MoneyAdd object, which adds the money to global.money when it is created. I use this to help its draw event
			if global.topping = "none" {global.pay = 10}
			else if global.topping = "any" {
				// Checks to see if the player has provided a topping
				none = false
				toppingnumber = 0
				for (i = 2; i < array_length_1d(global.makercontains); i++) {
					toppingnumber++
					if global.makercontains[i] = "none" {none = true}
				}
				if none = false {global.pay += (5*toppingnumber)}
				else {global.pay += 10}
			}
			else {global.pay = 15}
			instance_create_depth(TipJar.x,TipJar.y,-9,MoneyAdd)
		}
		// Create the MoneyAdd object over the tip jar
	}
}