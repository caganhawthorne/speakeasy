// Moves the cup back if clear is clicked
if global.clear = true {
	x = firstx
	y = firsty
}

// Moves with mouse if held onto
if moving = true and global.grab = true {
	x = mouse_x
	y = mouse_y
	// display the text on the DrinkMake sprite
	with MakeDrink {image_index = 0}
}

if instance_number(Customer) = 0{
	// Sends them back to their first position if the player submits an order
	x = firstx
	y = firsty
	with MakeDrink {image_index = 0}
}