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

if instance_number(Customer) = 0 and instance_number(SpecialCustomer) = 0{
	// Sends them back to their first position if the player submits an order
	x = firstx
	y = firsty
	with MakeDrink {image_index = 0}
}

// Change the sprite based on contents
if place_meeting(x,y,MakeDrink) and place_meeting(x,y,DrinkParent) and place_meeting(x,y,IceCube) {image_index = 3}
else if place_meeting(x,y,MakeDrink) and place_meeting(x,y,DrinkParent) {image_index = 1}
else if place_meeting(x,y,MakeDrink) and place_meeting(x,y,IceCube) {image_index = 2}
else {image_index = 0}