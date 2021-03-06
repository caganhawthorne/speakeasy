// Moves the object back into position if the clear button is pressed
if global.clear = true {
	depth = -4
	x = firstx
	y = firsty
	audioPlayed = false;
}

// Moves with mouse if held onto
if moving = true and global.grab = true{
	x = mouse_x
	y = mouse_y
	// display the text on the DrinkMake sprite
	with MakeDrink {image_index = 0}
}

if instance_number(Customer) = 0 and instance_number(SpecialCustomer) = 0{
	// Sends them back to their first position if the player submits an order
	x = firstx
	y = firsty
	with MakeDrink {image_index = 0}
}